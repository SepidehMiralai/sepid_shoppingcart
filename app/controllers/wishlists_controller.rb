class WishlistsController < ApplicationController
  before_action :set_wishlist, only: [:show, :edit, :update, :destroy]

  # GET /wishlists
  # GET /wishlists.json
  def index
    @wishlists = Wishlist.where(user_id: @current_user.id)
  end

  # GET /wishlists/1
  # GET /wishlists/1.json
  def show
    
  end

  # GET /wishlists/new
  def new
    
    @wishlist = Wishlist.new
  end

  # GET /wishlists/1/edit
  def edit
#    @wishlist = Wishlist.find_by(id: params[:id])
    @user = User.find_by_id(@wishlist.user_id)
  end
  

  # POST /wishlists
  # POST /wishlists.json
  def create
    @wishlist = Wishlist.new(wishlist_params)
    @wishlist.user_id = current_user.id
    @wishlist.name = current_product.title
    @wishlist.img_url = current_product.image_url
    @wishlist.price = current_product.price

    
    respond_to do |format|
      if @wishlist.save
        format.html { redirect_to store_index_url }
        format.json { render :show, status: :created, location: @wishlist }
#        format.js   { @current_item = @line_item }
      else
        format.html { render :new }
        format.json { render json: @wishlist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wishlists/1
  # PATCH/PUT /wishlists/1.json
  def update
#    @wishlist = Wishlist.find_by(id: params[:id])
    @user = User.find_by_id(@wishlist.user_id)
    respond_to do |format|
      if @wishlist.update(wishlist_params)
        format.html { redirect_to @wishlist, notice: 'Wishlist was successfully updated.' }
        format.json { render :show, status: :ok, location: @wishlist }
      else
        format.html { render :edit }
        format.json { render json: @wishlist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wishlists/1
  # DELETE /wishlists/1.json
  def destroy
    @wishlist.destroy
    respond_to do |format|
      format.html { redirect_to wishlists_url, notice: 'Wishlist was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wishlist
      @wishlist = Wishlist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wishlist_params
      params.fetch(:wishlist, {})
    end
end
