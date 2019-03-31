class CreateOpinions < ActiveRecord::Migration[5.2]
  def change
    create_table :opinions do |t|
      t.integer :comment_id
      t.string :name
      t.text :content

      t.timestamps

       t.index :comment_id
    end
  end
end
