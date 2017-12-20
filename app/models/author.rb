class Author < ActiveRecord::Base
  validations name: presence: true
end
