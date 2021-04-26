class CreateInformation < ActiveRecord::Migration[6.0]
  def change
    create_table :information do |t|
      t.string     :name, null:false
      t.string     :name_spell, null: false
      t.date       :birthdate, null:false
      t.string     :email, null:false
      t.text       :motivation, null:false
      t.timestamps
    end
  end
end