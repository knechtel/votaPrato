class RestaurantesController < ApplicationController
  def index
    @restaurantes = Restaurante.order :nome
  end
  
  def show
  		@restaurante = Restaurante.find(params[:id])
  		respond_to do |format|
  			format.html
  			format.json {render json: @restaurante}
  			format.xml {render xml: @restaurante}
  		end
  	end
  
  def destroy
    @restaurante = Restaurante.find(params[:id])
    @restaurante.destroy
    redirect_to(action: "index")
  end
  
  
 def new
    @restaurante = Restaurante.new
 end
 
 
 def restaurante_params
   params.require(:restaurante).permit(:nome, :endereco, :especialidade)
 end
 
 
 def create
 	 @restaurante = Restaurante.new(restaurante_params)
 	 if @restaurante.save
      redirect_to action: "show", id: @restaurante
 	 else
 	    render action: "error"
   end
 end

end
