# frozen_string_literal: true

module Procedure
  module Helpers
    module Errors
      MESSAGES = {
        new_records: "isn't a saved model",
        nils: "can't be nil",
        required: 'is required',
      }.merge(
        ARRAY_MESSAGES,
        DATATYPE_MESSAGES,
        DATE_MESSAGES,
        NUMERIC_MESSAGES,
        STRING_MESSAGES
      )

      ARRAY_MESSAGES = { class: "isn't the right class" }.freeze

      DATATYPE_MESSAGES = {
        array: "isn't an array",
        boolean: "isn't a boolean",
        hash: "isn't a hash",
        integer: "isn't an integer",
        model: "isn't the right class",
        string: "isn't a string"
      }.freeze

      DATE_MESSAGES = {
        date: "date doesn't exist",
        before: "isn't before given date",
        after: "isn't after given date"
      }.freeze

      NUMERIC_MESSAGES = {
        max: 'is too big',
        min: 'is too small'
      }.freeze

      STRING_MESSAGES = {
        empty: "can't be blank",
        in: "isn't an option",
        matches: "isn't in the right format",
        max_length: 'is too long',
        min_length: 'is too short'
      }.freeze
    end
  end
end
