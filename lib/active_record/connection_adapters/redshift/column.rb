module ActiveRecord
  module ConnectionAdapters
    class RedshiftColumn < Column #:nodoc:
      delegate :oid, :fmod, to: :sql_type_metadata

      def array
        false
      end
      alias :array? :array

    end
  end
end
