module TelegramApi
  class Client
    def initialize(session_user_id = nil, layer = nil, api_id = nil, api_hash=nil)
      @api_id   = api_id
      @api_hash = api_hash
    end
  end
end
