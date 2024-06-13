class PopsController < ApplicationController

    def index
    end

    def new
        @pop = Pop.new
    end

    def show
      @pop = Pop.find_by(id: params[:id])
    end

    def create
        pop = Pop.new(pop_params)
        if pop.save!
          flash[:notice] = "診断が完了しました"
          redirect_to pop_path(pop.id)
        else
          redirect_to :action => "new"
        end
    end

    def group
        @pops = Pop.all
    end

    def company
    end

    def vocabulary
    end

    def diagnosis
    end

    private
    def pop_params
        params.require(:pop).permit(:name, :about)
    end
end
