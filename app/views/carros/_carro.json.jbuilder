json.extract! carro, :id, :descripcion, :color, :puertas, :created_at, :updated_at
json.url carro_url(carro, format: :json)
