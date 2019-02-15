class ProductsController < ApplicationController
 
  def index
    @product = Product.all
  end

  def destroy
    @object = Product.find(params[:id])
    if @object.destroy
      flash[:success] = 'Object was successfully deleted.'
      redirect_to products_path
    else
      flash[:error] = 'Something went wrong'
      redirect_to objects_url
    end
  end

  def edit
    @product = Product.find(
    params[:id]
    )
  end
  def update
       @product = Product.find(params[:id])
      if @product.update(params[:product].permit!)
        flash[:success] = "Object was successfully updated"
        redirect_to products_path
      else
        flash[:error] = "Something went wrong"
        render 'edit'
      end
  end
  
  
  def create
    # fail
    @object = Product.new(params[:product].permit!)
    if @object.save
      flash[:success] = "Object successfully created"
      redirect_to products_path
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end

  end

  def new
    @product = Product.new
  end
  
  # def edit
  #   @ = .find()
  # end
  
  def show
    @product = Product.find(
    params[:id]
    )
  end
private
  def hahaha
  end
end
