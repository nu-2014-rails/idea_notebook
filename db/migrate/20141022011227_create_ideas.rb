class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.string :desc

      t.timestamps
    end
  end
end
