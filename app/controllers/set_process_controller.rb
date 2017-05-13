class SetProcessController < ApplicationController
  require 'set'
  $Hash = {}

  def add
    @key = params[:key]
    @arr = params[:arr]
    @set = @arr.to_set
    if ($Hash[@key] == nil)
      $Hash[@key] = @set
    else
      $Hash[@key] = $Hash[@key] | @set
    end
  end

  def card
    @key = params[:key]
    @set = $Hash[@key]
    @cardinal = @set.size
  end

  def members
    @key = params[:key]
    @set = $Hash[@key]
    @arr = @set.to_a
  end

  def remove
    @key = params[:key]
    @arr = params[:arr]
    @set = @arr.to_set
    $SetHash[@key] = $SetHash[@key] | @set
    $SetHash[@key] = $SetHash[@key] ^ @set
  end

  def intersect
    @arr = params[:arr]
    len = @arr.size
    @firstKey = @arr[0]
    @finalSet = $SetHash[@firstKey]
    i = 1
    while i < len
      @currentKey = @arr[i]
      @currentSet = $SetHash[@currentKey]
      @finalSet = @finalSet & @currentSet
      i += 1
    end
    @finalArray = @finalSet.to_a
  end
end
