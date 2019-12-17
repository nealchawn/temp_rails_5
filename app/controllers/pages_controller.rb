class PagesController < ApplicationController
  before_action :set_member

  def home
  end

  def update_member_bio
    respond_to do |format|
        format.json { 
          @member.update(bio: "new bio")
          @member.save
          render json: @member, status: :ok 
        }
    end
  end

  def current_member_bio
    respond_to do |format|
        format.json { render json: @member, status: :ok }
    end
  end

  def set_member
    @member = Member.first
  end

end
