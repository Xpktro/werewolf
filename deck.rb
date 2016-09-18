require 'squib'

data = Squib.csv file: 'data.csv', explode: 'qty'
data['description'].each { |str| str.gsub! /%n/, "\n" } #replaces %n with newline
data['symbol'] = data['symbol'].map { |e| "symbol_#{e.downcase}" }

Squib::Deck.new(cards: data['name'].size, layout: 'layout.yml', width: '8.2cm', height: '8.2cm') do
  rect layout: 'bleed', radius: '2mm'
  rect layout: 'border'
  rect layout: 'titlebox'
  rect layout: 'descriptionbox'

  text str: data['name'], layout: 'title'
  svg layout: data['symbol']
  text str: data['description'], markup: true, layout: 'description'
  save_png trim: 10

  # Save to A4 @ 300dpi
  save_pdf gap: '7mm', width: '210mm', height: '297mm'
end
