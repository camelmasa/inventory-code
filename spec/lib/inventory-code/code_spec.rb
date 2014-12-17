require 'spec_helper'

describe InventoryCode::Code do

  let(:code) { 'wrong' }
  subject { InventoryCode::Code.new(code) }

  describe '#jan?' do
    context 'when code is JAN' do
      let(:code) { '12345678' }

      it { expect(subject.jan?).to be_truthy }
    end

    context 'when code is not JAN' do
      it { expect(subject.jan?).to be_falsy }
    end
  end

  describe '#upc?' do
    context 'when UPC-A is true' do
      before { allow(subject).to receive_messages(upc_a?: true) }

      it { expect(subject.upc?).to be_truthy }
    end

    context 'when UPC-A, UPC-E and UPC-ADDON are false' do
      before { allow(subject).to receive_messages(upc_a?: false, upc_e?: false,
                                                  upc_addon?: false) }

      it { expect(subject.upc?).to be_falsy }
    end
  end

  describe '#upc_a?' do
    context 'when code is UPC-A' do
      let(:code) { '123456789012' }

      it { expect(subject.upc_a?).to be_truthy }
    end

    context 'when code is not UPC-A' do
      it { expect(subject.upc_a?).to be_falsy }
    end
  end

  describe '#upc_e?' do
    context 'when code is UPC-E' do
      let(:code) { '123456' }

      it { expect(subject.upc_e?).to be_truthy }
    end

    context 'when code is not UPC-E' do
      it { expect(subject.upc_a?).to be_falsy }
    end
  end

  describe '#upc_addon?' do
    context 'when code is UPC-ADDON' do
      let(:code) { '12345678901234' }

      it { expect(subject.upc_addon?).to be_truthy }
    end

    context 'when code is not UPC-ADDON' do
      it { expect(subject.upc_addon?).to be_falsy }
    end
  end

  describe '#isbn?' do
    context 'when code is ISBN' do
      let(:code) { '9781234567890' }

      it { expect(subject.isbn?).to be_truthy }
    end

    context 'when code is not ISBN' do
      it { expect(subject.isbn?).to be_falsy }
    end
  end

  describe '#asin?' do
    context 'when code is ASIN' do
      let(:code) { 'THISISASIN' }

      it { expect(subject.asin?).to be_truthy }
    end

    context 'when code is not ASIN' do
      it { expect(subject.asin?).to be_falsy }
    end
  end
end
