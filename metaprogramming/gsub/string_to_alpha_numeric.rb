class String
  def to_alpha_numeric
    gsub /[^\w\s]/,''
  end
end