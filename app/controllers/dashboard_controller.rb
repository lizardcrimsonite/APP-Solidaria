def index
  @needs = current_user.needs
  @helps = current_user.helps
end
