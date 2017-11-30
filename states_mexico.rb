# MEXICO STATES --------------------
# Data from Nov 30, 2017 -- https://en.wikipedia.org/wiki/Template:Mexico_State-Abbreviation_Codes

states = [
  {name: 'Aguascalientes', conventional: 'Ags.', two_letter: 'AG', three_letter: 'AGU'},
  {name: 'Baja California', conventional: 'B.C.', two_letter: 'BC', three_letter: 'BCN'},
  {name: 'Baja California Sur', conventional: 'B.C.S.', two_letter: 'BS', three_letter: 'BCS'},
  {name: 'Campeche', conventional: 'Camp.', two_letter: 'CM', three_letter: 'CAM'},
  {name: 'Chiapas', conventional: 'Chis.', two_letter: 'CS', three_letter: 'CHP'},
  {name: 'Chihuahua', conventional: 'Chih.', two_letter: 'CH', three_letter: 'CHH'},
  {name: 'Coahuila', conventional: 'Coah.', two_letter: 'CO', three_letter: 'COA'},
  {name: 'Colima', conventional: 'Col.', two_letter: 'CL', three_letter: 'COL'},
  {name: 'Mexico City', conventional: 'CDMX', two_letter: 'DF', three_letter: 'CMX'},
  {name: 'Durango', conventional: 'Dgo.', two_letter: 'DG', three_letter: 'DUR'},
  {name: 'Guanajuato', conventional: 'Gto.', two_letter: 'GT', three_letter: 'GUA'},
  {name: 'Guerrero', conventional: 'Gro.', two_letter: 'GR', three_letter: 'GRO'},
  {name: 'Hidalgo', conventional: 'Hgo.', two_letter: 'HG', three_letter: 'HID'},
  {name: 'Jalisco', conventional: 'Jal.', two_letter: 'JA', three_letter: 'JAL'},
  {name: 'México', conventional: 'Méx.', two_letter: 'EM', three_letter: 'MEX'},
  {name: 'Michoacán', conventional: 'Mich.', two_letter: 'MI', three_letter: 'MIC'},
  {name: 'Morelos', conventional: 'Mor.', two_letter: 'MO', three_letter: 'MOR'},
  {name: 'Nayarit', conventional: 'Nay.', two_letter: 'NA', three_letter: 'NAY'},
  {name: 'Nuevo León', conventional: 'N.L.', two_letter: 'NL', three_letter: 'NLE'},
  {name: 'Oaxaca', conventional: 'Oax.', two_letter: 'OA', three_letter: 'OAX'},
  {name: 'Puebla', conventional: 'Pue.', two_letter: 'PU', three_letter: 'PUE'},
  {name: 'Querétaro', conventional: 'Qro.', two_letter: 'QT', three_letter: 'QUE'},
  {name: 'Quintana Roo', conventional: 'Q. Roo.', two_letter: 'QR', three_letter: 'ROO'},
  {name: 'San Luis Potosí', conventional: 'S.L.P.', two_letter: 'SL', three_letter: 'SLP'},
  {name: 'Sinaloa', conventional: 'Sin.', two_letter: 'SI', three_letter: 'SIN'},
  {name: 'Sonora', conventional: 'Son.', two_letter: 'SO', three_letter: 'SON'},
  {name: 'Tabasco', conventional: 'Tab.', two_letter: 'TB', three_letter: 'TAB'},
  {name: 'Tamaulipas', conventional: 'Tamps.', two_letter: 'TM', three_letter: 'TAM'},
  {name: 'Tlaxcala', conventional: 'Tlax.', two_letter: 'TL', three_letter: 'TLA'},
  {name: 'Veracruz', conventional: 'Ver.', two_letter: 'VE', three_letter: 'VER'},
  {name: 'Yucatán', conventional: 'Yuc.', two_letter: 'YU', three_letter: 'YUC'},
  {name: 'Zacatecas', conventional: 'Zac.', two_letter: 'ZA', three_letter: 'ZAC'}
]

# Customize this part for your specific table needs
states.each do |state|
  State.find_or_create_by!(abbreviation: state[:conventional] ){ |s| s.name = state[:name] }
end

# Example of a larger block if you want all of the data
states.each do |state|
  State.find_or_create_by!(abbreviation: state[:conventional] ) do |s|
    s.name = state[:name]
    s.two_letter = state[:two_letter]
    s.three_letter = state[:three_letter]
  end
end

