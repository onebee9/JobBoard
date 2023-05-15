class CreateCompanies < ActiveRecord::Migration[6.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :location
      t.string :industry
      t.string :size
      t.string :website

      t.timestamps
    end
  end
end
