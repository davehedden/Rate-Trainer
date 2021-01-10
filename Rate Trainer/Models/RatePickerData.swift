//
//  RatePickerData.swift
//  Rate Trainer
//
//  Created by Dave Hedden on 1/10/21.
//

import Foundation

struct RatePickerData {
    let title: String
    let rate: Double
}

var targetRates: [RatePickerData] = [
    RatePickerData(title: "Choose Target Rate (Avg of Top 3):", rate: defaults.double(forKey: K.UserDefaultKeys.tempo)),
    RatePickerData(title: TargetRateData.Free50.Men.title, rate: TargetRateData.Free50.Men.avgTop3),
    RatePickerData(title: TargetRateData.Free50.Women.title, rate: TargetRateData.Free50.Women.avgTop3),
    RatePickerData(title: TargetRateData.Free100.Men.title, rate: TargetRateData.Free100.Men.avgTop3),
    RatePickerData(title: TargetRateData.Free100.Women.title, rate: TargetRateData.Free100.Women.avgTop3),
    RatePickerData(title: TargetRateData.Free200.Men.title, rate: TargetRateData.Free200.Men.avgTop3),
    RatePickerData(title: TargetRateData.Free200.Women.title, rate: TargetRateData.Free200.Women.avgTop3),
    RatePickerData(title: TargetRateData.Free400.Men.title, rate: TargetRateData.Free400.Men.avgTop3),
    RatePickerData(title: TargetRateData.Free400.Women.title, rate: TargetRateData.Free400.Women.avgTop3),
    RatePickerData(title: TargetRateData.Free1500.Men.title, rate: TargetRateData.Free1500.Men.avgTop3),
    RatePickerData(title: TargetRateData.Free1500.Women.title, rate: TargetRateData.Free1500.Women.avgTop3),
    RatePickerData(title: TargetRateData.Back100.Men.title, rate: TargetRateData.Back100.Men.avgTop3),
    RatePickerData(title: TargetRateData.Back100.Women.title, rate: TargetRateData.Back100.Women.avgTop3),
    RatePickerData(title: TargetRateData.Back200.Men.title, rate: TargetRateData.Back200.Men.avgTop3),
    RatePickerData(title: TargetRateData.Back200.Women.title, rate: TargetRateData.Back200.Women.avgTop3),
    RatePickerData(title: TargetRateData.Breast100.Men.title, rate: TargetRateData.Breast100.Men.avgTop3),
    RatePickerData(title: TargetRateData.Breast100.Women.title, rate: TargetRateData.Breast100.Women.avgTop3),
    RatePickerData(title: TargetRateData.Breast200.Men.title, rate: TargetRateData.Breast200.Men.avgTop3),
    RatePickerData(title: TargetRateData.Breast200.Women.title, rate: TargetRateData.Breast200.Women.avgTop3),
    RatePickerData(title: TargetRateData.Fly100.Men.title, rate: TargetRateData.Fly100.Men.avgTop3),
    RatePickerData(title: TargetRateData.Fly100.Women.title, rate: TargetRateData.Fly100.Women.avgTop3),
    RatePickerData(title: TargetRateData.Fly200.Men.title, rate: TargetRateData.Fly200.Men.avgTop3),
    RatePickerData(title: TargetRateData.Fly200.Women.title, rate: TargetRateData.Fly200.Women.avgTop3)
]
