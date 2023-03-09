class CreateColleges < ActiveRecord::Migration[6.0]
  def change
    create_table :colleges do |t|
      t.name :teacher
      t.string :address
      t.string :mobile
      t.string :email

      t.timestamps
    end
  end
end
