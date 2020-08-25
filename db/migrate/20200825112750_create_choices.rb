class CreateChoices < ActiveRecord::Migration[6.0]
  def change
    create_table :choices do |t|
      t.references :question, null: false, foreign_key: true
      t.string :choice
      t.boolean :is_right_choice
      t.text :note

      t.timestamps
    end
  end
end
