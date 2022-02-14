class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  include MeiliSearch::Rails
  extend Pagy::Meilisearch

  meilisearch do
    attribute :name
    attribute :cuisine
    attribute :description
    attribute :reviews do
      reviews.pluck(:body)
    end

    filterable_attributes [:cuisine]
    sortable_attributes [:created_at, :updated_at]
  end
end
