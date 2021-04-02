//
//  InstructionsView.swift
//  Rate Trainer
//
//  Created by Dave Hedden on 4/2/21.
//

import SwiftUI

struct InstructionsView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            GeometryReader { geo in
                ScrollView {
                    VStack(alignment: .leading) {
                        TextGroup(heading: K.Instructions.settingTempoHeading, text: K.Instructions.settingTempoInstructions)
                            .padding(.bottom, 5)
                        
                        TextGroupIndented(heading: K.Instructions.sliderHeading, text: K.Instructions.sliderInstructions)
                            .padding(.bottom, 5)
                        
                        TextGroupIndented(heading: K.Instructions.plusMinusHeading, text: K.Instructions.plusMinusInstructions)
                            .padding(.bottom, 5)
                        
                        TextGroupIndented(heading: K.Instructions.multiplyDivideHeading, text: K.Instructions.multiplyDivideInstructions)
                            .padding(.bottom, 5)
                        
                        TextGroupIndented(heading: K.Instructions.eventWheelHeading, text: K.Instructions.eventWheelInstructions)
                            .padding(.bottom, 5)
                        
                        TextGroupIndented(heading: K.Instructions.rateButtonHeading, text: K.Instructions.rateButtonInstructions)
                            .padding(.bottom, 5)
                        
                        TextGroup(heading: K.Instructions.rateHowToHeading, text: K.Instructions.rateHowToInstructions)
                            .padding(.bottom, 5)
                        
                        TextGroup(heading: K.Instructions.rateSettingsHeading, text: K.Instructions.rateSettingsInstructions)
                            .padding(.bottom, 20)
                        
                        TextGroup(heading: K.Instructions.targetRangesHeading, text: K.Instructions.targetRangesInstructions)
                            .padding(.bottom, 20)
                    }
                    .navigationBarTitle("Instructions")
                    .toolbar {
                        Button(action: {
                            self.presentationMode.wrappedValue.dismiss()
                        }) {
                            Image(systemName: "xmark.circle")
                        }
                    }
                    .padding(.horizontal, 16)
                    
                }
                .frame(width: geo.size.width)
            }
        }
        .preferredColorScheme(.dark)
    }
}

struct InstructionsView_Previews: PreviewProvider {
    static var previews: some View {
        InstructionsView()
            .preferredColorScheme(.dark)
    }
}

struct TextGroup: View {
    let heading: String
    let text: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(heading)
                .font(.headline)
            Text(text)
                .font(.system(size: 14))
        }
    }
}

struct TextGroupIndented: View {
    let heading: String
    let text: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(heading)
                .font(.system(size: 14))
                .fontWeight(.bold)
            Text(text)
                .font(.system(size: 14))
        }
        .padding(.leading, 16)
    }
}
