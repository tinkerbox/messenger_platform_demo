class WitAction

  def self.action_name
    self.to_s.gsub('Action', '').titleize.downcase.gsub(' ', '-').to_sym
  end

  protected

  def recipient(session_id)
    @recipient ||= MessengerPlatform::Messaging::Recipient.new(id: session_id)
  end

end
