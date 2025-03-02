//
//  main.swift
//  Delegates
//
//  Created by Ömer Faruk Dikili on 2.03.2025.
//

import Foundation


protocol SensorDelegate {
    func temperatureUpdated(to temperature: Double)
    func sensorDidTriggerAlarm()
}

protocol SensorDeviceDelegate: AnyObject {
    func temperatureDidChange(to newTemperature: Double)
    func sensorDidTriggerAlarm()
}

class TemperatureSensor {
    weak var delegate: SensorDeviceDelegate?
    private var temperature: Double = 20.0

    func simulateChanges() {
        Timer.scheduledTimer(withTimeInterval: 2.0, repeats: true) { _ in
            self.temperature += Double.random(in: -2...2)
            self.delegate?.temperatureDidChange(to: self.temperature)
            
            if self.temperature > 30 {
                self.delegate?.sensorDidTriggerAlarm()
            }
        }
    }
}

class SensorManager: SensorDeviceDelegate {
    func temperatureDidChange(to newTemperature: Double) {
        print("Yeni sıcaklık: \(newTemperature)°C")
    }
    
    func sensorDidTriggerAlarm() {
        print("ALARM! Sıcaklık çok yüksek!")
    }
}

// Kullanım
let sensor = TemperatureSensor()
let manager = SensorManager()

sensor.delegate = manager
sensor.simulateChanges()




protocol DownloadDelegate : AnyObject{
    func downloadProgress(progress:Int)
    func downloadCompleted()
}

class Downloader {
    weak var delegate : DownloadDelegate?
    
    var progress = 0
    var timer : Timer?
    
    func startDownload(){
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) {_ in
            self.progress += 25
            self.delegate?.downloadProgress(progress: self.progress)
            if self.progress >= 100{
                self.timer?.invalidate()
                self.delegate?.downloadCompleted()
            }
            
        }
    }
}

class FileManager : DownloadDelegate {
    func downloadProgress(progress: Int) {
        print("Download progress: \(progress)%")
    }
    
    func downloadCompleted() {
        print("Download completed!")
    }
}

let downloader = Downloader()
let fileManager = FileManager()
downloader.delegate = fileManager
downloader.startDownload()


protocol TeaMachineDelegate : AnyObject {
    func teaIsReady()
}

class TeaMachine {
    weak var delegate : TeaMachineDelegate?
    
    func makeTea() {
        print("Making tea...")
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.delegate?.teaIsReady()
        }
    }
}

class Person : TeaMachineDelegate {
    func teaIsReady() {
        print( "Person: Tea is ready!")
    }
}

class Robot : TeaMachineDelegate {
    func teaIsReady() {
        print("Robot: Beep boop, tea is ready!")
    }
}

let machine = TeaMachine()
let person = Person()
let robot = Robot()
person.teaIsReady( )


RunLoop.main.run()
