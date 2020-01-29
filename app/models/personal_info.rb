class PersonalInfo < ApplicationRecord
    validates :first_name, presence: true , allow_nil:true
    validates :first_name, :last_name, format: { with: /\A[A-Z]+\Z/ , message: "should be in all caps"}
    # validates :last_name, presence:true , if: :first_name?
    validates :email, uniqueness: true, format: { with: /\A(\w+\.*)+@\w+(\.\w{2,3})+\Z/}
    validates :age, presence: true, numericality: {only_integer: true, greater_than: 14, less_than_or_equal_to: 40}
    validates :year_completed, presence:true, numericality:true
    validates :website, format:{with: /\Ahttps?\:\/\/www\.\w+(\.\w{2,3})+\Z/}
    validates :password, presence: true, confirmation: true, length:{in: 6..8}  
    validates :password_confirmation ,presence: true     
    validates :user_name, uniqueness: {scope: :email}, exclusion: { in: %w{prince priyank}, message: "%{value} is reserved" }
    
    with_options if: :first_name? do |gp|
        gp.validates :last_name, presence:true
        gp.validates :email,presence:true
    end

    validates_with CustomValidate

    def first_name?
        first_name.present?
    end


end
