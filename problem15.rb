numerator = (1..40).inject(:*)
denominator = (1..20).inject(:*) * (1..20).inject(:*)

puts numerator / denominator
