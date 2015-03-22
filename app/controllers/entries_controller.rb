class EntriesController < ApplicationController
  def index
    @entries = Entry.all
  end
  
  def show
    @entry = Entry.find(params["id"])
  end
  
  
  def new
  end
  
  def create
    entry_params = params["entry"].permit("title", "contents")
  entry = Entry.create(entry_params)
  redirect_to(entry_path(entry))
  end
  
  def edit
    @entry = Entry.find(params["id"])
  end
  
  def update
    entry_params = params["entry"].permit("title", "contents", "picture_url")
  entry = Entry.find(params["id"])
  entry.update(entry_params)
  redirect_to(entries_path)
  end
  
  def destroy
    Entry.find(params["id"]).delete
    redirect_to(entries_path)
  end
  
end
