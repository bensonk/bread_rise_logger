class Rise < ActiveRecord::Base
  has_many :readings

  def heights
    readings.collect { |r| r.height }
  end

  def intensities
    readings.collect { |r| r.intensity }
  end
end
