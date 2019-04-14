class AddImageToOpinions < ActiveRecord::Migration[5.2]
  def change
    add_column :opinions, :image, :string
  end
end
