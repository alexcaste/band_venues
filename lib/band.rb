class Band < ActiveRecord::Base
  has_many :concerts
  has_many :venues, through: :concerts
  validates(:band_name, {:presence => true, :length => {:maximum => 50}})

  before_save(:upcase)

private
  def upcase
    self.band_name = band_name.capitalize
  end

end
