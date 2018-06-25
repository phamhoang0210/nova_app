class VariablesController < ApplicationController
    def index
    	page=params['page']
		var = RestClient::Request.execute(method: :get, url: 'http://nova.ingress.v2.cloud.edumall.io/api/variable?page=' + page.to_s, headers: {'access-token': '7sWnZKVaZDLUM3PtSPhaGg',client: 'uyDI-Zs83ICqAFNj00NJaQ',uid: 'accounttest@topica.edu.vn'})
	    @variable = JSON.parse var.body
	    @total_page = @variable['filters']['paging']['page_total']
	    @per_page = @variable['filters']['paging']['per_page']
	    @record_total = @variable['filters']['paging']['record_total']
	    @cur_page = @variable['filters']['paging']['page']
	    @prev = @variable['filters']['paging']['prev']
	    @next = @variable['filters']['paging']['next']
	    if(@cur_page == 1)
	    	@first = 1
	    	@last  = @cur_page +1
	    elsif(@cur_page > 1 && @cur_page < @total_page)
	    	@first = @cur_page -1
	    	@last = @cur_page +1
	    else (@cur_page == @total_page)
	        @first = @cur_page -1
	        @last = @cur_page
	    end
	end

	def show
	end

	def edit
	end
end
