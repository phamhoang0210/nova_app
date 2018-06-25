class ServicesController < ApplicationController
	def index
        page=params['page']
		ser = RestClient::Request.execute(method: :get, url: 'http://nova.ingress.v2.cloud.edumall.io/api/service/?page='+ page.to_s, headers: {'access-token': '7sWnZKVaZDLUM3PtSPhaGg',client: 'uyDI-Zs83ICqAFNj00NJaQ',uid: 'accounttest@topica.edu.vn'})
	    @service = JSON.parse ser.body
	    @total_page = @service['filters']['paging']['page_total']
	    @cur_page = @service['filters']['paging']['page']
	    @prev = @service['filters']['paging']['prev']
	    @next = @service['filters']['paging']['next']
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
