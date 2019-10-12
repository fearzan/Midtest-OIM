require 'telegram/bot'

token = '858695718:AAFsGsTVXLs-b22UJFTLz13LhyElWvrFs8I'

Telegram::Bot::Client.run(token) do |bot|
  bot.listen do |message|
    case message.text
    when '/start'
      question = 'Hai, selamat datang di Sehatku, kalian bisa mendapatkan informasi kalori yang ada pada setiap makanan kalian, untuk segera mendapatkan infromasi silahkan pilih kategori makanan atau buah'
                  
      answers =
        Telegram::Bot::Types::ReplyKeyboardMarkup
        .new(keyboard: [%w( MakananPokok Buah), %w( Info Bantuan )], one_time_keyboard: true)
      bot.api.send_message(chat_id: message.chat.id, text: question, reply_markup: answers)
    
    when 'MakananPokok'
      bot.api.send_message(chat_id: message.chat.id,text: "ketikan makanan pokok untuk mengetahui jumlah kalori misal 'jagung' ")
    
    when 'Buah'
      bot.api.send_message(chat_id: message.chat.id,text: "ketikan nama buah untuk mengetahui jumlah kalori misal 'Apel' ")
    
    when 'Info'
      question = 'Berikut info mengenai hal-hal tentang gizi, diet, kalori'
      answers =
        Telegram::Bot::Types::ReplyKeyboardMarkup
        .new(keyboard: [%w( Gizi Diet), %w( Kalori)], one_time_keyboard: true)
        bot.api.send_message(chat_id: message.chat.id, text: question, reply_markup: answers)
    
        Konsep diet, terutama untuk mengurangi berat badan, lekat dengan keadaan tersiksa karena Anda harus menahan lapar. Padahal sebenarnya, inti dari diet adalah mengatur kalori yang masuk dan yang keluar. Salah satu caranya adalah dengan mengatur pola makan. Anda mungkin sedang mempertimbangkan untuk mengurangi porsi makan Anda, tapi bagaimana caranya agar Anda tidak merasa tersiksa saat menjalani diet?)

   #keyboard info
    when 'Gizi'
      bot.api.send_message(chat_id: message.chat.id, text: "Gizi seimbang adalah susunan makanan sehari–hari yang mengandung zat-zat gizi dalam jenis dan jumlah yang sesuai dengan kebutuhan tubuh, dengan memerhatikan prinsip keanekaragaman atau variasi makanan, aktivitas fisik, kebersihan, dan berat badan (BB) ideal.")
    when 'Diet'
      bot.api.send_message(chat_id: message.chat.id, text: "Konsep diet, terutama untuk mengurangi berat badan, lekat dengan keadaan tersiksa karena Anda harus menahan lapar. Padahal sebenarnya, inti dari diet adalah mengatur kalori yang masuk dan yang keluar. Salah satu caranya adalah dengan mengatur pola makan. Anda mungkin sedang mempertimbangkan untuk mengurangi porsi makan Anda, tapi bagaimana caranya agar Anda tidak merasa tersiksa saat menjalani diet? ")
    when 'Kalori'
      bot.api.send_message(chat_id: message.chat.id,text: "Menurut kamus medis Medilexicon, kalori adalah satuan unit kandungan panas atau energi. Akan tetapi, lebih tepatnya kalori adalah jumlah energi yang Anda dapatkan dari makanan dan minuman, atau energi yang kita bakar melalui aktivitas sehari-hari. Sederhananya, kalori adalah energi yang dibutuhkan tubuh agar bisa beraktivitas dan menjalankan fungsinya dengan baik.")

#Hardcode, edamam API belum bisa diakses :((
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
    when 'apel'
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

...