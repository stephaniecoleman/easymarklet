module Easymarklet::LinkHelper
	
	def easymarklet_js(manifest = 'bookmarklet.js')
  	if Rails.env == "production"
	    "javascript:(function(){var script=document.createElement('SCRIPT');script.src='http://abodely.herokuapp.com/#{javascript_path(manifest)}';document.body.appendChild(script);})()"
	 	else
	    "javascript:(function(){var script=document.createElement('SCRIPT');script.src='http://localhost:3000/assets/bookmarklet.js';document.body.appendChild(script);})()"
 		end
  end


end


	# !!!!!!!!!!! Original Gem Code !!!!!!!!!!

  # def easymarklet_js(manifest = 'bookmarklet.js')
  #   "javascript:(function(){var script=document.createElement('SCRIPT');script.src='#{root_url}assets/#{manifest}';document.body.appendChild(script);})()"
  # end



  # !!!!!!!!!!! Steph and Blake Code !!!!!!!!!!

	# def easymarklet_js(manifest = 'bookmarklet.js')
	# 	if Rails.env == "production"
	#     "javascript:(function(){var script=document.createElement('SCRIPT');script.src='#{root_url.gsub(":3000/", "")}#{javascript_path(manifest)}';document.body.appendChild(script);})()"
	#  	else
	#     "javascript:(function(){var script=document.createElement('SCRIPT');script.src='http://localhost:3000/assets/bookmarklet.js';document.body.appendChild(script);})()"
	# 		end
	# end