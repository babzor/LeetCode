# STATS
# Runtime: 101ms
# Memory: 217.68 MB

# @param {String} s
# @param {String} t
# @return {Boolean}
def is_anagram(s, t)
    s.chars.sort.join == t.chars.sort.join
end