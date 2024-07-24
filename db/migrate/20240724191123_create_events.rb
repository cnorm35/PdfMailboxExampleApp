class CreateEvents < ActiveRecord::Migration[7.1]
  def change
    create_table :events do |t|
      t.datetime :start_time
      t.string :title
      t.text :description
      t.string :link
      t.string :location

      t.timestamps
    end
  end
end
