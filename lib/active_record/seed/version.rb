module ActiveRecord
  module Seed
    puts File.expand_path('../../../VERSION', __FILE__)
    VERSION = File.read(File.expand_path('../../../../VERSION', __FILE__)).chomp
  end
end
