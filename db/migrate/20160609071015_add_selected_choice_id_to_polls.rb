class AddSelectedChoiceIdToPolls < ActiveRecord::Migration
  def change
    add_column :polls, :selected_choice_id, :integer
  end
end
