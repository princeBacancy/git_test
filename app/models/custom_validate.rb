class CustomValidate < ActiveModel::Validator
    def validate raw
        if raw.year_completed != ""
            if raw.company_name == ""
                raw.errors.add(:company_name , "can't be empty")
            end
            if raw.website == ""
                raw.errors.add(:website , "can't be empty")
            end
        end
    end
end