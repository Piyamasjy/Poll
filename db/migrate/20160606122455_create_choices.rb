class CreateChoices < ActiveRecord::Migration
  def change
    create_table :choices do |t|
    	t.string :name
    	t.integer :vote
      #t.references :choice_id
    	t.references :poll

      t.timestamps 
    end
  end
end
