//Each day a plant is growing by upSpeed meters. Each night that plant's height decreases by downSpeed meters due to the lack of sun heat. Initially, plant is 0 meters tall. We plant the seed at the beginning of a day. We want to know when the height of the plant will reach a certain level.
//
//Example
//For upSpeed = 100, downSpeed = 10 and desiredHeight = 910, the output should be 10.

func growingPlant(_ upSpeed: Int, _ downSpeed: Int, _ desiredHeight: Int) -> Int {
    var days = 0
    var currentHeight = 0
    while currentHeight < desiredHeight {
        currentHeight += upSpeed
        if currentHeight >= desiredHeight {
            return days + 1
        }
        currentHeight -= downSpeed
        days += 1
    }
    return days
}
