load 'lib/generators/tl_generator.rb'
load 'lib/telegram_api/client.rb'

api_id = 2678812 #Enter Your 7 Digit Telegram API ID
api_hash = '675c5b907809ad6dd353b6fe511b9bc5'   #Enter Yor 32 Character API Hash
phone = '+33760025005'   #Enter Your Mobile Number With Country Code

puts "BEGIN"

if not TlGenerator.tlobjects_exist()
    print('Please run `python3 tl_generator.py` first!')

else
  client = TelegramApi::Client.new(session_user_id='anonymous',
                                  layer=55,
                                  api_id=api_id,
                                  api_hash=api_hash)
end

puts "END"
