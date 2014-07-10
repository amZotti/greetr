class CreateGreetings < ActiveRecord::Migration
  def change
    create_table :greetings do |t|
      t.belongs_to :sender, index: true, null: false
      t.belongs_to :recipient, index: true, null: false
      t.text :message, null: false

      t.timestamps null: false
    end
    #Only way to validate for uniqueness is to use add_index
    #add_index all foreign keys
    #add index is premade by index: true
  end
end
