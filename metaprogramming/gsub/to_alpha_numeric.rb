class ToAlphaNumeric
  def to_alpha_numeric input
    input.gsub /[^\w\s]/,''
  end
end