class ListProcessController < ApplicationController
  def length
    @key = params[:key]
    @length = $Hash[@key].size
  end

  def push
    @key = params[:key]
    @arr = params[:arr]
    @temp = $Hash[@key]

    # Check if the key previously store a string or set.
    if (@temp == nil || @temp.kind_of?(String) || @temp.kind_of?(Set))
      $Hash[@key] = @arr
    else
      $Hash[@key] = $Hash[@key] + @arr
    end
    @length = $Hash[@key].size
  end

  def left_pop
    @key = params[:key]
    @value = $Hash[@key].shift
  end

  def right_pop
    @key = params[:key]
    @value = $Hash[@key].pop
  end

  def range

end
