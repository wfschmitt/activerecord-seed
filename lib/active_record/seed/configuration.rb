require 'singleton'

module ActiveRecord
  module Seed
    class Configuration
      include Singleton
      attr_accessor :models_dir
      attr_accessor :seeds_dir
      attr_accessor :tables
      attr_accessor :restore_tables
    end
  end
end
