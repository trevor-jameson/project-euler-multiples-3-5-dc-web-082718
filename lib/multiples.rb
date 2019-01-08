# Enter your procedural solution here!
def collect_multiples(lmt)
    times = 2
    multiples = [3, 5]
    while (3 * times) < lmt
        multiples << 3 * times
        times+=1
    end
    times = 2
    while 5 * times < lmt
        multiples << 5 * times
        times += 1
    end
    return multiples.uniq.sort
end

def sum_multiples(lmt)
    collection = collect_multiples(lmt)
    return collection.inject(0) {|sum, x| sum + x}
end