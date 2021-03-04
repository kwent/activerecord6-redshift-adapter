module ActiveRecord
  module ConnectionAdapters
    class RedshiftColumn < Column #:nodoc:
      delegate :oid, :fmod, to: :sql_type_metadata

      def initialize(name, default, sql_type_metadata, null = true, default_function = nil)
        super name, default, sql_type_metadata, null, default_function
      end

      def array
        false
      end
      alias :array? :array
 
    end
  end
end
