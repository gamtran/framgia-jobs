class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :name
      t.string :email
      t.string :github_id
      t.references :m_job
      t.text :self_pr
      t.text :other_information

      t.timestamps
    end
  end
end
