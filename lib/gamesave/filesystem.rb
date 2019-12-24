module Gamesave
  module Filesystem
    def home_path
      File.expand_path('~')
    end
    
    module_function(:home_path)
  end
end
