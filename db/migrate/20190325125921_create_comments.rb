class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :title
      t.string :song
      t.string :singer
      t.text :story
      t.string :when

      t.timestamps
    end
  end
end
