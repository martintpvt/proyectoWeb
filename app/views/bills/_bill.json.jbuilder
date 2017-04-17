json.extract! bill, :id, :Id_Factura, :Id_Entidad, :Id_Cliente, :NumeroFactura, :FechaEmision, :EmitidaRecibida, :IncluyeIva, :Descuento, :created_at, :updated_at
json.url bill_url(bill, format: :json)
