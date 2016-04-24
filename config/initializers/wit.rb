Rails.application.eager_load!

actions = {
  :say => BaseActions.new.method(:say).to_proc,
  :merge => BaseActions.new.method(:merge).to_proc,
  :error => BaseActions.new.method(:error).to_proc
}

WitAction.subclasses.each do |action_class|
  actions[action_class.action_name] = action_class.new.method(:perform).to_proc
end

WIT_CLIENT = Wit.new(ENV['WIT_AI_ACCESS_TOKEN'], actions)
