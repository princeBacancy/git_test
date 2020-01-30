class CreateTemps < ActiveRecord::Migration[6.0]
  def change
    create_table :temps do |t|
      t.string :name

      t.timestamps
    end
  end
end
