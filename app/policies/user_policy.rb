class UserPolicy < ApplicationPolicy
  def show?
    true # Anyone can view a user's profile
  end

  def liked?
    user == record || !record.private? # Only the user or non-private users can view liked posts
  end

  def feed?
    user == record # Only the user can view their own feed
  end

  def followers?
    user == record || !record.private? # Only the user or non-private users can view followers
  end

  def following?
    user == record || !record.private? # Only the user or non-private users can view following
  end

  def discover?
    true # Open to everyone
  end
end
