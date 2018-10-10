/by/ =~ 'ruby'
/by/ =~ 'ruuuuuuby'
/by/ =~ 'ruuuuuuu'

phrase = "Hello, how are you?"
match = /how/.match(phrase)
match.to_s

match.pre_match
match.post_match

/\d{2}/.match('41-984604949')
/\d{2}-\d{8,}/.match('41-984604949')

time = Time.now
time.class

time.year
time.day
time.month

time.strftime('%d/%m/%y')

time.saturday?
time.friday?

time2 = Time.now

time == time2
