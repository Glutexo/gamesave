module Gamesave
  module Bitwise
    def bitmask(length)
      2 ** length - 1
    end

    def first_bits(data, length)
      mask = bitmask(length)
      data & mask
    end
    
    module_function(:first_bits, :bitmask)
  end
end
