class Dmv
  attr_accessor :facilities

  def initialize
    @facilities = []
  end

  def add_facility(facility)
    @facilities << facility
  end

  def facilities_offering_service(service)
    @facilities.select do |facility|
      facility.services.include?(service)
    end
  end
end
