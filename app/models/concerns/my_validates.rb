class MyValidates < ActiveModel::Validator
    def validate(record)
        if !(record.firstname == record.firstname.upcase  )
            record.errors.add(:firstname,"must be uppercase") 
        end
        if !(record.lastname == record.lastname.upcase  )
            record.errors.add(:lastname,"must be uppercase") 
        end
    end
end