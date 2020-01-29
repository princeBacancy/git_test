class CustomersController < ApplicationController
def index
    
end
    def new
    @customer = Customer.new
end
    def create
        @customer = Customer.new(customer_params)
        if @customer.save
            flash[:notice] = "details saved"
           render 'new'
        else
            render 'new'
        end
    end

    private
    def customer_params
        params.required(:customer).permit(:firstname,:lastname,:age,:email,:address_line1,:address_line2,:city,:zipcode,:state,:password)

    end
end