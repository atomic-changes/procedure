# frozen_string_literal: true

require 'spec_helper'
require_relative '../lib/procedure/errors/error_atom'

RSpec.describe Procedure::Errors::ErrorAtom, type: :model do
  subject(:model) { described_class.new(params) }

  describe 'empty params' do
    let(:params) { {} }

    is 'stuff' do
      expect(model.key).to eq(nil)
    end
  end
end
