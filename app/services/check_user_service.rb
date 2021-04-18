class CheckUserService
  def initialize(user)
    @user = user
  end

  def check
    user_check = @user.user_checks.create
    sleep(15.seconds)
    user_check.checked = true
    user_check.save
  end
end