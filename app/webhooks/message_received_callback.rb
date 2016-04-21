class MessageReceivedCallback < MessengerPlatform::Callback

  def callback_name
    :messages
  end

  def run(event)
    if event.text == 'hello'
      recipient = MessengerPlatform::Messaging::Recipient.new(id: event.sender.id)
      message = MessengerPlatform::Messaging::Message.new(text: 'hello back')
      delivery = MessengerPlatform::Messaging::Delivery.new(recipient: recipient, message: message)
      MessengerPlatform::Api::Messages.create(delivery)
    end
  end

end
