class UserWorker
	include Sidekiq::Worker
	include Sidekiq::Status::Worker
	def perfom(user)
		byebug
	end
end