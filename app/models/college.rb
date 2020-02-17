class College < ApplicationRecord
#   def self.fetch(query)
#     @college=College.find
#   end

include PgSearch
pg_search_scope :search_by_term, against: [:title, :content],
  using: {
    tsearch: {
      any_word: true,
      prefix: true
    }
  }

end
