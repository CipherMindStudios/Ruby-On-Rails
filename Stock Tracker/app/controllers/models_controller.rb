class ModelsController < ApplicationController
  def my_portfolio
      @stock=Stock.look_up(params[:stock])

    render 'models/my_portfolio'
  end
end
