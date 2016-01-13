class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :option_one
      t.string :option_two
      t.string :option_three

      t.timestamps null: false
    end
  end
end
