class BaseActions

  def say(session_id, context, msg)
    puts "BaseActions.say: #{session_id.inspect}, #{context.inspect}, #{msg.inspect}"
    delivery = MessengerPlatform::Api::Messages.create(recipient(session_id)) do |message|
      message.text = msg
    end
  end

  def merge(session_id, context, entities, msg)
    puts "BaseActions.merge: #{session_id.inspect}, #{context.inspect}, #{entities.inspect}, #{msg.inspect}"
    entities.each do |key, values|
      context[key] = values[0]['value']
    end
    return context
  end

  def error(session_id, context, msg)
    puts "BaseActions.error: #{session_id.inspect}, #{context.inspect}, #{msg.inspect}"
    puts error.message
  end

  private

  def recipient(session_id)
    @recipient ||= MessengerPlatform::Messaging::Recipient.new(id: session_id)
  end

end
