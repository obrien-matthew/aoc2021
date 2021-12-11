numbits = 12
lines = 0
arr = Array.new(numbits, 0)
File.foreach("2021.03.input.txt") {
    |line|
    lines += 1
    numbits.times {
        |bit|
        if line[bit].to_i == 1
            arr[bit] += 1
        end
    }
}

numbits.times {
    |bit|
    if arr[bit] >= lines/2
        arr[bit] = 1
    else
        arr[bit] = 0
    end
}

bits = arr.join

puts "bits: #{bits}"
puts "gamma rate:   #{bits.to_i(2)}"
puts "epsilon rate: #{bits.to_i(2)^0b111111111111}"
puts "answer: #{bits.to_i(2)*(bits.to_i(2)^0b111111111111)}"