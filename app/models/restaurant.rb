class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  include MeiliSearch::Rails
  extend Pagy::Meilisearch

  meilisearch per_environment: true do
    attribute :name
    attribute :cuisine
    attribute :description
    attribute :reviews do
      reviews.pluck(:body)
    end

    attribute :created_at do
      created_at.to_i
    end

    filterable_attributes [:cuisine]
    sortable_attributes [:created_at, :updated_at]
  end
end
