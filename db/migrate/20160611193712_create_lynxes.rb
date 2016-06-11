class CreateLynxes < ActiveRecord::Migration
  def change
    create_table :lynxes do |t|
      t.string	:name
      t.integer		:age
      t.boolean	:furry
      t.timestamps null: false
    end
  end
end
