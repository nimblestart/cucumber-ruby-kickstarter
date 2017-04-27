def load_yml_file(file_name_with_path)
  require 'yaml'
  yml_data = ::YAML.load_file(file_name_with_path)
end

def load_yml_data(file_name)
  require 'yaml'
  yml_data_file_path = "features/data/yml/#{file_name}.yml"
  yml_data = load_yml_file(yml_data_file_path)
end