Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/students/:student_id", to: "students#show"
  get "/courses/:course_id", to: "courses#show"
end
