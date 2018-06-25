class EnvironmentController < ApplicationController
	def index
	   # page = params['page']
	   # env = RestClient::Request.execute(method: :get, url: 'http://nova.ingress.v2.cloud.edumall.io/api/environment/?page=' + page.to_s, headers: {'access-token': 'LxvhoNLELwbx3i7SETZA7A', client:  'CadfNuv0vSEOcmwsl3KveQ', uid: '	accounttest@topica.edu.vn'})
	   # @environment = JSON.parse env.body
	   # @environment = JSON.parse env.body
	   #  @total_page = @environment['filters']['paging']['page_total']
	   #  @per_page = @environment['filters']['paging']['per_page']
	   #  @cur_page = @environment['filters']['paging']['page']
	   #  @prev = @environment['filters']['paging']['prev']
	   #  @next = @environment['filters']['paging']['next']
	   #  if(@cur_page == 1)
	   #  	@first = 1
	   #  	@last  = @cur_page +1
	   #  elsif(@cur_page > 1 && @cur_page < @total_page)
	   #  	@first = @cur_page -1
	   #  	@last = @cur_page +1
	   #  else (@cur_page == @total_page)
	   #      @first = @cur_page -1
	   #      @last = @cur_page
	   #  end
	   # binding.pry
	end
	def show
	end
	def edit
	end
end

  #  $.ajax({
  #        url: 'http://core-nova.ingress.v2.cloud.edumall.io/api/environment',
  #           type: 'GET',
  #           dataType: 'json',
  #           headers: {
  #               'access-token': 'LxvhoNLELwbx3i7SETZA7A',
  #               'client': 'CadfNuv0vSEOcmwsl3KveQ',
  #               'uid': 'accounttest@topica.edu.vn',
  #           },
  #           contentType: 'application/json; charset=utf-8',
  #           success: function (data) {
  #              // CallBack(result);
  #              a = data
  #              alert('');
  #              alert('successfull');
  #           },
  #              error: function (error) {
  #              console.log(error)
  #              alert('fails');
  #           }
  # });
