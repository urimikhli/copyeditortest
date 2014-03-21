class Passage < ActiveRecord::Base
  attr_accessible :title, :body, :test_body, :file_name
end
