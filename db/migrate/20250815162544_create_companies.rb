class CreateCompanies < ActiveRecord::Migration[7.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :industry
      t.string :location
      t.string :logo_url
      t.string :website_url
      t.text :description

      t.timestamps
    end
  end
end
