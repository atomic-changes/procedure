# frozen_string_literal: true

module Procedure
  module Errors
    # List of errors model entry
    class ErrorList
      def initialize
        @error_list = []
      end

      def add_error(key:, symbol:, message:)
        error_list.push(
          ErrorAtom.new(key: key, symbol: symbol, message: message)
        )
      end

      def merge_errors(external_error_list)
        @error_list.push(*external_error_list)
      end
    end
  end
end
