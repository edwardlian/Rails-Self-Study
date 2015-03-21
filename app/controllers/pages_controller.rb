class PagesController < ApplicationController
  def home
  end

  def about
  	@name = params[:name] ? params[:name] : "訪客"
  	# render layout: 'admin' # 指定版型
  end

  def math
  	@numbers = (1..46).to_a.sample(6)
  end

  def admin
  	# render layout: 'admin'
  end
end
