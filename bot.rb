require 'telegram/bot'

token = '762408536:AAEDZc_Cybn_q7JaT0PyrUx2AsuvewoNlRQ'

Telegram::Bot::Client.run(token) do |bot|
  bot.listen do |message|
    case message.text
    when '/start'
      question = 'Hai, selamat datang di kalorimasakini, kalian bisa mendapatkan informasi kalori yang ada pada setiap makanan kalian. untuk segera mendapatkan infromasi silahkan pilih kategori makanan atau buah'
      answers =
        Telegram::Bot::Types::ReplyKeyboardMarkup
        .new(keyboard: [%w( Makanan_Pokok Buah), %w( Tentang_Kalori Bantuan )], one_time_keyboard: true)
      bot.api.send_message(chat_id: message.chat.id, text: question, reply_markup: answers)
    when 'Makanan_Pokok'
      bot.api.send_message(chat_id: message.chat.id,text: "ketikan makanan pokok untuk mengetahui jumlah kalori misal 'jagung' ")
    
    when 'Buah'
      bot.api.send_message(chat_id: message.chat.id,text: "ketikan nama buah untuk mengetahui jumlah kalori misal 'Apel' ")
    
    when 'Tentang_Kalori'
      bot.api.send_message(chat_id: message.chat.id, text: "ini info makanan")
    
    when 'Bantuan'
      bot.api.send_message(chat_id: message.chat.id, text: "ini bantuan")
    


    #makanan
    when 'jagung'
      bot.api.send_message(chat_id: message.chat.id, text: "jagung mempunyai kalori sebanyak 90.5 Kalori")
    when 'ketan'
      bot.api.send_message(chat_id: message.chat.id, text: "ketan mempunyai kalori sebanyak 217 Kalori")
    when 'nasi'
      bot.api.send_message(chat_id: message.chat.id, text: "Nasi mempunyai kalori sebanyak 175 Kalori")
    when 'singkong'
      bot.api.send_message(chat_id: message.chat.id, text: "Singkong mempunyai kalori sebanyak 145 Kalori")
    when 'roti'
      bot.api.send_message(chat_id: message.chat.id, text: "Roti mempunyai kalori sebanyak 149 Kalori")
    when 'talas'
      bot.api.send_message(chat_id: message.chat.id, text: "Talas mempunyai kalori sebanyak 98 Kalori")
    when 'ubi'
      bot.api.send_message(chat_id: message.chat.id, text: "Ubi mempunyai kalori sebanyak 98 Kalori")
    when 'mie'
      bot.api.send_message(chat_id: message.chat.id, text: "Ubi mempunyai kalori sebanyak 168 Kalori")
    
    #buah
    when 'apel' 'Apel'
      bot.api.send_message(chat_id: message.chat.id, text: "Apel mempunyai kalori sebanyak 92 Kalori")
    when 'alpukat'
      bot.api.send_message(chat_id: message.chat.id, text: "Alpukat mempunyai kalori sebanyak 85 Kalori")
    when 'mangga'
      bot.api.send_message(chat_id: message.chat.id, text: "Mangga mempunyai kalori sebanyak 90 Kalori")
    when 'pisang'
      bot.api.send_message(chat_id: message.chat.id, text: "pisang mempunyai kalori sebanyak 105 Kalori")
    when 'anggur'
      bot.api.send_message(chat_id: message.chat.id, text: "anggur mempunyai kalori sebanyak 60 Kalori")
    when 'nanas'
      bot.api.send_message(chat_id: message.chat.id, text: "nanas mempunyai kalori sebanyak 168 Kalori")
    
    end
  end
end