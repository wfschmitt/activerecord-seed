require 'active_support/concern'
require 'csv'

module ActiveRecord
  module Seed
    module Converter
      extend ActiveSupport::Concern

      module ClassMethods
        def dump_to_csv
          columns = column_names # - %w<created_at updated_at>
          CSV.generate do |csv|
            csv << columns
            all.order(:id).each do |record|
              csv << record.attributes.values_at(*columns)
            end
          end
        end
      end
    end
  end
end
