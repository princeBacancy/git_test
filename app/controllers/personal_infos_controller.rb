class PersonalInfosController < ApplicationController
    def new
        @personal_info = PersonalInfo.new
    end

    def create
       personal_info = PersonalInfo.new(info_params)
       
       if personal_info.save
        redirect_to personal_infos_path
       else
        flash[:errors] = personal_info.errors.full_messages
        redirect_to root_path
       end
    end

    def info_params
        params.require(:personal_info).permit(:first_name, :last_name, :email, :age, :degree, :year_completed, :company_name, :website, :address_line1, :address_line2, :city, :state, :zipcode, :password, :password_confirmation, :user_name)
    end
end
