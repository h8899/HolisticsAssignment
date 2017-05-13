class StringProcessController < ApplicationController

  def set_string
    @key = params[:key]
    @value = params[:value]
    $Hash[@key] = @value
  end

  def get_string
    @key = params[:key]
    @value = $Hash[@key]
  end
end
