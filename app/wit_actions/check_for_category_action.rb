class CheckForCategoryAction < WitAction

  def perform(session_id, context)
    puts "CheckForCategoryAction: #{context.inspect}"
    return context unless context['user_intent'] == 'buy'

    count = rand(2)
    if count != 0
      context["results"] = count
      respond_with_products(recipient(session_id))
    else
      respond_with_message(recipient(session_id))
    end
    return context
  end

  private

  def respond_with_products(recipient)
    delivery = MessengerPlatform::Api::Messages.create(recipient) do |message|
      message.build_attachment(:generic_template) do |template|

        template.build_element do |element|

          element.title = "Classic White T-Shirt"
          element.image_url = 'http://petersapparel.parseapp.com/img/item100-thumb.png'
          element.subtitle = 'Soft white cotton t-shirt is back in style'

          element.build_button(:web_url) do |button|
            button.url = "https://petersapparel.parseapp.com/view_item?item_id=100"
            button.title = "View Item"
          end

          element.build_button(:web_url) do |button|
            button.url = "https://petersapparel.parseapp.com/buy_item?item_id=100"
            button.title = "Buy Item"
          end

          element.build_button(:postback) do |button|
            button.payload = "USER_DEFINED_PAYLOAD_FOR_ITEM100"
            button.title = "Bookmark Item"
          end

        end

        template.build_element do |element|

          element.title = "Classic Grey T-Shirt"
          element.image_url = 'http://petersapparel.parseapp.com/img/item101-thumb.png'
          element.subtitle = 'Soft gray cotton t-shirt is back in style'

          element.build_button(:web_url) do |button|
            button.url = "https://petersapparel.parseapp.com/view_item?item_id=101"
            button.title = "View Item"
          end

          element.build_button(:web_url) do |button|
            button.url = "https://petersapparel.parseapp.com/buy_item?item_id=101"
            button.title = "Buy Item"
          end

          element.build_button(:postback) do |button|
            button.payload = "USER_DEFINED_PAYLOAD_FOR_ITEM101"
            button.title = "Bookmark Item"
          end

        end

      end
    end
  end

  def respond_with_message(recipient)
    delivery = MessengerPlatform::Api::Messages.create(recipient) do |message|
      message.text = "Sorry, we don't have any in stock at the momement"
    end
  end

end
