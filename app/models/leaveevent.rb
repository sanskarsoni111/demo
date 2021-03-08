class Leaveevent < ApplicationRecord
belongs_to :user
validates  :total_leave, :leave_taken, :reason_for_leave, :user_id,:presence => true

def leave_array(total_leave, taken_leave)
	actual_total = actual_total_leave(total_leave)
    actual_taken = actual_taken_leave(taken_leave)
    l_leave_array = []
    no_of_days = (actual_taken -actual_total).to_i
    for no_of_day in 0..no_of_days
      l_leave_array << actual_total
      actual_total = actual_total + 1
    end
    l_leave_array
  end




end




