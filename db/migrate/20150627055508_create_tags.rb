class CreateTags < ActiveRecord::Migration
  def up
    create_table :tags do |t|
      t.string :urls
      t.references :comment, index: true, foreign_key:true

      t.timestamps
    end
  end
   
   def down
    drop_table :tags do |t|
      t.string :urls
      t.references :comment, index: true

      t.timestamps
    end
  end
end
