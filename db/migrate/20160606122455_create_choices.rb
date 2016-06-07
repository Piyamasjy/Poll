class CreateChoices < ActiveRecord::Migration
  def change
    create_table :choices do |t|
    	t.string :name
    	
    	
    	t.integer :vote
    	t.references :poll

      t.timestamps null: false
    end
  end
end
