class WebSeed < Ohm::Model
  attribute :url
  counter :votes

  index :url

  def to_hash
    super.merge id: id, url: url, votes: votes
  end

end
