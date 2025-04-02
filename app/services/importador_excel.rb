require "roo"

class ImportadorExcel

    def initialize(file)
        @file = file
    end

    def importar
        hoja = Roo::Spreadsheet.open(@file.path)
        (2..hoja.last_row).each do |fila|
            datos_filas = hoja.row(fila)

            carro = Carro.new
            carro.descripcion = datos_filas[0]
            carro.color = datos_filas[1]
            carro.puertas = datos_filas[2]
            carro.save
        end
    end

end