class User < ActiveRecord::Base

  validates_presence_of :name
  validates_uniqueness_of :name, :case_sensitive => false
  has_many :recommendations

   def to_s
     name
   end

end
