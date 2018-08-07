# Preview all emails at http://localhost:3000/rails/mailers/signup_mailer
class SignupMailerPreview < ActionMailer::Preview



 def signup
 	user = User.pluck(:email)[0]
 	SignupMailer.signup(user)
 	
 end
end
