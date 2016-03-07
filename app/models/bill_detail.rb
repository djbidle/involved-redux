class BillDetail < ActiveRecord::Base
  
  validates :bill_title, presence: true, uniqueness: true
  validates :bill_digest, presence: true
 
  # It returns the articles whose titles contain one or more words that form the query
  def self.search(search)
      if search
        where('bill_digest LIKE ?', "%#{search}%")
      else
      end
  end
end
