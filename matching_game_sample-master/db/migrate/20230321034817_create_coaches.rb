class CreateCoaches < ActiveRecord::Migration[6.0]
  def change
    create_table :coaches do |t|
      t.references :user,               null: false, foreign_key: true
      t.integer    :rank_id,            null: false
      t.string     :kill_rate,          null: false
      t.text       :character,          null: false
      t.string     :play_style
      t.string     :play_time,          null: false
      t.text       :play_device,        null: false
      t.text       :communication_tool, null: false
      t.string     :price,              null: false
      t.string     :times_to_teach,     null: false
      t.integer    :rank_limit_id,      null: false
      t.text       :appeal_point,       null: false
      t.timestamps
    end
  end
end
