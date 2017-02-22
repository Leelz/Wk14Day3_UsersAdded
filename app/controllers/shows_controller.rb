class ShowsController < ApplicationController

  def show_params
    params.require(:show).permit([:name, :diet])
  end

  def index
    shows = Show.all()
    render({:json => shows})
  end

  def show
    show = Show.find(params[:id]) #find the tvshow witht he id in url, assign to variable and render to json
    render({:json => show})
  end

  def create
    show = Show.create(show_params) #this called the function above
    render({ json: show })
  end
  
end