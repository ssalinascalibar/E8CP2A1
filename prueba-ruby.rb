file = File.open('notas.csv', 'r')
notas = file.readlines
file.close

#when 1
david = notas[0].chomp.split(', ')
def promedio(name, nombre ) 
    a = name.shift
    
    sum=0
    name.each do |e|
        sum += e.to_f
    end
    
    avg = sum / name.length
    puts "Promedio de #{nombre} es #{avg}"

end

gonzalo = notas[1].chomp.split(', ')
def promedio(name, nombre ) 
    a = name.shift
    
    sum=0
    name.each do |e|
        sum += e.to_f
    end
    
    avg = sum / name.length
    puts "Promedio de #{nombre} es #{avg}"

end

mai = notas[2].chomp.split(', ')
def promedio(name, nombre ) 
    a = name.shift
    
    sum=0
    name.each do |e|
        sum += e.to_f
    end
    
    avg = sum / name.length
    puts "Promedio de #{nombre} es #{avg}"

end

jp = notas[3].chomp.split(', ')
def promedio(name, nombre ) 
    a = name.shift
    
    sum=0
    name.each do |e|
        sum += e.to_f
    end
    
    avg = sum / name.length
    puts "Promedio de #{nombre} es #{avg}"

end

#fin when 1


#when 3

def aprobados(n)
    puts 'Ingresa (nota 5) como nota minima para aprobar'
    puts 'Se mostrará los alumnos aprobados :'

    n = gets.chomp.to_f
    
    prom_david = 3.6.to_f
    if n <= prom_david
        puts 'David aprobó'
    else n > prom_david
        puts 'David reprobó'
    end

    prom_gonzalo = 4.2.to_f
    if n <= prom_gonzalo
        puts 'Gonzalo aprobó'
    else n > prom_gonzalo
        puts 'Gonzalo reprobó'
    end

    prom_mai = 7.6.to_f
    if n <= prom_mai
        puts 'Mai aprobó'
    else n > prom_mai
        puts 'Mai reprobó'
    end

    prom_jp = 10.0.to_f
    if n <= prom_jp
        puts 'JP aprobó'
    else n > prom_jp
        puts 'JP reprobó'
    end

end

#fin when 3

#menu principal
def main_menu()
puts "Selecciona una opcion:"
puts "1 .- Promedio de notas alumno"
puts "2 .- Total de inasistencia alumno"
puts "3 .- Alumnos aprobados"
puts "4 .- Fin programa"
end

main_menu

#fin menu principal

opcion = 0
while opcion < 5 && opcion >= 0 

  opcion = gets.chomp.to_i
  case opcion
  when 1
    promedio(david, "David")
    promedio(gonzalo, "Gonzalo")
    promedio(mai, "Mai")
    promedio(jp, "JP")

    puts ''
    main_menu()

    
  
  when 2
    notas = notas.map{ |n| n.split(', ').map{ |n| n.chomp}}
    notas = notas.inject(0){ |x, i| x + i.count('A') }
    puts "Total de inasistencias del curso : #{notas}"

    puts ''
    main_menu() 
    
  when 3
    aprobados(5)

    puts ''
    main_menu()

  when 4
    puts 'Saliste del programa'
    puts 'Ojalá me pongan buena nota!'
  else
    puts 'Opción inválida'
    
    
  end


end



