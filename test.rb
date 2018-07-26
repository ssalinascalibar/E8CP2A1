
def read_file
    file = File.open('notas.csv', 'r')
    alumnos = file.readlines.map(&:chomp).map { |ele| ele.split(', ') }
    file.close
    return alumnos
end
alumnos = read_file


def promedios_tot
    alumnos = read_file
    alumnos.each do |alum| 
      name_alumno = alum.shift
      suma = alum.inject(0) { |sum, x| sum + x.to_f }
      average = suma / alum.length 
      File.open('promedios_alumnos.txt', 'a') { |ele| 
        ele.puts "El alumno #{name_alumno} promedia #{average}"
     }
    end    
end
promedios_tot

