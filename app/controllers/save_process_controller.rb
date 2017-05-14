class SaveProcessController < ApplicationController
  def save
    $StoredHash = $Hash.clone
  end

  def restore
    $Hash = $StoredHash.clone
  end
end
