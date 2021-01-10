//
//  TabView.swift
//  Rate Trainer
//
//  Created by Dave Hedden on 1/10/21.
//

import SwiftUI

struct ContentView: View {
    @State var tabSelection = 0
    @ObservedObject var tempoController = TempoController()
    
    var body: some View {
        TabView(selection: $tabSelection) {
            RateTrainerView(tempoController: tempoController)
                .tabItem {
                    Image(systemName: "metronome")
                    Text("Rate Trainer")
                }.tag(0)
            
            RateRangeView()
                .tabItem {
                    Image(systemName: "target")
                    Text("Target Ranges")
                }.tag(1)
            
            SettingsView(tempoController: tempoController)
                .tabItem {
                    Image(systemName: "gearshape")
                    Text("Settings")
                }.tag(2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
