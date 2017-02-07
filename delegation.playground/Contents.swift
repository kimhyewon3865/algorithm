////: Playground - noun: a place where people can play
//
//import UIKit
//
//protocol TempSensorDelegate {
//    func nowTemperature(temperature: Double)
//}
//
//class TempSensor {
//    var delegate: TempSensorDelegate?
//    
//    func temperatureChanged(temperature: Double) {
//        delegate?.nowTemperature(temperature: temperature)
//        
//    }
//}
//
//class Monitor: TempSensorDelegate {
//    var temperature: Double?
//    
//    init() {
//        temperature = 0.0
//    }
//    
//    func nowTemperature(temperature: Double) {
//        self.temperature = temperature
//        print(temperature)
//    }
//    
//    func printTemperature() {
//        print(self.temperature)
//    }
//}
//
//let tempsensor = TempSensor()
//let monitor = Monitor()
//tempsensor.delegate = monitor
//tempsensor.temperatureChanged(temperature: 1.1)
//

// MARK: - TempSensor

class TempSensor {
    
    var temp: Double = 0 {
        didSet {
            delegate?.tempDidChange(temp: temp)
        }
    }
    var delegate: TempSensorDelegate?
    
}

protocol TempSensorDelegate {
    func tempDidChange(temp: Double)
}

// MARK: - Monitor

class Monitor: TempSensorDelegate {
    
    func tempDidChange(temp: Double) {
        print("temp did change to \(temp)")
    }
    
}

////////////////////////////////////////////////////

let monitor = Monitor()
let temp = TempSensor()
temp.delegate = monitor


temp.temp = 20.3
temp.temp = 34.2
temp.temp = 23.3
temp.temp = 45.3
//
