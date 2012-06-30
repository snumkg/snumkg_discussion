class EditArticlesStateDefault < ActiveRecord::Migration
  def up
		change_column :articles, :state, :integer, :default => 0
  end

  def down
		change_column :articles, :state, :integer
  end
end
