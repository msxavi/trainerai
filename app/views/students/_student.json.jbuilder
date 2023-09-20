json.extract! student, :id, :name, :course, :course_start_date, :units_of_competency, :progress_rating, :created_at, :updated_at
json.url student_url(student, format: :json)
