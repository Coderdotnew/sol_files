def third_dog
  $dogs[2]
end

def first_subject
  $subjects[0]
end

def last_three_movies
  $movies[2,4]
end

def fourth_letter_third_school
  $schools[2][3]
end

def third_word_second_movie
  $movies[1].split[2]
end

def reverse_first_subject
  $subjects[0].reverse
end

def reverse_second_word_of_fourth_movie
  $movies[3].split[1].reverse
end
