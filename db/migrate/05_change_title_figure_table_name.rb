class ChangeTitleFigureTableName < ActiveRecord::Migration
  def change
     rename_table :titles_figures, :title_figures
   end
 end
