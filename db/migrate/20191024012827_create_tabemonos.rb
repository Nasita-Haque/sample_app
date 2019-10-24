class CreateTabemonos < ActiveRecord::Migration[5.0]
  def change
    create_table :tabemonos do |t|
      t.string :name
      t.integer :rank

      t.timestamps
    end
  end
end
