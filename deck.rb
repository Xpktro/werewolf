require 'squib'

data = Squib.csv file: 'data.csv'

Squib::Deck.new(cards: data['name'].size, layout: 'layout.yml', width: '8.2cm', height: '8.2cm') do
  rect layout: 'bleed'
  rect layout: 'border'
  rect layout: 'descriptionbox'

  text str: data['name'], layout: 'title'
  # text str: data['team']
  text str: data['description']
  save_png trim: 10
end
