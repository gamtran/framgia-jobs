class RecruitsController < ApplicationController

  def show
    render "recruits/_#{params[:job]}"
  end
end
