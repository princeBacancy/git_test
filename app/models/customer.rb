class Customer < ApplicationRecord
    validates_with MyValidates
    validates :firstname,:lastname,:email, presence:true 
    validates :email ,uniqueness: true , format: /(\w+@[a-zA-Z]+.[a-z]+)/
    validates :age ,numericality: {greater_than:15 , less_than:40}
end