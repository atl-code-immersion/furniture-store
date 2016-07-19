class CountryController < ApplicationController
  def all_states
  	if params[:name] != nil
  		State.create(name: params[:name], capital: params[:capital], population: params[:population], area: params[:area])
  	end

  	@states = State.order(:name)
  end

  def top_pop
  	@states = State.order(population: :desc).limit(5)
  end

  def top_area
  	@states = State.order(area: :desc).limit(5)
  end
end
