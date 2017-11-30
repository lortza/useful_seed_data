# CANADA STATES --------------------
# Data from Nov 30, 2017 -- http://www.advertserve.com/docs/2.0/html/manual/api_reference_state.html

states = [
  {name: 'Alberta', abbv: 'AB'},
  {name: 'British Columbia', abbv: 'BC'},
  {name: 'Manitoba', abbv: 'MB'},
  {name: 'New Brunswick', abbv: 'NB'},
  {name: 'Newfoundland', abbv: 'NL'},
  {name: 'Nova Scotia', abbv: 'NS'},
  {name: 'Nunavut', abbv: 'NU'},
  {name: 'Ontario', abbv: 'ON'},
  {name: 'Prince Edward Island', abbv: 'PE'},
  {name: 'Quebec', abbv: 'QC'},
  {name: 'Saskatchewan', abbv: 'SK'},
  {name: 'Northwest Territories', abbv: 'NT'},
  {name: 'Yukon Territory', abbv: 'YT'}
]

# Customize this part for your specific table needs
states.each do |state|
  State.find_or_create_by!(abbreviation: state[:abbv] ){ |s| s.name = state[:name] }
end
