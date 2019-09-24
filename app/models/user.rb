class User < ApplicationRecord
  validates :email, uniqueness:  true #nos ayuda a proteger la duplicidad de correos
  has_many :posts
end
