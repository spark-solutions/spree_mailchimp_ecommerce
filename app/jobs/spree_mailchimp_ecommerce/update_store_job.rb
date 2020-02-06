module SpreeMailchimpEcommerce
  class UpdateStoreJob < ApplicationJob
    def perform(mailchimp_setting)
      gibbon_store.update(body: {
                            name: mailchimp_setting.mailchimp_store_name,
                            email_address: mailchimp_setting.mailchimp_store_email
      })
    end
  end
end
