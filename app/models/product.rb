class Product
  include Mongoid::Document
	include Mongoid::Timestamps
	include Mongoid::Paperclip
	include Mongoid::Versioning
  
  field :name, type: String
  field :description, type: String
	field :_id, type: String, default: ->{ name.to_s.parameterize }
	field :useremail,type: String
	field :user_id,type: String

#	has_mongoid_attached_file :photo,
   # :url => "/system/attachments/:id/:style/:basename.:extension", 
	#	 :keep_old_files => true , 
		#:keep_old_files => :version_condition_met?,
   # :path => ":rails_root/public/system/attachments/:id/:style/:basename.:extension", 
   # :styles => {
   #   :original => ['1920x1680>', :jpg],
    #  :small    => ['100x100#',   :jpg],
    #  :medium   => ['250x250',    :jpg],
    #  :large    => ['500x500>',   :jpg]
    #},
    #:convert_options => { :all => '-background white -flatten +matte' }
	validates :name, :presence => true
	validates :description, :presence => true
	validates_uniqueness_of :_id
	validates_uniqueness_of :name
	#validates_attachment_content_type :photo, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
	belongs_to :user
	
end
