class ListProcessController < ApplicationController
  $ListHash = {}

  def length
    @key = params[:key]
    @length = $ListHash[@key].size
  end

  def push
    @key = params[:key]
    @arr = params[:arr]
    if ($ListHash[@key] == nil)
      $ListHash[@key] = @arr
    else
      $ListHash[@key] = $ListHash[@key] + @arr
    end
    @length = $ListHash[@key].size
  end

  def left_pop
    @key = params[:key]
    @value = $ListHash[@key].shift
  end

  def right_pop
    @key = params[:key]
    @value = $ListHash[@key].pop
  end

  def range
    key = params[:key]
    start = params[:start]
    stop = params[:stop]
    value = $ListHash[key]
    @arr = []
    while start <= stop
      @arr.push(value[start])
      start += 1
    end
  end
end
