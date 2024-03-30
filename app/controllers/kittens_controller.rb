class KittensController < ApplicationController
  def index
    @kittens = Kitten.all
  end

  def show
    @kitten = Kitten.find(params[:id])
  end

  def new
    @kitten = Kitten.new
  end

  def create
    @kitten = Kitten.new(kitten_params)
    if @kitten.save
      redirect_to @kitten, notice: "You made #{@kitten.name}!"
    else
      render :new, status: :unprocessable_entity, notice: 'Kitten not saved'
    end
  end

  def edit
    @kitten = Kitten.find(params[:id])
  end

  def update
    @kitten = Kitten.find(params[:id])
    if @kitten.update(kitten_params)
      redirect_to @kitten
    else
      render :new, status: :unprocessable_entity, notice: 'Kitten not updated'
    end
  end

  def destroy
    @kitten = Kitten.find(params[:id])
    name = @kitten.name
    @kitten.destroy
    redirect_to root_path, status: :see_other, notice: "#{name} was destroyed!"
  end

  private

  def kitten_params
    # replace field1,2,3 with field names
    params.require(:kitten).permit(:name, :age, :cuteness, :softness)
  end
end
