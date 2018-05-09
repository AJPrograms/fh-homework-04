class Book < ApplicationRecord
    # add search functionality
  def self.search(search)
    return Book.all unless search

    if !search.to_i.instance_of?(Integer)
      where(query_string , 
            "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%") 
    else
      where("#{query_string} OR year = ?" , 
        "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", search.to_i) 
    end
  end

  def query_string
    "title ILIKE ? OR author ILIKE ? OR classification ILIKE ? OR genre ILIKE ? OR book_type ILIKE ?"
  end
end
