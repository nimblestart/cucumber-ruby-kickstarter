# cucumber-ruby-kickstarter
A quick example of how to bring Cucumber and Ruby together to automate a Google Maps Search.

## Getting Started
1. Install Ruby (use version 1.9.x) - http://rubyinstaller.org/downloads/
  - install in c:\ itself
  - choose ruby executable to path
2. Install Devkit - Download from above location (use the version corresponding to above Ruby version)
  - Create directory c:/programs/devkit
  - run it to extract it to above dir (_*permanent*_). 
  - Then cd to it
  - ```ruby dk.rb init```
  - ```ruby dk.rb install```   -----> to bind it to ruby installations in your path.
Confirm your Ruby environment is correctly using the DevKit by running gem install json --platform=ruby. JSON should install correctly and you should see with native extensions in the screen messages. Next run ruby -rubygems -e "require 'json'; puts JSON.load('[42]').inspect" to confirm that the json gem is working.
3. Install Clink (optional) - Enables easy copy paste in command prompt. http://mridgers.github.io/clink/
4. Install Ansicon (optional) - Enables colors on the command prompt. https://github.com/adoxa/ansicon
  - extract x64 to path
  - on commnad prompt run ansicon -i
5. Clone this repo or download and extract the zip
6. rename cucumber-ruby-kickstarter to your_project_folder (whatever name you like)
7. ```cd your_project_folder```
8. ```gem install bundler --no-ri --no-rdoc```
9. ```bundle install```
