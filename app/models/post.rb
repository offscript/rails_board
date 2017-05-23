class Post < ApplicationRecord
	#include ActiveModel::Validations
	#include ActiveModel::Serializers::JSON
	#okay we gotta make some client side and server side validations


	#def as_json(options={})
     #   { :title => self.title, :description => self.title, :location => self.location }  # NOT including the email field
    #end

end
