class HomeController < ApplicationController
    
    def hello
        @param = params.require(:id).to_i
        @model = @param * @param 
        @sonuc = "#{@param} sayısının karesi #{@model} 'dur. ";   
    end
    
    def bye
        @degisken = Home.find(1)
    end
end