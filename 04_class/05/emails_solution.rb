# create an array that returns an array with each first name taken before the @ symbol from the $coderdotnew array
def firstname_from_email(array)
  fnames = []
  array.each do |email|
    before_at = email.split("@")
    fnames << before_at[0].capitalize
  end
  fnames
end

# create an array that returns an array of full names that comes before the @ symbol for each email in the google array
def fullname_from_email(array)
  names = []
  array.each do |email|
    before_at = email.split("@")
    names << before_at[0]
  end
  full_names = []
  names.each do |name|
    true_name = name.gsub(".", " ")
    full_names << true_name.split.map(&:capitalize).join(" ")
  end
  full_names
end

