//
// This is only a SKELETON file for the 'Resistor Color Duo' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

export const value = (args) => {
  return parseInt(`${COLORS.indexOf(args[0])}${COLORS.indexOf(args[1])}`, 10)
};

export const COLORS = [
  'black',
  'brown',
  'red',
  'orange',
  'yellow',
  'green',
  'blue',
  'violet',
  'grey',
  'white'
]
