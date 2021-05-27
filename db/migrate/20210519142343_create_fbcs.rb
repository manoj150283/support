class CreateFbcs < ActiveRecord::Migration[6.1]
  def change
    create_table :fbcs do |t|
      t.string :project
      t.string :status
      t.string :CSM
      t.string :Support_Engineer
      t.string :Equipment
      t.string :Warranty_Start_Date
      t.string :Staff_Dashboard
      t.string :Live_Locations
      t.string :Total_Locations
      t.string :Support_Coverage
      t.string :SLA

      t.timestamps
    end
  end
end
