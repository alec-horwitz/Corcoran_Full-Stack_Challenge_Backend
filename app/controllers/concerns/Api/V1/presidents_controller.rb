class Api::V1::PresidentsController < ApplicationController
  def index
    users = User.all
    render json: users, status: 200
  end

  def show
    if (params[:order] == "ascending")
      render json: User.all, status: 200
    elsif (params[:order] == "descending")
      render json: User.all, status: 200
    else
      render json: nil, status: 400
    end
  end
end
