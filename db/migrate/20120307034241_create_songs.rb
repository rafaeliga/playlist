class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :name
      t.references :artist
      t.string :album
      t.text :lyrics
      t.string :tab_link
      t.string :original_tone
      t.string :our_tone
      t.integer :custom_order
      t.string :genre
      t.string :bpm

      t.timestamps
    end
    add_index :songs, :artist_id
  end
end
