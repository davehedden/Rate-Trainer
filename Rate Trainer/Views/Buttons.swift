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
                .font(.system(size: 18))
                .fontWeight(.heavy)
                .shadow(color: .black, radius: 1, x: 1, y: 1.25)
        }
        .frame(width: 160, height: 120)
        .foregroundColor(.white)
    }
}

struct BigRateButton: View {
    let iconName: String
    let label: String
    let rateIconName: String
    
    
    var body: some View {
        VStack {
            Image(systemName: iconName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
                .shadow(color: .black, radius: 1, x: 1, y: 1.25)
            
            HStack {
                Text(label)
                    .font(.system(size: 18))
                    .fontWeight(.heavy)
                    .shadow(color: .black, radius: 1, x: 1, y: 1.25)
                Image(systemName: rateIconName)
                    .font(Font.system(size: 20).bold())
                    .shadow(color: .black, radius: 1, x: 1, y: 1.25)
            }
        }
        .frame(width: 160, height: 120)
        .foregroundColor(.white)
    }
}

struct BigRateButtonInactive: View {
    let iconName: String
    let label: String
    let rateIconName: String
    
    
    var body: some View {
        VStack {
            Image(systemName: iconName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            
            HStack {
                Text(label)
                    .font(.system(size: 18))
                    .fontWeight(.heavy)
                Image(systemName: rateIconName)
                    .font(Font.system(size: 20).bold())
            }
        }
        .frame(width: 160, height: 120)
        .foregroundColor(.flatGrayCAN)
    }
}

struct SmallButton: View {
    let iconName: String
    let label: String
    
    
    var body: some View {
        HStack(spacing: 5) {
            Image(systemName: iconName)
                .font(.system(size: 20))
                .shadow(color: .black, radius: 1, x: 1, y: 1.25)
                .padding(.all, 0)
            
            Text(label)
                .font(.system(size: 18))
                .fontWeight(.heavy)
                .shadow(color: .black, radius: 1, x: 1, y: 1.25)
                .padding(.all, 0)
        }
        .frame(width: 60, height: 30)
        .foregroundColor(.white)
    }
}

struct HalfTempoButton: View {
    @ObservedObject var tempoController: TempoController
    
    var body: some View {
        Button(action: {
            tempoController.halfTempo()
        }) {
            SmallButton(iconName: "divide", label: "2")
        }
        .buttonStyle(SolidButtonStyle(buttonColor: .flatYellowCAN, buttonColorPressed: .flatYellowCANHL))
        .padding(.vertical, 20)
    }
}

struct DoubleTempoButton: View {
    @ObservedObject var tempoController: TempoController
    
    var body: some View {
        Button(action: {
            tempoController.doubleTempo()
        }) {
            SmallButton(iconName: "multiply", label: "2")
        }
        .buttonStyle(SolidButtonStyle(buttonColor: .flatYellowCAN, buttonColorPressed: .flatYellowCANHL))
        .padding(.vertical, 20)
    }
}

struct RateButton: View {
    @ObservedObject var tempoController: TempoController
    
    var body: some View {
        Button(action: {
            defaults.setValue(tempoController.rateBase, forKey: K.UserDefaultKeys.rateBase)
            tempoController.tapRate()
            hapticSuccess()
        }) {
            BigRateButton(iconName: "metronome.fill", label: "TAKE RATE", rateIconName: "\(Int(tempoController.rateBase)).circle.fill")
        }
        .buttonStyle(SolidButtonStyle(buttonColor: .flatBlueCAN, buttonColorPressed: .flatBlueCANHL))
        .padding(.top, 60)
    }
}

struct RateButtonInactive: View {
    @ObservedObject var tempoController: TempoController
    
    var body: some View {
        Button(action: {
            
        }) {
            BigRateButtonInactive(iconName: "metronome.fill", label: "TAKE RATE", rateIconName: "\(Int(tempoController.rateBase)).circle.fill")
        }
        .buttonStyle(SolidButtonStyle(buttonColor: .flatSilverCAN, buttonColorPressed: .flatSilverCANHL))
        .padding(.top, 60)
    }
}

struct StopButton: View {
    @ObservedObject var tempoController: TempoController
    
    var body: some View {
        Button(action: {
            tempoController.stopBeeps()
            hapticSuccess()
        }) {
            BigButton(iconName: "stop.fill", label: "STOP BEEPS")
        }
        .buttonStyle(SolidButtonStyle(buttonColor: .flatRedCAN, buttonColorPressed: .flatRedCANHL))
        .padding(.top, 60)
    }
}

struct PlayButton: View {
    @ObservedObject var tempoController: TempoController
    
    var body: some View {
        Button(action: {
            tempoController.startBeeps()
            hapticSuccess()
        }) {
            BigButton(iconName: "play.fill", label: "PLAY BEEPS")
        }
        .buttonStyle(SolidButtonStyle(buttonColor: .flatGreenCAN, buttonColorPressed: .flatGreenCANHL))
        .padding(.top, 60)
    }
}

struct Buttons_Previews: PreviewProvider {
    static var previews: some View {
        
        VStack {
            DoubleTempoButton(tempoController: testTempoController)
            
            HalfTempoButton(tempoController: testTempoController)
            
            RateButton(tempoController: testTempoController)
            
            RateButtonInactive(tempoController: testTempoController)
            
            PlayButton(tempoController: testTempoController)
            
            StopButton(tempoController: testTempoController)
        }
        .preferredColorScheme(.dark)
        
    }
}
