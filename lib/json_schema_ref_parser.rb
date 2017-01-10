require "json_schema_ref_parser/version"
require 'json'
require 'yaml'

module JsonSchemaRefParser
  class RefParser

    def self.dereference(schema)
      d = Dereferencer.new
      d.start(schema)
    end

  end

  class Dereferencer

    @parent_path

    def initialize
      @parent_path = []
    end

    def start(schema)
      hash_iterator(schema, @parent_path, -1)
    end

    private

    def read_yml_file(file)
      yml_file = File.open(file, 'r')
      yml = yml_file.read
      yml_file.close
      YAML::load(yml)
    end

    def get_ref(file)
      path = File.dirname file
      if path != "."
        @parent_path = path
      else
        path = @parent_path
      end
      comp = File.basename file
      read_yml_file("#{path}/#{comp}")
    end


    def hash_iterator(h, p, i)
      i = i + 1
      h.clone.each_pair do |k,v|
        if v.is_a?(Hash)
          p[i] = k
          res = hash_iterator(v, p, i)
          if res.dig("$ref")
            h[k] = res["$ref"]
          else
            h[k] = res
          end
        else
          if k == "$ref"
            ref_schema = get_ref(v)
            res = hash_iterator(ref_schema, p, i)
            h[k] = res
          else
            h[k] = v
          end
        end
      end
      h
    end

  end
end

