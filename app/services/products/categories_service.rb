module Products
  module CategoriesService
    GROUPED_OPTIONS = [
      ['Selecciona una categoria', ['Abarrotes', 'Bebés y maternidad', 'Bebidas alcoholicas', 'Cuidado personal y belleza', 'Desechables', 'Dulceria', 'Farmacia', 'Hogar', 'Mascotas', 'Papeleria']],
      ['Bebidas',["Refrescos", "Jugos", "Electrolitos"]], 
      ['Frios', ["Comida congelada", "Salchichoneria"]]
    ]

    def self.get_options
      GROUPED_OPTIONS
    end
  end
end
