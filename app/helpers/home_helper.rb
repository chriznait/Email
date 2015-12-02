module HomeHelper

  def hay_banner?
  	if content_for?(:imagen)
  	return true
  	end
  end
end
