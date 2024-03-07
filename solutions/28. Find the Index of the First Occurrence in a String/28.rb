# @param {String} haystack
# @param {String} needle
# @return {Integer}
def str_str(haystack, needle)
    gap = needle.size
    return -1 unless haystack.include? needle
    haystack.size.times do |i|
        return i if haystack[i, gap] == needle
    end
end