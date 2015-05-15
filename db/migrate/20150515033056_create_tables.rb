class CreateTables < ActiveRecord::Migration
  def change
    create_table :bands do |b|
      b.column :band_name, :string

    end
    create_table :venues do |v|
      v.column :venue_name, :string
    end

    create_table :bands_venues, id: false do |bv|
      bv.belongs_to :band, index: true
      bv.belongs_to :venue, index: true
    end
  end
end
