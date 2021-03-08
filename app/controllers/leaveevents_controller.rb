class LeaveeventsController < ApplicationController
  before_action :authenticate_user!
  before_action :admin_required, :only => [:leave_to_approve, :approve_leave]


  def new
   @leaveevent = Leaveevent.new
  end

  def create
    byebug
    @leaveevent = Leaveevent.new(params[:leaveevent])
    if @leaveevent.valid?
      @leaveevent.save
      redirect_to leaveevents_path
    else
      render 'new'
    end
  end  

  def show
    @leaveevent = Leaveevent.find(params[:id])
  end

  def edit
    @leaveevent = Leaveevent.find(params[:id])
  end

  def update
   @leaveevent = Leaveevent.find(params[:id])
   @leaveevent.attributes = params[:leaveevent]
   @leaveevent.status = "pending"
   if @leaveevent.valid?
      @leaveevent.save
      redirect_to leaveevents_path
    else
      render 'edit'
    end
  end


  def destroy
    @leaveevent = Leaveevent.find(params[:id])
    @leaveevent.delete
    redirect_to leaveevents_path
  end

  def leave_to_approve
    @leaveevents = Leaveevent.where(:admin_id => user.id, :status => "pending")
  end



  def approve_leave
    leaveevent = Leaveevent.find(params[:id])
    status = params[:rejected].present? ? params[:rejected] : "Approved"
    if leaveevent.update_attribute("status",status)
      flash[:notice] = "Leave updated successfully"
      redirect_to leaveevent_to_approve_leaveevents_path
    end
  end
end
