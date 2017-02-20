class CreateCvs < ActiveRecord::Migration[5.0]
  def change
    create_table :cvs do |t|
      t.string :position
      t.string :city
      t.text :description
      t.string :url

      t.timestamps
    end
  end
end
