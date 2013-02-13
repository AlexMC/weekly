class CreateWebSeeds < ActiveRecord::Migration
  def change
    create_table :web_seeds do |t|
      t.text :url
      t.integer :votes

      t.timestamps
    end
  end
end
