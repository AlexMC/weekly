class WebSeed < Ohm::Model
  attribute :url

  index :url

  def to_hash
    super.merge id: id, url: url
  end

end
