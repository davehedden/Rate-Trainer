//
//  ContentView.swift
//  Rate Trainer
//
//  Created by Dave Hedden on 1/8/21.
//

import SwiftUI

struct RateTrainerView: View {
    @ObservedObject var tempoController = TempoController()
    @State var isEditing = false
    
    var body: some View {
        
        VStack {
            Text(String(format: "%.2f", tempoController.tempo))
                .font(.system(size: 100))
                .fontWeight(.black)
            
            HStack(alignment: .bottom) {
                Button(action: {
                    if tempoController.timerStatus == .initial {
                        tempoController.tempoDown()
                    }
                }) {
                    Image(systemName: "minus.circle.fill")
                        .font(.system(size: 28))
                        .foregroundColor(tempoController.timerStatus == .initial ? .blue : .flatSilverCAN)
                }

                Slider(
                    value: $tempoController.tempo,
                    in: tempoController.range,
                    step: tempoController.step,
                        onEditingChanged: { editing in
                            isEditing = editing
                        }
                ) {  }
                .disabled(tempoController.timerStatus == .initial ? false : true)
                .padding(.horizontal, 10)
                
                Button(action: {
                    if tempoController.timerStatus == .initial {
                        tempoController.tempoUp()
                    }
                }) {
                    Image(systemName: "plus.circle.fill")
                        .font(.system(size: 28))
                        .foregroundColor(tempoController.timerStatus == .initial ? .blue : .flatSilverCAN)
                }
            }
            .padding(.horizontal, 20)
            .padding(.top, 60)
            
            if tempoController.timerStatus == .running {
                TapButtonInactive()
            } else {
                TapButton(tempoController: tempoController)
            }
            
            if tempoController.timerStatus == .running {
                StopButton(tempoController: tempoController)
            } else {
                StartButton(tempoController: tempoController)
            }
        }
        .preferredColorScheme(.dark)
        .onAppear {
            UIApplication.shared.isIdleTimerDisabled = true
        }
        .onDisappear {
            UIApplication.shared.isIdleTimerDisabled = false
        }
    }
}

struct RateTrainerView_Previews: PreviewProvider {
    static var previews: some View {
        RateTrainerView()
    }
}
