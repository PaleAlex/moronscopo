class AddSegnoToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :segno, :string
  end
end
