class Pokemon < ActiveRecord::Base
  belongs_to :parent, :class_name => "Pokemon"
  has_many :childs, :class_name => "Pokemon"
end