class CreateDog < ActiveRecord::Migration
  def change
    create_table :dogs do |t|
      t.string :dog_name
      t.string :dog_color
    end
  end
end
