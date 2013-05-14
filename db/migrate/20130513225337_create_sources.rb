class CreateSources < ActiveRecord::Migration
  def change
    create_table :sources do |t|
      t.belongs_to :parent

      t.timestamps
    end
  end
end
