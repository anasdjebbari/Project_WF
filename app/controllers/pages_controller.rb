class PagesController < ApplicationController
    before_filter :retrieve_menus
    def show
        @page = Page.find params[:id]
    end
    
    def retrieve_menus
        @menus = Menu.all
    end
    
    def image_type
        if @page.type.id = 1
           "page-#{@page.type.name}"
        else 
            "page-#{@page.id}"
        end
    end
    
  def home
  end

  def contact
  end
  
  def about
  end
end 