class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :username
      t.string :body

      t.timestamps
    end
  end
end
