Gem::Specification.new do |s|

  s.name            = "logstash-output-newrelic"
  s.version         = "0.9.0"
  s.summary         = "New Relic Insights output plugin for Logstash"
  s.description     = "Use logstash to ship log events to New Relic Insights. This gem is a logstash plugin required to be installed on top of the Logstash core pipeline using $LS_HOME/bin/plugin install gemname. This gem is not a stand-alone program."
  s.authors         = ["The Chocolate Factory"]
  s.email           = "info@chocolatefirm.com"
  s.homepage        = "http://www.chocolatefirm.com"
  s.licenses        = ["MIT"]
  s.require_paths   = ["lib"]
  
  # Files
  s.files = Dir['lib/**/*','spec/**/*','vendor/**/*','*.gemspec','*.md','CONTRIBUTORS','Gemfile','LICENSE','NOTICE.TXT']

  # Tests
  s.test_files = s.files.grep(%r{^(test|spec|features)/})

  # Special flag to let us know this is actually a logstash plugin
  s.metadata = { "logstash_plugin" => "true", "logstash_group" => "output" }

  # Gem dependencies
  s.add_runtime_dependency 'logstash-core', '>= 2.0.0', '< 3.0.0'

  s.add_development_dependency 'logstash-devutils', '~> 0'

end
