class Api::V1::PresidentsController < ApplicationController
  def index
    presidents = President.all
    render json: presidents, status: 200
  end

  def show
    if (params[:id].to_s == "ascending")
      presidents = President.all.sort_by {|president| president.name}
      render json: presidents, status: 200
    elsif (params[:id].to_s == "descending")
      presidents = President.all.sort_by {|president| president.name}.reverse
      render json: presidents, status: 200
    else
      render json: nil, status: 400
    end
  end
end
