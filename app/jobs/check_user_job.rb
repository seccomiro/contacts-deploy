class CheckUserJob < ApplicationJob
  queue_as :default

  def perform(user)
    CheckUserService.new(user).check
  end
end
