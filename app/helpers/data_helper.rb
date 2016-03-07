module DataHelper

  def current_bill
      if (bill_id = BillDetail[:id])
        @current_bill ||= BillDetail.find_by(id: user_id)
      elsif (user_id = cookies.signed[:user_id])
        user = User.find_by(id: user_id)
        if user && user.authenticated?(cookies[:remember_token])
          log_in user
          @current_user = user
        end  
      end
      
  end

end
