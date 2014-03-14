class EntriesController < ApplicationController
  before_action :build_object

  def new
  end

  def create
    if @entry.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def build_object
    @entry = Entry.new
    @entry.attributes = entry_params if params[:entry]
  end

  def entry_params
    params.require(:entry).permit Entry::PERMITTED_PARAMS
  end
end
