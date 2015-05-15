class Band < ActiveRecord::Base
  has_and_belongs_to_many :venues
  validates(:band_name, {:presence => true, :length => {:maximum => 50}})

  before_save(:upcase)

private
  def upcase
    self.band_name = band_name.titlecase
  end

end
