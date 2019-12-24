module Gamesave
  module SteamFiles
    USER_DATA_PATH = File.join('Library', 'Application Support', 'Steam', 'userdata')
    
    def user_data_path(account_id)
      File.join(USER_DATA_PATH, account_id)
    end
    
    def game_data_path(account_id, game_id)
      user_path = user_data_path(account_id)
      File.join(user_path, game_id)
    end
    
    module_function(:game_data_path, :user_data_path)
  end
end
