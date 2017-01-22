class JobsController < ApplicationController
  # before_action: authenticate_user!
  def index
    @jobs = Job.all
  end

  def show
    @job = Job.find(params[:id])
  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.new(job_params)
    if @job.save
      redirect_to jobs_path
      flash[:notice] = "create"
    else
      render :new
    end
  end

  def edit
    @job = Job.find(params[:id])
  end

  def update
    @job = Job.find(params[:id])
    if @job.update(job_params)
      redirect_to jobs_path
    else
      render_to jobs_path
      flash[:notice] = "update"
    end
  end

  private
  def jobs_params
    params.require(:job).permit(:title, :description)
  end

end
