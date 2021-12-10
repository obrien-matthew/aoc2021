inc_count = 0
prev_num = 0
window = 3
q = SizedQueue.new(window)
File.foreach("./2021.01.input.txt") {
    |line| 
    if q.length() < window
        q << line.to_i
        next
    end
    prev = q.pop()
    if line.to_i > prev
        inc_count+=1
    end
    q << line.to_i
}
puts inc_count