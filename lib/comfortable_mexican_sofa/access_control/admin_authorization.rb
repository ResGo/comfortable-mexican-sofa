module ComfortableMexicanSofa::AccessControl
  module AdminAuthorization
    # By default there's no authorization of any kind
    def authorize
      if current_user
        # ability = Ability.new(current_user)
        # return true if ability.can?(:manage, params[:controller])
        # raise CanCan::AccessDenied
      else
        comfy_admin_cms_path
      end
    end
  end
end
