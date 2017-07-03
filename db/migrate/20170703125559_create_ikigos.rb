class CreateIkigos < ActiveRecord::Migration[5.1]
  def change
    create_table :ikigos do |t|
      t.string :name

      t.timestamps
    end
  end
end
