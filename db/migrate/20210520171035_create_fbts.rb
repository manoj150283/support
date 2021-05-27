class CreateFbts < ActiveRecord::Migration[6.1]
  def change
    create_table :fbts do |t|
      t.string :project
      t.string :status
      t.string :radius_poc
      t.string :support_engineer
      t.string :equipment
      t.string :warranty_start_date
      t.string :number_of_locations
      t.string :support_coverage
      t.string :sla
      t.string :tent_set_type

      t.timestamps
    end
  end
end
