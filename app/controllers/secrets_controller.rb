class SecretsController < ApplicationController
  before_filter :require_login

  def index
    respond_to do |format|
      format.html { render :index }
      format.json { render :json => Secret.all }
    end
  end

  def create
    @secret = current_user.authored_secrets.build(params[:secret])
    @secret.save!
    # if @secret.save
    #   redirect_to secret_url(@secret)
    # else
    #   render :new
    # end

    respond_to do |format|
      format.html { render :text => "hello" }
      format.json { render :json => @secret }
    end
  end

  def new
    @secret = Secret.new
  end

end
