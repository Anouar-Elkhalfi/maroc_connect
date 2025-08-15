class CreateJobs < ActiveRecord::Migration[7.1]
  def change
    create_table :jobs do |t|
      t.string :title
      t.text :description
      t.text :requirements
      t.string :location
      t.string :employment_type
      t.string :salary_range
      t.references :company, null: false, foreign_key: true
      t.integer :created_by
      t.string :status

      t.timestamps
    end
  end
end
