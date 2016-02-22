class Admin::EntriesController < ApplicationController
  before_action :authenticate_admin!
  layout "admin_layout"

  def index
    @entries = Entry.all
  end

  def show
    @entry = Entry.find(params[:id])
  end

end
