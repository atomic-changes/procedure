# frozen_string_literal: true

module Procedure
  module Helpers
    # Input validation blocks
    module Validation
      def required
        yield
      end

      def optional
        yield
      end
    end
  end
end
