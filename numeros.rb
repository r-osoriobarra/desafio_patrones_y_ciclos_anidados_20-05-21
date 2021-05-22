#Desafío numeros

=begin
Escribir un programa llamado numeros.rb que reciba por línea de comandos la cantidad de lineas, y
dibuje el siguiente patrón:
Uso:
ruby numeros.rb 5
1
12
123
1234
12345
=end

n = ARGV[0].to_i

n.times do |i|
    (i + 1).times do |j|
        print (j + 1)
    end
    print "\n"
end