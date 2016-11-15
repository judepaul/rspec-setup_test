class CreateApplnInfos < ActiveRecord::Migration
  def change
    create_table :appln_infos do |t|
      t.string :appln_number
      t.string :appln_type
      t.string :appln_status

      t.timestamps null: false
    end
  end
end
