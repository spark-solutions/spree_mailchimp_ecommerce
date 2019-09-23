module Spree
  module SpreeMailchimpEcommerce
    module VariantDecorator
      def mailchimp_variant
        ::SpreeMailchimpEcommerce::VariantMailchimpPresenter.new(self).json
      end
    end
  end
end
Spree::Variant.prepend(Spree::SpreeMailchimpEcommerce::VariantDecorator)
