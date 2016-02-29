module ComfortableMexicanSofa::AccessControl
  module AdminAuthorization
    # By default there's no authorization of any kind
    def authorize
      if current_user
        return true
      else
        comfy_admin_cms_path
      end
    end
  end
end
