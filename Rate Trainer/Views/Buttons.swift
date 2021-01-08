//
//  Buttons.swift
//  Rate Trainer
//
//  Created by Dave Hedden on 1/8/21.
//

import SwiftUI

struct SolidButtonStyle: ButtonStyle {
    let buttonColor: Color
    let buttonColorPressed: Color

    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .background(configuration.isPressed ? buttonColorPressed : buttonColor)
            .cornerRadius(14)
    }
}

struct BigButton: View {
    let iconName: String
    let label: String
    
    
    var body: some View {
        VStack {
            Image(systemName: iconName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
                .shadow(color: .black, radius: 1, x: 1, y: 1.25)
            
            Text(label)
                .font(.headline)
                .fontWeight(.heavy)
                .shadow(color: .black, radius: 1, x: 1, y: 1.25)
        }
        .frame(width: 180, height: 120)
        .foregroundColor(.white)
    }
}

struct SmallButton: View {
    let iconName: String
    let label: String
    
    
    var body: some View {
        HStack {
            Image(systemName: iconName)
                .shadow(color: .black, radius: 1, x: 1, y: 1.25)
            
            Text(label)
                .font(.headline)
                .fontWeight(.heavy)
                .shadow(color: .black, radius: 1, x: 1, y: 1.25)
        }
        .frame(width: 180, height: 60)
        .foregroundColor(.white)
    }
}

struct TapButton: View {
    @ObservedObject var tempoController: TempoController
    
    var body: some View {
        Button(action: {
            tempoController.tapTempo()
        }) {
            SmallButton(iconName: "metronome.fill", label: "TAP TEMPO")
        }
        .buttonStyle(SolidButtonStyle(buttonColor: .flatYellowCAN, buttonColorPressed: .flatYellowCANHL))
        .padding(.top, 60)
    }
}

struct TapButtonInactive: View {
    var body: some View {
        Button(action: {
            
        }) {
            HStack {
                Image(systemName: "metronome.fill")
                
                Text("TAP TEMPO")
                    .font(.headline)
                    .fontWeight(.heavy)
            }
            .frame(width: 180, height: 60)
            .foregroundColor(.flatGrayCAN)
        }
        .buttonStyle(SolidButtonStyle(buttonColor: .flatSilverCAN, buttonColorPressed: .flatSilverCAN))
        .padding(.top, 60)
    }
}

struct StopButton: View {
    @ObservedObject var tempoController: TempoController
    
    var body: some View {
        Button(action: {
            tempoController.stopBeeps()
        }) {
            BigButton(iconName: "stop.fill", label: "STOP")
        }
        .buttonStyle(SolidButtonStyle(buttonColor: .flatRedCAN, buttonColorPressed: .flatRedCANHL))
        .padding(.top, 60)
    }
}

struct StartButton: View {
    @ObservedObject var tempoController: TempoController
    
    var body: some View {
        Button(action: {
            defaults.setValue(tempoController.tempo, forKey: "Tempo")
            tempoController.startBeeps()
        }) {
            BigButton(iconName: "play.fill", label: "START")
        }
        .buttonStyle(SolidButtonStyle(buttonColor: .flatGreenCAN, buttonColorPressed: .flatGreenCANHL))
        .padding(.top, 60)
    }
}

struct Buttons_Previews: PreviewProvider {
    static var previews: some View {
        
        VStack {
            TapButton(tempoController: testTempoController)
            
            TapButtonInactive()
            
            StartButton(tempoController: testTempoController)
            
            StopButton(tempoController: testTempoController)
        }
        .preferredColorScheme(.dark)
        
    }
}
