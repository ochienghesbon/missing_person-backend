class PeopleController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :record_unprocessable_entity

  # GET /people
  def index
    people = People.all
    render json: people
  end

  # GET /people/:id
  def show
    people = find_people
    render json: people
  end

  # POST /people
  def create
    people = People.create(people_params)
    render json: people, status: :created
  end
  
   # PATCH /people/:id
   def update
    people = find_people
      people.update!(people_params)
      render json: people
  end

  # DELETE:id
def destroy
    people = find_people
      people.destroy
      head :no_content
  end


  private

  def people_params


    params.permit(:name, :image, :age, :description, :is_missing, :location)
  end

  def find_people
    People.find(params[:id])
  end

  def render_not_found_response
    render json: { error: "Person not found" }, status: :not_found 
    end

def record_unprocessable_entity(exception)
    render json: { errors: exception.record.errors.full_messages }, status: :unprocessable_entity
  end

end
