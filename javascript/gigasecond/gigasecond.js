//
// This is only a SKELETON file for the 'Gigasecond' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

const gigasecond_value = 1000000000

export const gigasecond = (args) => {
    var resultTime = new Date(args.getTime())
    resultTime.setSeconds(resultTime.getSeconds() + gigasecond_value)
    return resultTime
};
