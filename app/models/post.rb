class Post < ActiveRecord::Base

    # attr_accessible :document_attributes
    belongs_to :project
    belongs_to :user
    has_many :documents

    has_attached_file :attachment

    # accepts_nested_attributes_for :document

end
