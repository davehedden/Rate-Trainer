//
//  TargetRangeView.swift
//  Rate Trainer
//
//  Created by Dave Hedden on 1/10/21.
//

import SwiftUI

struct RateRangeView: View {
    var body: some View {
        VStack {
            Text("Target Stroke Rate Ranges")
                .font(.title)
            Text("Taken from Top 8 at 2016 USA Olympic Trials")
                .font(.subheadline)
            Form {
                Section(header: Text("50 Freestyle")) {
                    HStack {
                        Text("Men")
                        Spacer()
                        Text("\(TargetRateData.Free50.Men.fastestRate.display()) - \(TargetRateData.Free50.Men.slowestRate.display())")
                    }
                    HStack {
                        Text("Women")
                        Spacer()
                        Text("\(TargetRateData.Free50.Women.fastestRate.display()) - \(TargetRateData.Free50.Women.slowestRate.display())")
                    }
                }
                
                Section(header: Text("100 Freestyle")) {
                    HStack {
                        Text("Men")
                        Spacer()
                        Text("\(TargetRateData.Free100.Men.fastestRate.display()) - \(TargetRateData.Free100.Men.slowestRate.display())")
                    }
                    HStack {
                        Text("Women")
                        Spacer()
                        Text("\(TargetRateData.Free100.Women.fastestRate.display()) - \(TargetRateData.Free100.Women.slowestRate.display())")
                    }
                }
                
                Section(header: Text("200 Freestyle")) {
                    HStack {
                        Text("Men")
                        Spacer()
                        Text("\(TargetRateData.Free200.Men.fastestRate.display()) - \(TargetRateData.Free200.Men.slowestRate.display())")
                    }
                    HStack {
                        Text("Women")
                        Spacer()
                        Text("\(TargetRateData.Free200.Women.fastestRate.display()) - \(TargetRateData.Free200.Women.slowestRate.display())")
                    }
                }
                
                Section(header: Text("400 Freestyle")) {
                    HStack {
                        Text("Men")
                        Spacer()
                        Text("\(TargetRateData.Free400.Men.fastestRate.display()) - \(TargetRateData.Free400.Men.slowestRate.display())")
                    }
                    HStack {
                        Text("Women")
                        Spacer()
                        Text("\(TargetRateData.Free400.Women.fastestRate.display()) - \(TargetRateData.Free400.Women.slowestRate.display())")
                    }
                }
                
                Section(header: Text("100 Backstroke")) {
                    HStack {
                        Text("Men")
                        Spacer()
                        Text("\(TargetRateData.Back100.Men.fastestRate.display()) - \(TargetRateData.Back100.Men.slowestRate.display())")
                    }
                    HStack {
                        Text("Women")
                        Spacer()
                        Text("\(TargetRateData.Back100.Women.fastestRate.display()) - \(TargetRateData.Back100.Women.slowestRate.display())")
                    }
                }
                
                Section(header: Text("200 Backstroke")) {
                    HStack {
                        Text("Men")
                        Spacer()
                        Text("\(TargetRateData.Back200.Men.fastestRate.display()) - \(TargetRateData.Back200.Men.slowestRate.display())")
                    }
                    HStack {
                        Text("Women")
                        Spacer()
                        Text("\(TargetRateData.Back200.Women.fastestRate.display()) - \(TargetRateData.Back200.Women.slowestRate.display())")
                    }
                }
                
                Section(header: Text("100 Breaststroke")) {
                    HStack {
                        Text("Men")
                        Spacer()
                        Text("\(TargetRateData.Breast100.Men.fastestRate.display()) - \(TargetRateData.Breast100.Men.slowestRate.display())")
                    }
                    HStack {
                        Text("Women")
                        Spacer()
                        Text("\(TargetRateData.Breast100.Women.fastestRate.display()) - \(TargetRateData.Breast100.Women.slowestRate.display())")
                    }
                }
                
                Section(header: Text("200 Breaststroke")) {
                    HStack {
                        Text("Men")
                        Spacer()
                        Text("\(TargetRateData.Breast200.Men.fastestRate.display()) - \(TargetRateData.Breast200.Men.slowestRate.display())")
                    }
                    HStack {
                        Text("Women")
                        Spacer()
                        Text("\(TargetRateData.Breast200.Women.fastestRate.display()) - \(TargetRateData.Breast200.Women.slowestRate.display())")
                    }
                }
                
                Section(header: Text("100 Butterfly")) {
                    HStack {
                        Text("Men")
                        Spacer()
                        Text("\(TargetRateData.Fly100.Men.fastestRate.display()) - \(TargetRateData.Fly100.Men.slowestRate.display())")
                    }
                    HStack {
                        Text("Women")
                        Spacer()
                        Text("\(TargetRateData.Fly100.Women.fastestRate.display()) - \(TargetRateData.Fly100.Women.slowestRate.display())")
                    }
                }
                
                Section(header: Text("200 Butterfly")) {
                    HStack {
                        Text("Men")
                        Spacer()
                        Text("\(TargetRateData.Fly200.Men.fastestRate.display()) - \(TargetRateData.Fly200.Men.slowestRate.display())")
                    }
                    HStack {
                        Text("Women")
                        Spacer()
                        Text("\(TargetRateData.Fly200.Women.fastestRate.display()) - \(TargetRateData.Fly200.Women.slowestRate.display())")
                    }
                }
                
            }
            .preferredColorScheme(.dark)
        }
    }
}

struct RateRangeView_Previews: PreviewProvider {
    static var previews: some View {
        RateRangeView()
    }
}
