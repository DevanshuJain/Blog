class SignupMailer < ApplicationMailer

def signup(user)
    @user = user
    mail(:to => 'djain@bestpeers.com', :subject => "Registration Confirmation")
 end
end
