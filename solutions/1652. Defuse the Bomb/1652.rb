# @param {Integer[]} code
# @param {Integer} k
# @return {Integer[]}
def decrypt(code, k)
    return [0]*code.size if k == 0
    
    decrypted_code=[]
    n=code.size
    w_start = k > 0 ? 1 : n+k
    w_end = k > 0 ? k : n-1
    sum=0
    (w_start..w_end).each { |i| sum += code[i%n]} #initial sum
    decrypted_code << sum

    (1...n).each do |i|
        sum += code[(w_end+1)%n]
        sum -= code[w_start%n]
        decrypted_code << sum

        w_start += 1
        w_end += 1
    end
    decrypted_code
end
