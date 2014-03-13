class AddCvToEntries < ActiveRecord::Migration
  def change
    add_column :entries, :cv, :string
  end
end
