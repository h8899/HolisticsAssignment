class ListProcessController < ApplicationController
  def length
    @key = params[:key]
    @length = $Hash[@key].size
  end

  def push
    @key = params[:key]
    @arr = params[:arr]
    if ($Hash[@key] == nil)
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
    key = params[:key]
    start = params[:start]
    stop = params[:stop]
    value = $Hash[key]
    @arr = value.slice(start, stop - start + 1)
  end
end
