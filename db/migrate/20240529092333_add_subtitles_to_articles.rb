class AddSubtitlesToArticles < ActiveRecord::Migration[7.1]
  def change
    add_column :articles, :subtitle, :string
    add_column :articles, :paragraph, :text
    add_column :articles, :second_subtitle, :string
    add_column :articles, :second_paragraph, :text
  end
end
