class SalesController < ApplicationController

	def index
	end

	def report
		#generate_reporet()
		ReportWorker.perform_async('dd','ddd')
		render text: "request  to generate"
	end

	private
	def generate_reporet
		sleep 30
	end
end
