//
//  TempoController.swift
//  Rate Trainer
//
//  Created by Dave Hedden on 1/8/21.
//

import Foundation
import AVFoundation

var defaults = UserDefaults.standard

enum TimerStatus {
    case initial
    case running
}

enum BeepRate {
    case beepPerCycle
    case beepPerPull
}

class TempoController: ObservableObject {
    // MARK: - Properties
    @Published var timerStatus: TimerStatus = .initial
    @Published var tempo = defaults.object(forKey: K.UserDefaultKeys.tempo) as? Double ?? 1.00
    @Published var rateBase = defaults.object(forKey: K.UserDefaultKeys.rateBase) as? Double ?? 3.00
    @Published var beepRate: BeepRate = .beepPerCycle
    let step = 0.01
    let range = 0.20...3.00
    var timer = Timer()
    var timeOnLastTap: TimeInterval = 0.00
    var beeper = AVAudioPlayer()
    let beepURL = URL(fileURLWithPath: Bundle.main.path(forResource: "beep.aif", ofType: nil)!)
    
    // MARK: - Methods
    func tempoUp() {
        if tempo < range.upperBound {
            if timerStatus == .running {
                timer.invalidate()
                tempo += 0.01
                startBeeps()
            } else {
                tempo += 0.01
            }
        }
    }
    
    func tempoDown() {
        if tempo > range.lowerBound {
            if timerStatus == .running {
                timer.invalidate()
                tempo -= 0.01
                startBeeps()
            } else {
                tempo -= 0.01
            }
        }
    }
    
    func doubleTempo() {
        if (tempo * 2.0) > range.upperBound {
            if timerStatus == .running {
                timer.invalidate()
                tempo = range.upperBound
                startBeeps()
            } else {
                tempo = range.upperBound
            }
        } else {
            if timerStatus == .running {
                timer.invalidate()
                tempo = (tempo * 2.0).round(toPlaces: 2)
                startBeeps()
            } else {
                tempo = (tempo * 2.0).round(toPlaces: 2)
            }
        }
    }
    
    func halfTempo() {
        if (tempo / 2.0) < range.lowerBound {
            if timerStatus == .running {
                timer.invalidate()
                tempo = range.lowerBound
                startBeeps()
            } else {
                tempo = range.lowerBound
            }
        } else {
            if timerStatus == .running {
                timer.invalidate()
                tempo = (tempo / 2.0).round(toPlaces: 2)
                startBeeps()
            } else {
                tempo = (tempo / 2.0).round(toPlaces: 2)
            }
        }
    }
    
    func playBeep() {
        do {
            beeper = try AVAudioPlayer(contentsOf: beepURL)
            beeper.play()
        } catch {
            print("Error while trying to play file, \(error)")
        }
    }
    
    func startBeeps() {
        defaults.setValue(tempo, forKey: K.UserDefaultKeys.tempo)
        timerStatus = .running
        timer = Timer.scheduledTimer(withTimeInterval: tempo, repeats: true) { _ in
            self.playBeep()
        }
    }
    
    func stopBeeps() {
        timerStatus = .initial
        timer.invalidate()
        timeOnLastTap = 0.00
    }
    
//    func tapTempo() {
//        if timeOnLastTap == 0.00 {
//            timeOnLastTap = CACurrentMediaTime()
//        } else {
//            let now = CACurrentMediaTime()
//            var tappedTempo = now - timeOnLastTap
//
//            if tappedTempo < range.lowerBound {
//                tappedTempo = range.lowerBound
//            }
//
//            if tappedTempo > range.upperBound {
//                tappedTempo = range.upperBound
//            }
//
//            tempo = tappedTempo.round(toPlaces: 2)
//            timeOnLastTap = now
//        }
//    }
    
    func tapRate() {
        /// This function is called whenever the RATE button is tapped
        
        // Check if this is the first time the rate button has been tapped since it was initialized / reset
        if timeOnLastTap == 0.00 {
            // If it is the first time being tapped, simply store the current time when the button was tapped
            timeOnLastTap = CACurrentMediaTime().truncate(toPlaces: 2)
        } else {
            // Otherwise, store the current time and calculate the seconds passed since the last time the button was tapped
            let now = CACurrentMediaTime().truncate(toPlaces: 2)
            let secondsSinceLastTap = now - timeOnLastTap
            
            // Divide the stroke rate interval by the cycle base to determine the stroke rate
            var tappedTempo = (secondsSinceLastTap / rateBase).round(toPlaces: 2)
            
            // If the stroke rate is faster than the lower bound on the allowed range, set the tempo to the lower bound
            if tappedTempo < range.lowerBound {
                tappedTempo = range.lowerBound
            }
            
            // If the stroke rate is slower than the upper bound on the allowed range, set the tempo to the upper bound
            if tappedTempo > range.upperBound {
                tappedTempo = range.upperBound
            }
            
            // Update the timestamp of when the rate button was last pressed
            tempo = tappedTempo.round(toPlaces: 2)
            timeOnLastTap = now
        }
    }
}

var testTempoController = TempoController()
