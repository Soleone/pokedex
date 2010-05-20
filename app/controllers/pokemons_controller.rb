class PokemonsController < ApplicationController
  # GET /pokemons
  # GET /pokemons.xml
  def index
    @pokemons = Pokemon.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @pokemons }
    end
  end

  # GET /pokemons/1
  # GET /pokemons/1.xml
  def show
    @pokemon = Pokemon.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @pokemon }
    end
  end

  # GET /pokemons/new
  # GET /pokemons/new.xml
  def new
    @pokemon = Pokemon.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @pokemon }
    end
  end

  # GET /pokemons/1/edit
  def edit
    @pokemon = Pokemon.find(params[:id])
  end

  # POST /pokemons
  # POST /pokemons.xml
  def create
    @pokemon = Pokemon.new(params[:pokemon])

    respond_to do |format|
      if @pokemon.save
        flash[:notice] = 'Pokemon was successfully created.'
        format.html { redirect_to(@pokemon) }
        format.xml  { render :xml => @pokemon, :status => :created, :location => @pokemon }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @pokemon.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /pokemons/1
  # PUT /pokemons/1.xml
  def update
    @pokemon = Pokemon.find(params[:id])

    respond_to do |format|
      if @pokemon.update_attributes(params[:pokemon])
        flash[:notice] = 'Pokemon was successfully updated.'
        format.html { redirect_to(@pokemon) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @pokemon.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /pokemons/1
  # DELETE /pokemons/1.xml
  def destroy
    @pokemon = Pokemon.find(params[:id])
    @pokemon.destroy

    respond_to do |format|
      format.html { redirect_to(pokemons_url) }
      format.xml  { head :ok }
    end
  end
end
