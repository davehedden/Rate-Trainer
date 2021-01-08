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

class TempoController: ObservableObject {
    // MARK: - Properties
    @Published var timerStatus: TimerStatus = .initial
    @Published var tempo = defaults.object(forKey: "Tempo") as? Double ?? 1.00
    let step = 0.01
    let range = 0.20...2.00
    var timer = Timer()
    var timeOnLastTap: TimeInterval = 0.00
    var beeper = AVAudioPlayer()
    let beepURL = URL(fileURLWithPath: Bundle.main.path(forResource: "beep.aif", ofType: nil)!)
    
    // MARK: - Methods
    func tempoUp() {
        if tempo < range.upperBound {
            tempo += 0.01
        }
    }
    
    func tempoDown() {
        if tempo > range.lowerBound {
            tempo -= 0.01
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
    
    func tapTempo() {
        if timeOnLastTap == 0.00 {
            timeOnLastTap = CACurrentMediaTime()
        } else {
            let now = CACurrentMediaTime()
            var tappedTempo = now - timeOnLastTap
            
            if tappedTempo < range.lowerBound {
                tappedTempo = range.lowerBound
            }
            
            if tappedTempo > range.upperBound {
                tappedTempo = range.upperBound
            }
            
            tempo = tappedTempo.round(toPlaces: 2)
            timeOnLastTap = now
        }
    }
}

var testTempoController = TempoController()
