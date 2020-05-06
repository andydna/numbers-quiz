require 'base_convertor'

RSpec.describe BaseConvertor do
  context 'converts decimal to hex' do
    context 'single hex digits' do
      it "shouldn't have a problem with 0..9" do
        0.upto(9) do |n|
          hex = BaseConvertor.to_hex(n)
          expect(hex).to eq "0x#{n}"
        end
      end

      it "to_hex(10) = 0xA" do
        hex = BaseConvertor.to_hex(10)
        expect(hex).to eq "0xA"
      end

      it "to_hex(11) = 0xB" do
        hex = BaseConvertor.to_hex(11)
        expect(hex).to eq "0xB"
      end

      it "to_hex(12) = 0xC" do
        hex = BaseConvertor.to_hex(12)
        expect(hex).to eq "0xC"
      end

      it "to_hex(13) = 0xD" do
        hex = BaseConvertor.to_hex(13)
        expect(hex).to eq "0xD"
      end

      it "to_hex(14) = 0xE" do
        hex = BaseConvertor.to_hex(14)
        expect(hex).to eq "0xE"
      end

      it "to_hex(15) = 0xF" do
        hex = BaseConvertor.to_hex(15)
        expect(hex).to eq "0xF"
      end
    end

    context 'spotcheck some bigger ones' do
      it "to_hex(16) = 0x10" do
        hex = BaseConvertor.to_hex(15)
        expect(hex).to eq "0xF"
      end

      it "to_hex(256) = 0x100" do
        hex = BaseConvertor.to_hex(15)
        expect(hex).to eq "0xF"
      end

      it "to_hex(4096) = 0x1000" do
        hex = BaseConvertor.to_hex(15)
        expect(hex).to eq "0xF"
      end

      it "to_hex(65536) = 0x1000" do
        hex = BaseConvertor.to_hex(15)
        expect(hex).to eq "0xF"
      end
    end
  end
end
