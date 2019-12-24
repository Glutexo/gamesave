module Gamesave
  module Bitwise
    def first_bits(data, length)
      mask = bitmask(length)
      data & mask
    end
    
    def bitmask(length)
      2 ** length - 1
    end
    
    module_function(:first_bits, :bitmask)
  end
end
