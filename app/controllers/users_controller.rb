class UsersController < ApplicationController
    
    
 def index
    users = User.all
    render json: users.to_json({
        except: [:created_at, :updated_at],
        :include => {
            :user => {
                except: [:created_at, :updated_at]
            }
        },
        :include => {
            :colleges => {
                except: [:created_at, :updated_at]
            }

        },
        :include => {
            :favorites => {
                except: [:created_at, :updated_at]
            }
        }
    })
 end

  def create
    user = User.create(user_params)
    render json: user
  end


  def show
    @user = User.find(params[:id])
    if @user
      render json: {
        user: @user
      }
    else
      render json: {
        errors: ['User does not exist']
      }
    end
  end


  def login
    user = User.find_by(name: params["name"])
    if user.password == params[:password]
        render json: user
    else
        render json: {message: "User/Password not found. Please try again."}
    end
end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end


end
