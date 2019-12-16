class SearchController < ApplicationController

  PER = 9

  def search
    @products = Product.ransack(title_or_description_cont: params[:keyword]).result.page(params[:page]).per(PER)
  end
end
