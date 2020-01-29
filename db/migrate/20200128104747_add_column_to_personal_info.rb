class AddColumnToPersonalInfo < ActiveRecord::Migration[6.0]
  def change
    add_column :personal_infos, :degree, :string
    add_column :personal_infos, :year_completed, :string
    add_column :personal_infos, :company_name, :string
    add_column :personal_infos, :website, :string
    add_column :personal_infos, :address_line1, :text
    add_column :personal_infos, :address_line2, :text
    add_column :personal_infos, :city, :string
    add_column :personal_infos, :state, :string
    add_column :personal_infos, :zipcode, :string
    add_column :personal_infos, :password, :string
    add_column :personal_infos, :user_name, :string
  end
end
