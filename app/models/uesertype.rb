class Uesertype
  include Mongoid::Document
  field :name
  field :description
	field :_id, type: String, default: ->{ name.to_s.parameterize }
 # references_many:users
end
