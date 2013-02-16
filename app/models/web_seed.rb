class WebSeed < Ohm::Model
  attribute :url
  counter :votes

  index :url

end