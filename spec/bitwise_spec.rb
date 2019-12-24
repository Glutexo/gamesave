require('gamesave/bitwise')
require('spec_helper')

describe(Gamesave::Bitwise) do
  describe(Gamesave::Bitwise.method(:bitmask)) do
    it('creates an empty bitmask') do
      result = subject.call(0)
      expect(result).to(eq(0))
    end
    
    where(:length) do [[1], [2], [32]] end
    with_them do
      let(:bitmask) do
        bin = "1" * length
        bin.to_i(2)
      end
      it('creates a bitmask') do
        result = subject.call(length)
        expect(result).to(eq(bitmask))
      end
    end
  end

  describe(Gamesave::Bitwise.method(:first_bits)) do
    where(:length) do [[1], [2], [32]] end
    with_them do
      let(:bin_data) do
        "100010000000000000000000100010001111100011001000101110010"
      end
      let(:data) do bin_data.to_i(2) end
      let(:first_bits) do bin_data[-length..-1].to_i(2) end
      
      it('gets first bits') do
        result = subject.call(data, length)
        expect(result).to(eq(first_bits))
      end
    end
  end
end
