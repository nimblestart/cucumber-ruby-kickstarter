
def load_config_file()
  config_file_path = File.dirname(__FILE__) + "/../../../config/config.yml"
  config = load_yml_file(config_file_path)
  CommonLogger.log.debug "Config file contents for ENV : " + ENV['TEST_ENV']
  CommonLogger.log.debug (config[ENV['TEST_ENV']])
  $GOOGLE_BASE_URL = config[ENV['TEST_ENV']][:google_base_url]
  $AMTRAK_BASE_URL = config[ENV['TEST_ENV']][:amtrak_base_url]
end