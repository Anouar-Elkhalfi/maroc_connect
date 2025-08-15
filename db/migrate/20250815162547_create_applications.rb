class CreateApplications < ActiveRecord::Migration[7.1]
  def change
    create_table :applications do |t|
      t.references :talent, null: false, foreign_key: true
      t.references :job, null: false, foreign_key: true
      t.string :status
      t.text :note

      t.timestamps
    end
  end
end
