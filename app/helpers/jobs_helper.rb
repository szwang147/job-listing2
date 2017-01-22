module JobsHelper
  def render_job_status(job)
     if job.is_hidden
    content_tag(:span, "(hidden)", class:"fa fa-lock")
     else
    content_tag(:span, "(publish)", class:"fa fa-unlock")
     end
  end
end
