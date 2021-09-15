# frozen_string_literal: true

require_relative './my_set'

describe MySet do
  # Class methods
  # describe '.generate' do
  # end

  let(:my_set) { MySet.new }

  # object methods
  describe '#empty?' do
    subject { my_set.empty? }

    context 'when nothing was added' do
      it { is_expected.to be_truthy }
    end

    context 'when something was added' do
      before do
        my_set.add(1)
      end

      it { is_expected.to be_falsey }
    end
  end

  describe '#length' do
    subject { my_set.length }

    context 'when nothing was added' do
      it 'return zero' do
        expect(my_set.length).to eq(0)
      end
    end

    context 'when something was added' do
      before do
        my_set.add(1)
        my_set.add(2)
      end

      it 'returns 2' do
        expect(my_set.length).to eq(2)
      end
    end

    context 'when the same element was added twice' do
      before do
        my_set.add(1)
        my_set.add(2)
        my_set.add(2)
      end

      it { is_expected.to eq(2) }
    end
  end

  describe '#contains?' do
    context 'when element does not exist' do
      before do
        my_set.add(1)
      end

      it 'returns false' do
        expect(my_set.contains?(2)).to be_falsey
      end
    end

    context 'when element exists' do
      before do
        my_set.add(2)
      end

      it 'returns true' do
        expect(my_set.contains?(2)).to be_truthy
      end
    end
  end
end
