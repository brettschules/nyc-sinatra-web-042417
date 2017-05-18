class Figure < ActiveRecord::Base
  has_many :landmarks
  has_many :titles_figures
  has_many :titles, through: :titles_figures
end
