class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.string :date
      t.string :place

      t.timestamps
    end
  end
end
