class SetProcessController < ApplicationController
  require 'set'

  def add
    @key = params[:key]
    @arr = params[:arr]
    @set = @arr.to_set
    @temp = $Hash[@key]

    # Check if the key previously stored a list or a string.
    if (@temp == nil || @temp.kind_of?(Array) || @temp.kind_of?(String))
      $Hash[@key] = @set
    else
      $Hash[@key] = $Hash[@key] | @set
    end
  end

  def card
    @key = params[:key]
    @set = $Hash[@key]
    if (@set.kind_of?(Set))
      @cardinal = @set.size
    else
      @cardinal = "This operation must be on set"
    end
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
    @currentSet = $Hash[@key]
    if (@currentSet.kind_of?(Set))
      $Hash[@key] = (@currentSet | @set) ^ @set
    end

  end

  def intersect
    @arr = params[:arr]
    len = @arr.size
    @firstKey = @arr[0]
    @finalSet = $Hash[@firstKey]
    i = 1
    while i < len
      @currentKey = @arr[i]
      @currentSet = $Hash[@currentKey]
      @finalSet = @finalSet & @currentSet
      i += 1
    end
    @finalArray = @finalSet.to_a
  end
end
