require(File.join('gamesave', 'filesystem'))

module Gamesave
  module SteamFiles
    USER_DATA_PATH = File.join('Library', 'Application Support', 'Steam', 'userdata')
    
    def user_data_path(account_id = nil)
      path = File.join(Filesystem::home_path, USER_DATA_PATH)
      path = path + account_id unless account_id.nil?
      File.join(*path)
    end
    
    def game_data_path(account_id, game_id)
      user_path = user_data_path(account_id)
      File.join(user_path, game_id)
    end
    
    module_function(:game_data_path, :user_data_path)
  end
end
