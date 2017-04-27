def load_yml_data(file_name)
  require 'yaml'
  yml_data_file_path = "features/data/yml/#{file_name}.yml"
  yml_data = ::YAML.load_file(yml_data_file_path)
end