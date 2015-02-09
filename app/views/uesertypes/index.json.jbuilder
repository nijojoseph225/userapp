json.array!(@uesertypes) do |uesertype|
  json.extract! uesertype, :id, :name, :description
  json.url uesertype_url(uesertype, format: :json)
end
