class HomeController < ApplicationController
  def index
    @credential_container = CredentialContainer.new
  end

  def decide

    test_result = LdapService.test_credentials \
      username: credential_container_params[:username],
      password: credential_container_params[:password]

    if true == test_result
      path = success_path
    else
      path = failure_path
    end

    redirect_to path, status: 302
  end

private
  def credential_container_params
    params.require(:credential_container).permit(:username, :password)
  end
end
