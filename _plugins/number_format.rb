module Jekyll
  module CurrencyFormatFilter
	# Formats a number as a currency value.
	# input - The number to be formatted.
	# currency_symbol - Optional symbol to prepend to the number. Default is "$".
	def currency_format(input, currency_symbol = "$")
	  # Ensure input is a float for decimal operations
	  input = input.to_f
	  # Format the number with two decimal places and commas as thousands separators
	  formatted_number = sprintf("%.2f", input).reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse
	  # Prepend the currency symbol
	  "#{currency_symbol}#{formatted_number}"
	end
  end
end

Liquid::Template.register_filter(Jekyll::CurrencyFormatFilter)
