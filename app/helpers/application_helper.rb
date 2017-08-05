module ApplicationHelper\
  def admin?
    !(current_user == nil or current_user.role != :admin)
  end

end
