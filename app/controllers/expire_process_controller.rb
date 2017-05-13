class ExpireProcessController < ApplicationController
  def key
    @arr = $Hash.keys
  end

  def delete
    @key = params[:key]
    $Hash.delete(@key)
  end

  def flush
    $Hash = {}
  end

end
