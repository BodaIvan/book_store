class Registration < ApplicationRecord
    def paypal_url(return_path)
        values = {
            business: "sb-dhrst6410504@business.example.com",
            cmd: "_xclick",
            upload: 1,
            return: "#{Rails.application.secrets.app_host}#{return_path}",
            invoice: id,
            amount: book.price,
            item_name: book.title,
            item_number: book.id,
            quantity: '1'
        }
        "#{Rails.application.secrets.paypal_host}/cgi-bin/webscr?" + values.to_query
      end
      serialize :notification_params, Hash
  def paypal_url(return_path)
    values = {
        business: "sb-dhrst6410504@business.example.com",
        cmd: "_xclick",
        upload: 1,
        return: "#{Rails.application.secrets.app_host}#{return_path}",
        invoice: id,
        amount: book.price,
        item_name: book.title,
        item_number: book.id,
        quantity: '1',
        notify_url: "#{Rails.application.secrets.app_host}/hook"
    }
    "#{Rails.application.secrets.paypal_host}/cgi-bin/webscr?" + values.to_query
  end
end