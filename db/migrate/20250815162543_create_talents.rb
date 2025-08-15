class CreateTalents < ActiveRecord::Migration[7.1]
  def change
    create_table :talents do |t|
      t.references :user, null: false, foreign_key: true
      t.text :skills
      t.text :experience
      t.string :linkedin_url
      t.string :portfolio_url
      t.string :cv_url
      t.boolean :available

      t.timestamps
    end
  end
end
