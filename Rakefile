require 'bundler/setup'
require 'rubygems'
require 'cucumber'
require 'cucumber/rake/task'
require 'rspec/core/rake_task'

Cucumber::Rake::Task.new do |t|
  options = [ 
    "--format pretty",
    "--format json --out AcceptanceTests-console.json",
    "--format html --out build/AcceptanceTest.html"
  ]

  t.cucumber_opts = "features -e '.*Manual.*' " + options.join(" ")
end

task :acceptanceTest => :cucumber
