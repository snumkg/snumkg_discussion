class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
    	t.integer :article_id
    	t.string :writer
    	t.string :body

      t.timestamps
    end
  end
end
