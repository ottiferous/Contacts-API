class ContactshareController < ApplicationController

  #ContactShare(id: integer, contact_id: integer, user_id: integer)
  def create
    share = ContactShare.new(share_params)
    if share.save
      render json: share
    else
      render json: share.errors.full_messages, status: :unprocessable_entity
    end
  end

  def destroy
    share = ContactShare.find(params[:id])
    share.delete
    render json: share
  end
  private

  def share_params
    params.permit(:contact_id, :user_id)
  end

end
