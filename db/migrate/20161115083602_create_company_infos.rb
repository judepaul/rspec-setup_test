class CreateCompanyInfos < ActiveRecord::Migration
  def change
    create_table :company_infos do |t|
      t.references :appln_info, index: true, foreign_key: true
      t.string :company_name
      t.string :company_phone
      t.string :company_address

      t.timestamps null: false
    end
  end
end
