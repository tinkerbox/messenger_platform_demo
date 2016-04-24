class MessageReceivedCallback < MessengerPlatform::Callback

  def callback_name
    :messages
  end

  def run(event)
    response = WIT_CLIENT.run_actions event.sender.id, event.text, {}
    # puts response.inspect
  end

end
