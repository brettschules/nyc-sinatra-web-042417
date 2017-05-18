class CreateTitlesFigures < ActiveRecord::Migration
  def change
    create_table :titles_figures do |t|
      t.references :figure
      t.references :title
    end

  end
