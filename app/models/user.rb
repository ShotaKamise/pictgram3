class User < ApplicationRecord
  validates :name, presence: true, length: {maximum: 15}
  
  RAILS_EMAIL_RAGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true
  
  RAILS_PASSWORD_RAGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]{8,100}+\z/i
  validates :password, length: {in: 8..32}
  has_secure_password
  
  has_many :topics
  has_many :favorites
  has_many :favorite_topics, through: :favorites, source: "topic"
  has_many :comments
end
