#Desafío patrones
=begin
Escribir un programa llamado patrones.rb con métodos que reciban la cantidad de lineas y
muestren por pantalla los siguientes patrones de *:
=end

#a. letra O
def letra_o(n)
    n.times do |i|
        #imprime la primera y última fila
        if i == 0 || i == (n - 1)
            n.times do
                print "*"
            end
        else
        #imprime el interior de la letra
            n.times do |j|
                if j == 0 || j == (n - 1)
                    print "*"
                else
                    print "\s"
                end
            end
        end
        print "\n"
    end
end

#b. letra I
def letra_i(n)
    n.times do |i|
        #imprime la primera y última fila
        if i == 0 || i == (n - 1)
            n.times do
                print "*"
            end
        else
            #imprime el centro de la I
            n.times do |j|
                case j 
                when (n - 1) / 2
                    print "*"
                else
                    print "\s"
                end
            end
        end
        print "\n"        
    end
end

#c. letra Z
def letra_z(n)
    #imprime la primera y última fila
    for i in 1..n
        if i == 1 || i == n
            n.times do
                print "*"
            end
        else
            #imprime diagonal
            for j in 1..n
                case j
                when (n - i + 1)
                    print "*"
                else
                    print "\s"
                end
            end
        end
        print "\n"
    end
end

#d. letra X
def letra_x(n)
    for i in 0...n
        #imprime parte superior de la x
        for j in 1..n
            if j == (1 + i) || j == (n - i)
                print "*"
            else
                print "\s"
            end
        end
        print "\n"    
    end
end

#e. numero 0
def numero_cero(n)
    #imprime la primera y última fila
    n.times do |i|
        if i == 0 || i == (n - 1)
            n.times do
                print "*"
            end
        else
            #imprime lados y diagonal
            n.times do |j|
                if j == 0 || j == (n - 1)
                    print "*"
                elsif j == i
                    print "*"
                else 
                    print "\s"
                end
            end
        end
        print "\n"
    end
end

#f. navidad
def navidad(n)
    #imprime la copa del árbol
    ((n / 2) + 2).times do |i|
        (n + 2).times do |j|
            #si la mitad del arbol es j impar
            if i.even? && ((n+1)/2).even? == false
                if j.even? == false && j <= ((n+1)/2) + i && j >= ((n+1)/2) - i
                    print "*"
                else
                    print "\s"
                end
            elsif i.even? == false && ((n+1)/2).even? == false
                if j.even? && j <= ((n+1)/2) + i && j >= ((n+1)/2) - i
                    print "*"
                else
                    print "\s"
                end
            end
            #si la mitad del arbol es j par
            if i.even? && ((n+1)/2).even?
                if j.even? && j <= ((n+1)/2) + i && j >= ((n+1)/2) - i
                    print "*"
                else
                    print "\s"
                end
            elsif i.even? == false && ((n+1)/2).even?
                if j.even? == false && j <= ((n+1)/2) + i && j >= ((n+1)/2) - i
                    print "*"
                else
                    print "\s"
                end
            end
        end
        print "\n"
    end
    #imprime tronco del arbol + la base
    (((2*n - n)/2) + 1).times do |i|
        (n + 2).times do |k|
            if i != ((2*n - n)/2)
                case k 
                when ((n + 1)/2); print "*"
                else print "\s"
                end
            else
                case k.even?
                when false
                    print "*"
                else
                    print "\s"
                end
            end  
        end
        print "\n"
    end
end

#llamando a todos los métodos
n = ARGV[0].to_i
letra_o(n)
letra_i(n)
letra_z(n)
letra_x(n)
numero_cero(n)
navidad(n)