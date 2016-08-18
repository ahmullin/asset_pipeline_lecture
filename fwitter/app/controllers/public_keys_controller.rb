class PublicKeysController < ApplicationController



  def create
    PublicKey.create(params[:public_key])
  end
end
