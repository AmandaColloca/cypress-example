# frozen_string_literal: true

elements = './data/elements.yml'

EL = YAML.safe_load(File.read(elements))

qa  = './data/environments/QA/data.yml'
uat = './data/environments/UAT/data.yml'

if ENV['QA']
  DATA = YAML.safe_load(File.read(qa))
elsif ENV['UAT']
  DATA = YAML.safe_load(File.read(uat))
end
