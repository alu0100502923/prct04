#!/usr/local/rvm/rubies/ruby-2.0.0-p247/bin/ruby

   puts "probando git"
   
data = File.open('matriz.dat').read
puts data
c, b = data.split(/\n\n+/)

d = [[0,0,0], [0,0,0], [0,0,0]]

def mapmap(a)
  a.map { |r| 
    r.map { |e| 
      yield e
    }
  }
end

def to_m(a)
  a = a.split(/\n/)
  a = a.map { |r| r.split(/\s+/) }
  a = mapmap(a) { |x| x.to_f } 
end

c = to_m(c)
b = to_m(b)

n = c.length

# "Suma de matrices: "

  for i in (0...n) do
    for j in (0...n) do
d[i][j] = (c[i][j] + b[i][j])
    end	
 end
 puts d 
 puts "\n\n"

  # "Multiplicacion de matrices: "

  for i in (0...n) do
    for j in (0...n) do
      sum = 0;
      for k in (0...n) do
sum += (c[i][k] * b[k][j])
      end
      d[i][j] = sum
    end	
 end
 
 puts d 
