//
//  Constants.swift
//  Rate Trainer
//
//  Created by Dave Hedden on 1/10/21.
//

import Foundation

struct K {
    struct Instructions {
        static let settingTempoHeading = "Setting the Tempo"
        static let settingTempoInstructions = "There are a few ways to set the desired tempo:"
        
        static let sliderHeading = "Slider"
        static let sliderInstructions = "Use the slider to quickly set the desired tempo."
        
        static let plusMinusHeading = "Plus/Minus Buttons"
        static let plusMinusInstructions = "Use the plus and minus buttons to fine tune the tempo by 0.01."
        
        static let multiplyDivideHeading = "Multiply/Divide Buttons"
        static let multiplyDivideInstructions = "Use the yellow buttons to multiply or divide the tempo by 2. As an example, in butterfly, you can quickly change the tempo between one beep per kick vs one beep per two kicks (one full stroke cycle), or in freestyle you can quickly change the tempo between one beep per hand entry vs one beep per full stroke cycle."
        
        static let eventWheelHeading = "Event Wheel"
        static let eventWheelInstructions = "Use the event wheel to select a tempo for a particular swimming event. Data was calculated by taking the average stroke rate of the top 3 finishers in each event at the 2016 US Olympic Swimming Trials. Thanks to Russell Mark from USA Swimming for the data."
        
        static let rateButtonHeading = "Take Rate Button"
        static let rateButtonInstructions = "Use this button to set the tempo based on an athlete's current stroke rate. See instructions below on how to take stroke rates."
        
        static let rateHowToHeading = "How to Take Stroke Rates"
        static let rateHowToInstructions = "The following example will use a person swimming freestyle, and assumes the CYCLES TO COUNT setting is set to the default of 3. When the swimmer's right hand (either hand can be chosen) enters the water, you tap the RATE button. The next time the right hand enters the water (after 1 full stroke cycle), you count 1, then after the second full cycle you count 2, then on the third time the right hand enters the water you tap the RATE button again. The stopwatch will take the time interval between the last 2 times you tapped the RATE button, and divide that time interval by 3 (because the CYCLES TO COUNT setting is set to 3) to calculate the average stroke rate over the last 3 cycles. You can continue tapping the RATE button after every third full stroke cycle to repeatedly update the stroke rate."
        
        static let rateSettingsHeading = "Stroke Rate Settings"
        static let rateSettingsInstructions = "In settings, you can set the CYCLES TO COUNT to 1, 2 or 3 cycles. Set it to a lower number to get rates more quickly, and set it to a higher setting for more precision."
        
        static let targetRangesHeading = "Target Ranges Screen"
        static let targetRangesInstructions = "This screen shows the range between the fastest and slowest stroke rates for the top 8 finalists in each event at the 2016 US Olympic Swimming Trials. Thanks to Russell Mark from USA Swimming for the data."
    }
    
    struct UserDefaultKeys {
        static let rateBase = "RateBase"
        static let tempo = "Tempo"
    }
}
