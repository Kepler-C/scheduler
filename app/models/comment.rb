class Comment < ApplicationRecord
  include Visible
  
  belongs_to :appointment

end
