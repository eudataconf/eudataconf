require 'yaml'

conferences = YAML.load_file('_data/conferences.yml')
max_uid = conferences.map{|c| c['uid']}.max
puts "Max UID in use is #{max_uid}"
puts "Next UID should be #{max_uid + 1}"