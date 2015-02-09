class UsersController < ApplicationController
	before_filter :deny_to_visitors,:only_allow_admin
  def index
    @users = User.all
 end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to @user, :flash => { :success => 'User was successfully created.' }
    else
      render :action => 'new'
    end
  end

  def update
    @user = User.find(params[:id])

    if @user.update_attributes(user_params)
      sign_in(@user, :bypass => true) if @user == current_user
      redirect_to @user, :flash => { :success => 'User was successfully updated.' }
    else
      render :action => 'edit'
    end
  end
	def user_params
      params.require(:user).permit(:username, :email, :password, :password_confirmation,:firstname,:lastname,:usertype_id)
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path, :flash => { :success => 'User was successfully deleted.' }
  end
	def deny_to_visitors
			redirect_to new_user_session_path unless user_signed_in?
		end
	def only_allow_admin
		if  current_user.usertype_id==='admin'
			return true
		else
			 redirect_to root_path
		end
	end
end
