class MongoidNonPusherableModel
  include Mongoid::Document
end

class MongoidDefaultedPusherableModel
  include Mongoid::Document
  pusherable
end

class MongoidPusherableModel
  include Mongoid::Document
  pusherable("our_channel")
end

class MongoidCallablePusherableModel
  include Mongoid::Document
  pusherable -> { "lambda_channel" }
end
