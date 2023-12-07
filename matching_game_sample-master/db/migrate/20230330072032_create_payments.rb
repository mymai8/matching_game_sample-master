class CreatePayments < ActiveRecord::Migration[6.0]
  def change
    create_table :payments do |t|
      t.references :coach,              null: false, foreign_key: true
      t.references :order,              null: false, foreign_key: true
      t.integer    :rank_id,            null: false
      t.text       :character,          null: false
      t.string     :play_style
      t.string     :play_time,          null: false
      t.text       :play_device,        null: false
      t.text       :communication_tool, null: false
      t.text       :goal,               null: false
      t.timestamps
    end
  end
end