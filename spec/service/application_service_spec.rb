# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ApplicationService, type: :service do
  subject { described_class.call }

  describe '#call' do
    it { is_expected.to be_failure }
    it { expect(subject.failure).to eq(:not_implemented) }
    it { expect { described_class.new }.to raise_error(NoMethodError) }
  end
end
