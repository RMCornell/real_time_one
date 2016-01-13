class AddAnswersToPollTable < ActiveRecord::Migration
  def change
    add_column :polls, :option_one, :string
    add_column :polls, :option_two, :string
    add_column :polls, :option_three, :string
    add_column :polls, :option_four, :string
  end
end
