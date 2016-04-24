require 'wit'

actions = {

  :say => -> (session_id, context, msg) {
    puts msg
  },

  :merge => -> (session_id, context, entities, msg) {
    return context
  },

  :error => -> (session_id, context, msg) {
    puts error.message
  }

}

WIT_CLIENT = Wit.new(ENV['WIT_AI_ACCESS_TOKEN'], actions)
