
require 'watir-webdriver'
require 'require_all'
require 'rspec'
require 'rspec/expectations'

require File.expand_path('../../element_repository/element_properties.rb',__FILE__)

require File.expand_path('../../utilities/test_data',__FILE__)
include TestData

require File.expand_path('../../utilities/object_repository',__FILE__)
include ObjectRepository

require_all(File.expand_path('../../framework',__FILE__))
require_all(File.expand_path('../../screens',__FILE__))
World(PageObject::PageFactory)





