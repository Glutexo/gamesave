require(File.join('gamesave', 'bitwise'))

module Gamesave
  module SteamId
    def account_id(steam_id)
      Bitwise::first_bits(steam_id, 32)
    end
    
    module_function(:account_id)
  end
end
