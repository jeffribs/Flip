class Document < ActiveRecord::Base

    # attr_accessible :attachment
    belongs_to :post
    has_attached_file :attachment

end
