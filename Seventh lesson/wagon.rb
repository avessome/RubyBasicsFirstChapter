require_relative 'module_company'

class Wagon
  include Company
  attr_reader :type, :capacity, :occupied
  def initialize(type, capacity)
    @capacity = capacity.to_i
    @type = type
    validate!
    @occupied = 0
  end

  def valid?
    validate!
    true
  rescue StandardError
    false
  end

  protected

  def validate!
    raise 'Ошибка! Тип не указан!' if @type.nil? || @type.empty?
    raise 'Ошибка! Вместимость должна быть больше 0!' unless @capacity.positive?
  end
end