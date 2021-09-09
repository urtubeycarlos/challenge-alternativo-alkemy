json.continentes @continentes do |continente|
    json.id continente.id
    json.denominacion continente.denominacion
    json.imagen continente.imagen
    json.paises continente.paises do |pais|
        json.id pais.id
        json.denominacion pais.denominacion
        json.imagen pais.imagen
        json.cant_habitantes pais.cantHabitantes
        json.superficie pais.superficie
    end
end