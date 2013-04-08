class CreateTechReports < ActiveRecord::Migration
  def self.up
    create_table :tech_reports do |t|
      t.integer :tr
      t.string :title
      t.text :abstract
      t.text :authors
      t.datetime :date

      t.timestamps
    end
    add_index :tech_reports, :date
    add_index :tech_reports, :tr
  end

  def self.down
    drop_table :tech_reports
  end
end
