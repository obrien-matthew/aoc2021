x=y=0
File.foreach("2021.02.input.txt") {
    |line|
    op, units = line.split
    if op == "forward":
        x+=units.to_i
    elsif op == "down":
        y-=units.to_i
    elsif op == "up":
        y+=units.to_i
    end
}
puts x*y