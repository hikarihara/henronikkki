class CreateTemples < ActiveRecord::Migration
  def change
    create_table :temples do |t|
      t.string :temple_name
      t.text :address
    end
  end
end
