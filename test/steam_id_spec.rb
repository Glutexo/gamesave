require(File.join('gamesave', 'steam_id'))
require('spec_helper')

describe(Gamesave::SteamId.method(:account_id)) do
  where(:steam_id, :account_id) do
    [[76561198261309810, 301044082], [76561198044544783, 84279055]]
  end
  with_them do
    it('converts Steam ID to Account ID') do
      result = subject.call(steam_id)
      expect(result).to(eq(account_id))
    end
  end
end
