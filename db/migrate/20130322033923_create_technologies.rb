class CreateTechnologies < ActiveRecord::Migration
  def change
    create_table :technologies do |t|
      t.string :name
      t.string :description
      t.string :website

      t.timestamps
    end
  end
end
