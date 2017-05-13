class StringProcessController < ApplicationController
  $StringHash = {}

  def set_string
    @key = params[:key]
    @value = params[:value]
    $StringHash[@key] = @value
  end

  def get_string
    @key = params[:key]
    @value = $StringHash[@key]
  end
end
