class ApplicationController < ActionController::Base
  before_filter :authenticate_user!
  protect_from_forgery

  # see http://groups.google.com/group/plataformatec-devise/browse_thread/thread/80306c96985feca5
  layout :specify_layout  

  protected
  def specify_layout 
    (devise_controller? and request.path != '/users/sign_in') ? "devise_layout" : "application" 
  end 

end
