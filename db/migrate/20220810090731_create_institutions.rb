class CreateInstitutions < ActiveRecord::Migration[5.2]
  def change
    create_table :institutions do |t|
      t.string :name
      t.string :phone_no
      t.string :email
      

      t.timestamps
    end
  end
end
