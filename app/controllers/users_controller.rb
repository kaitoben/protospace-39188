class UsersController < ApplicationController
 
  def show
    @user = User.find(params[:id])
    @prototypes = @user.prototypes
    # アソシエーションでuser has_many prototypesとなっている場合は
    # Userテーブルからプロトタイプテーブルへの記述も可能
   
  end

end
