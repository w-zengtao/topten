module ActsAsTaggableOn
  class Tag < ::ActiveRecord::Base
    after_create :create_soulmate
    
    def to_hash
      tag_json = {
        id: self.id,
        term: self.name,
        score: self.taggings_count
      }
      JSON.parse(tag_json.to_json)
    end
    
    private
    def create_soulmate
      Soulmate::Loader.new("tag").add self.to_hash
    end
  end
end