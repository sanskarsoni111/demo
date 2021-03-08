class LeaveinfosController < ApplicationController
  def index
	 @leaveinfos = Leaveinfo.all
	end
end


