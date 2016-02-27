module ComfortableMexicanSofa::AccessControl
  module AdminAuthentication
    # Set username and password in config/initializers/comfortable_mexican_sofa.rb
    # Like this:
    #   ComfortableMexicanSofa::AccessControl::AdminAuthentication = 'myname'
    #   ComfortableMexicanSofa::AccessControl::AdminAuthentication = 'mypassword'

    mattr_accessor  :username,
                    :password

    # Simple http_auth. When implementing some other form of authentication
    # this method should return +true+ if everything is great, or redirect user
    # to some other page, thus denying access to cms admin section.

    def authenticate
      if current_user
        return true
      else
        redirect_to new_user_session_path
      end
    end

  end
end
