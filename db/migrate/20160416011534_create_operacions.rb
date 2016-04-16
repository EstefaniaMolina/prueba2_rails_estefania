class CreateOperacions < ActiveRecord::Migration
  def change
    create_table :operacions do |t|

      t.timestamps null: false
    end
  end
end
