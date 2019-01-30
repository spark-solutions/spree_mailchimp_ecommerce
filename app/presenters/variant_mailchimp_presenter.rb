# frozen_string_literal: true

module SpreeMailchimpEcommerce
  module Presenters
    class VariantMailchimpPresenter
      attr_reader :variant

      def initialize(variant)
        @variant = variant
      end

      def json
        {
          id: Digest::MD5.hexdigest("#{variant.sku}#{variant.id}"),
          title: variant.name || "",
          sku: variant.sku,
          price: variant.price.to_s,
          url: "#{ENV['BASE_URL']}/#{variant.category&.permalink || 'products'}/#{variant.slug}",
        }.as_json
      end
    end
  end
end
