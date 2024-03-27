# @param {String[]} strs
# @return {String[][]}
def group_anagrams(strs)
    h = {}
    strs.each do |s|
        sorted = s.chars.sort.join
        h[sorted] ? h[sorted] << s : h[sorted] = [s]
    end
    h.values
end

# Hint for a better solution in terms of perf:
# use the method `group_by` on strs and group by sorted string