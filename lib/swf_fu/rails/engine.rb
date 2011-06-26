# Configure Rails 3.1 

require "action_view/helpers/asset_tag_helper"

module SwfFu
  module Rails
  
      class Engine < ::Rails::Engine
            #config.before_configuration do
	    #require "jquery/assert_select" if ::Rails.env.test?
	    #end
	    
	    # add the swf_tag to ActionView
	    ::ActionView::Helpers::AssetTagHelper.class_eval  { include ::ActionView::Helpers::SwfFuHelper }

			      end
			      
			        end
			       end
				