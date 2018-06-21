class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.integer :status, default: 'brand_new'
      t.integer :user_id
      t.integer :project_id

      t.timestamps
    end
  end
end
