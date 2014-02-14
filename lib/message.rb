class Message

	include DataMapper::Resource

	property :id, 			Serial
	property :name,			String
	property :email,		String
	property :title,		String
	property :body, 		String		

end