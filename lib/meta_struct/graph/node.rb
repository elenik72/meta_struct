# frozen_string_literal: true

class MetaStruct::Graph::Node
  require_relative 'node/factory'

  class << self
    # @option uuid [String, nil]
    # @option labels [Array<String,Symbol>]
    # @option properties [Hash<String|Symbol,Any>]
    # @return [MetaStruct::Graph::Node]
    # rubocop:disable Layout/LineLength
    def create(uuid: Factory.generate_uuid, labels: Factory::NO_LABLES, properties: Factory::NO_PROPERTIES)
      Factory.create(uuid: uuid, labels: labels, properties: properties)
    end
    # rubocop:enable Layout/LineLength
  end

  # @return [Hash<String,Any>]
  attr_reader :properties

  # @return [Array<String>]
  attr_reader :labels

  # @return [String]
  attr_reader :uuid

  # @option uuid [String]
  # @option labels [Array<String>]
  # @option properties [Hash<String,Any>]
  # @return [void]
  def initialize(uuid:, labels:, properties:)
    @uuid = uuid
    @lables = lables
    @properties = properties
  end
end
