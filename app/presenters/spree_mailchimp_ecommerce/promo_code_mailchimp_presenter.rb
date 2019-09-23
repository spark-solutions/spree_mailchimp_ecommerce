# frozen_string_literal: true

module SpreeMailchimpEcommerce
  class PromoCodeMailchimpPresenter
    include Rails.application.routes.url_helpers
    attr_reader :promotion

    def initialize(promotion)
      @promotion = promotion
    end

    def json
      {
        id: Digest::MD5.hexdigest(promotion.id.to_s),
        code: promotion.code || "",
        redemption_url: redemption_url,
        usage_count: promotion.credits_count,
        created_at_foreign: promotion.created_at.strftime("%Y%m%dT%H%M%S") || "",
        updated_at_foreign: promotion.updated_at.strftime("%Y%m%dT%H%M%S") || ""
      }.as_json
    end

    private

    def redemption_url
      "#{Rails.application.routes.url_helpers.spree_url}#{promotion.path}"
    end
  end
end
