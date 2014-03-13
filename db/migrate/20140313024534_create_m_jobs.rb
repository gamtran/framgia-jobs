class CreateMJobs < ActiveRecord::Migration
  def change
    create_table :m_jobs do |t|
      t.string :name

      t.timestamps
    end
  end
end
