# string:name
# text:description
# 
class Pokemon < ActiveRecord::Base
  belongs_to :parent,     :class_name => "Pokemon"
  has_many   :evolutions, :class_name => "Pokemon", :foreign_key => :parent_id
end