module ActiveRecord
  module ConnectionAdapters
    class RedshiftColumn < Column #:nodoc:
      delegate :oid, :fmod, to: :sql_type_metadata

      # Required for Rails 6.1, see https://github.com/rails/rails/pull/41756
      mattr_reader :array, default: false
      alias :array? :array

      def initialize(name, default, sql_type_metadata, null = true, default_function = nil)
        super name, default, sql_type_metadata, null, default_function
      end
    end
  end
end
