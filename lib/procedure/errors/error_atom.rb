# frozen_string_literal: true

module Procedure
  module Errors
    # Base error model
    class ErrorAtom
      attr_reader :key, :symbol, :message

      def initialize(key:, symbol:, message: '', options: {})
        @key = key
        @symbol = symbol
        @message = message
        @options = options
      end

      def symbolic
        symbol
      end
    end
  end
end
