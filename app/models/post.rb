class Post < ActiveRecord::Base
	validates_presence_of :body, :author

end
