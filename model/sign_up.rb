
class Login
  def initialize(user_model)
    @user_model = user_model || User
  end

  def user(name, email)
    user = user_model(name: name, email: email)
    end
  end

  attr_reader :user_model

def sign_up(name: "Sujesh", email: "sujesh_roy@makersacademy.com" )
   visit "/"
   click_link "Sign Up"
   fill_in :email, with: email
   fill_in :name, with: name
   click_button "Sign Up"
 end
