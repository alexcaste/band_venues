class CreateTables < ActiveRecord::Migration
  def change
    create_table :bands do |b|
      b.column :band_name, :string

      b.timestamps null: false
    end
    create_table :venues do |v|
      v.column :venue_name, :string

      v.timestamps null: false

    end
    create_table :concerts, id: false do |c|
      c.belongs_to :band, index: true
      c.belongs_to :venue, index: true
    end
  end
end
