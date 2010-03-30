RAILS_GEM_VERSION = '2.3.5' unless defined? RAILS_GEM_VERSION
require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|
  require 'yaml' # for config file
  require 'active_support' # for session_secret
  CONFIG = (YAML.load_file('config/config.yml')[RAILS_ENV] rescue {}).merge(ENV)
  CONFIG['s3'] = true if CONFIG['s3_access_id'] && CONFIG['s3_secret_key'] && CONFIG['s3_bucket_name']
  CONFIG['session_key'] ||= 'static'
  CONFIG['session_secret'] ||= ActiveSupport::SecureRandom.hex(32)
  config.frameworks -= [:active_resource, :action_mailer]
  config.time_zone = 'UTC'
  config.action_controller.session = {:key => CONFIG['session_key'], :secret => CONFIG['session_secret']}
  config.gem "paperclip", :version => "2.3.0"
  config.gem "right_aws", :version => "1.9.0"
  config.gem "right_http_connection", :version => "1.2.4"
end