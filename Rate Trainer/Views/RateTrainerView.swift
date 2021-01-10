//
//  ContentView.swift
//  Rate Trainer
//
//  Created by Dave Hedden on 1/8/21.
//

import SwiftUI

struct RateTrainerView: View {
    @ObservedObject var tempoController: TempoController
    @State var isEditing = false
    @State var rateSelection = 0
    
    var body: some View {
        VStack {
            Text(String(format: "%.2f", tempoController.tempo))
                .font(.system(size: 100))
                .fontWeight(.black)
            
            HStack(alignment: .bottom) {
                Button(action: {
                    tempoController.tempoDown()
                }) {
                    Image(systemName: "minus.circle.fill")
                        .font(.system(size: 28))
                        .foregroundColor(.blue)
                }

                Slider(
                    value: $tempoController.tempo,
                    in: tempoController.range,
                    step: tempoController.step,
                        onEditingChanged: { editing in
                            isEditing = editing
                        }
                ) {  }
//                .disabled(tempoController.timerStatus == .initial ? false : true)
                .onChange(of: tempoController.tempo, perform: { value in
                    if tempoController.timerStatus == .running {
                        tempoController.timer.invalidate()
                        tempoController.tempo = value
                        tempoController.startBeeps()
                    } else {
                        tempoController.tempo = value
                    }
                })
                .padding(.horizontal, 10)
                
                Button(action: {
                    tempoController.tempoUp()
                }) {
                    Image(systemName: "plus.circle.fill")
                        .font(.system(size: 28))
                        .foregroundColor(.blue)
                }
            }
            
            HStack {
                HalfTempoButton(tempoController: tempoController)
                
                Spacer()
                
                DoubleTempoButton(tempoController: tempoController)
            }
            
            Picker(selection: $rateSelection, label: Text("Choose Target Rate:")) {
                ForEach(0..<targetRates.count) { index in
                    Text(targetRates[index].title)
                }
            }
            .frame(height: 150, alignment: .center)
            .clipped()
            .onChange(of: rateSelection, perform: { value in
                if tempoController.timerStatus == .running {
                    tempoController.timer.invalidate()
                    tempoController.tempo = targetRates[value].rate
                    tempoController.startBeeps()
                } else {
                    tempoController.tempo = targetRates[value].rate
                }
            })
            
            HStack {
                if tempoController.timerStatus == .running {
                    RateButtonInactive(tempoController: tempoController)
                } else {
                    RateButton(tempoController: tempoController)
                }
                
                Spacer()
                
                if tempoController.timerStatus == .running {
                    StopButton(tempoController: tempoController)
                } else {
                    PlayButton(tempoController: tempoController)
                }
            }
        }
        .padding(.horizontal, 20)
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
        RateTrainerView(tempoController: testTempoController)
    }
}
