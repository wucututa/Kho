class EntriesController < ApplicationController
  def index
    @user = User.find_by id: params[:user_id]
    @entry = @user.entries.paginate(page: params[:page])
  end
end
