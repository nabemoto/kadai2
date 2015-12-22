class CreateViewcounters < ActiveRecord::Migration
  def change
    create_table :viewcounters do |t|
      t.text :site_url
      t.timestamps 
    end
  end
end
