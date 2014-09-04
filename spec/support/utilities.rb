#def full_title(page_title)
#	base_title = "Tliz"
#	if page_title.empty
#		base_title	
#	else
#		"#{base_title} | #{page_title}"
#	end
#end

def full_title(page_title)
  base_title = "Tliz"
  if page_title.empty?
    base_title
  else
    "#{base_title} | #{page_title}"
  end
end