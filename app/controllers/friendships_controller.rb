class FriendshipsController < ApplicationController
  before_filter :require_login

  def create
    @friendship = current_user.friendships.build(friend_id: params[:user_id])
    @friendship.save!

    render json: @friendship
  end

  def destroy
    @friendship = current_user.friendships.where(friend_id: params[:user_id])[0]
    @friendship.destroy

    render json: current_user.friends

    # current_user.friends.delete_if { |friend| friend.id == params[:user_id]}
    # current_user.friend_ids = current_user.friend_ids.reject do |id|
    #   id == params[:user_id]
    # end
    # current_user.save!
    # @friendship = Friendship.find(params[:id])
    # @friendship.destroy
  end

end
