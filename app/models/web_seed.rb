class WebSeed < Ohm::Model
  attribute :url
  attribute :votes
  counter :votes

  index :url

  def to_hash
    super.merge id: id, url: url, votes: votes
  end

end
