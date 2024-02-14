###
# Sorts integer arguments in ascending order.
###

result = []

ARGV.each do |arg|
    # Skip if not an integer
    next unless arg.match?(/^-?\d+$/)

    # Convert to an integer
    i_arg = arg.to_i

    # Insert the result at the right position
    is_inserted = false
    i = 0
    l = result.size
    while i < l do
        if result[i] < i_arg
            i += 1
        else
            result.insert(i, i_arg)
            is_inserted = true
            break
        end
    end
    result << i_arg unless is_inserted
end

puts result
