class JobPostController < ApplicationController
  def index
    render json: JobPost.all
  end

  def show
    render json: job_post
  end

  def create
    job_post = JobPost.new(job_post_params)
    render json: job_post
  end

  def update
    job_post.assign_attributes job_post_params
    authorize supplier
    render json: job_post, status: :ok
  end

  private

  def job_post
    @job_post ||= JobPost.find params[:id]
  end

  def job_post_params
    params.require(:jobPosts).permit(
      :application_deadline,
      :benefits,
      :compensation_max,
      :compensation_min,
      :contact_for_role,
      :description,
      :education_preferred,
      :education_required,
      :experience_max,
      :experience_min,
      :location,
      :title
    )
  end
end
