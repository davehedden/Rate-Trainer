//
//  SettingsView.swift
//  Rate Trainer
//
//  Created by Dave Hedden on 1/10/21.
//

import SwiftUI

struct SettingsView: View {
    @ObservedObject var tempoController: TempoController
    
    var body: some View {
        Form {
            Section(header: HStack {
                        Text("Stroke Rate Options")}, footer:
                HStack {
                    Spacer()
                    Text("Number of cycles you will count when taking a rate.")
                    Spacer()
                }) {
                HStack {
                    Text("Rate Base")
                        .multilineTextAlignment(.leading)
                    Spacer()
                    
                    Picker(selection: $tempoController.rateBase, label: Text("")) {
                        Text("1").tag(1.0)
                        Text("2").tag(2.0)
                        Text("3").tag(3.0)
                    }
                    .frame(width: 120.0)
                    .pickerStyle(SegmentedPickerStyle())
                }
            }
            
            Section(header: Text("Support"),
                    footer: HStack {
                        Spacer()
                        Text("Support is available in English only.")
                        Spacer()
                    }) {
//                Link(destination: URL(string: "https://www.apple.com")!) {
//                    HStack {
//                        Image(systemName: "star.circle")
//                            .font(.system(size: 28))
//                        Text("Rate in the App Store")
//                    }
//                }
//                Link(destination: URL(string: "https://www.apple.com")!) {
//                    HStack {
//                        Image(systemName: "dollarsign.circle")
//                            .font(.system(size: 28))
//                        Text("Make a Donation")
//                    }
//                }
                Link(destination: URL(string: "mailto:wavmaker11@gmail.com")!) {
                    HStack {
                        Image(systemName: "envelope.circle")
                            .font(.system(size: 28))
                        Text("Contact the Developer")
                    }
                }
            }
            
            Section(header: Text("About")) {
                HStack {
                    Text("Version")
                    Spacer()
                    if let version = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String {
                          Text("\(version)")
                    }
                }
            }
        }
        .preferredColorScheme(.dark)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView(tempoController: testTempoController)
    }
}
