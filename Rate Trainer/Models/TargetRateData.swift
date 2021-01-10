//
//  RateRange.swift
//  Rate Trainer
//
//  Created by Dave Hedden on 1/10/21.
//

import Foundation

struct TargetRateData {
    struct Free50 {
        struct Men {
            static let title = "Men's 50 Free"
            static let firstPlaceRate = 1.0
            static let secondPlaceRate = 0.96
            static let thirdPlaceRate = 0.94
            static let fastestRate = 0.87
            static let slowestRate = 1.01
            
            static var avgTop3: Double {
                return ((firstPlaceRate + secondPlaceRate + thirdPlaceRate) / 3.0).round(toPlaces: 2)
            }
        }
        
        struct Women {
            static let title = "Women's 50 Free"
            static let firstPlaceRate = 0.97
            static let secondPlaceRate = 1.08
            static let thirdPlaceRate = 1.0
            static let fastestRate = 0.97
            static let slowestRate = 1.12
            
            static var avgTop3: Double {
                return ((firstPlaceRate + secondPlaceRate + thirdPlaceRate) / 3.0).round(toPlaces: 2)
            }
        }
    }
    
    struct Free100 {
        struct Men {
            static let title = "Men's 100 Free"
            static let firstPlaceRate = 1.15
            static let secondPlaceRate = 1.07
            static let thirdPlaceRate = 1.11
            static let fastestRate = 1.07
            static let slowestRate = 1.25
            
            static var avgTop3: Double {
                return ((firstPlaceRate + secondPlaceRate + thirdPlaceRate) / 3.0).round(toPlaces: 2)
            }
        }
        
        struct Women {
            static let title = "Women's 100 Free"
            static let firstPlaceRate = 1.17
            static let secondPlaceRate = 1.22
            static let thirdPlaceRate = 1.26
            static let fastestRate = 1.09
            static let slowestRate = 1.26
            
            static var avgTop3: Double {
                return ((firstPlaceRate + secondPlaceRate + thirdPlaceRate) / 3.0).round(toPlaces: 2)
            }
        }
    }
    
    struct Free200 {
        struct Men {
            static let title = "Men's 200 Free"
            static let firstPlaceRate = 1.35
            static let secondPlaceRate = 1.38
            static let thirdPlaceRate = 1.38
            static let fastestRate = 1.30
            static let slowestRate = 1.47
            
            static var avgTop3: Double {
                return ((firstPlaceRate + secondPlaceRate + thirdPlaceRate) / 3.0).round(toPlaces: 2)
            }
        }
        
        struct Women {
            static let title = "Women's 200 Free"
            static let firstPlaceRate = 1.18
            static let secondPlaceRate = 1.31
            static let thirdPlaceRate = 1.15
            static let fastestRate = 1.15
            static let slowestRate = 1.43
            
            static var avgTop3: Double {
                return ((firstPlaceRate + secondPlaceRate + thirdPlaceRate) / 3.0).round(toPlaces: 2)
            }
        }
    }
    
    struct Free400 {
        struct Men {
            static let title = "Men's 400 Free"
            static let firstPlaceRate = 1.45
            static let secondPlaceRate = 1.50
            static let thirdPlaceRate = 1.47
            static let fastestRate = 1.32
            static let slowestRate = 1.59
            
            static var avgTop3: Double {
                return ((firstPlaceRate + secondPlaceRate + thirdPlaceRate) / 3.0).round(toPlaces: 2)
            }
        }
        
        struct Women {
            static let title = "Women's 400 Free"
            static let firstPlaceRate = 1.30
            static let secondPlaceRate = 1.21
            static let thirdPlaceRate = 1.54
            static let fastestRate = 1.21
            static let slowestRate = 1.54
            
            static var avgTop3: Double {
                return ((firstPlaceRate + secondPlaceRate + thirdPlaceRate) / 3.0).round(toPlaces: 2)
            }
        }
    }
    
    struct Free1500 {
        struct Men {
            static let title = "Men's 1500 Free"
            static let firstPlaceRate = 1.59
            static let secondPlaceRate = 1.41
            static let thirdPlaceRate = 1.52
            static let fastestRate = 1.38
            static let slowestRate = 1.59
            
            static var avgTop3: Double {
                return ((firstPlaceRate + secondPlaceRate + thirdPlaceRate) / 3.0).round(toPlaces: 2)
            }
        }
        
        struct Women {
            static let title = "Women's 1500 Free"
            static let firstPlaceRate = 1.34
            static let secondPlaceRate = 1.27
            static let thirdPlaceRate = 1.25
            static let fastestRate = 1.15
            static let slowestRate = 1.57
            
            static var avgTop3: Double {
                return ((firstPlaceRate + secondPlaceRate + thirdPlaceRate) / 3.0).round(toPlaces: 2)
            }
        }
    }
    
    struct Back100 {
        struct Men {
            static let title = "Men's 100 Back"
            static let firstPlaceRate = 1.14
            static let secondPlaceRate = 1.22
            static let thirdPlaceRate = 1.34
            static let fastestRate = 1.14
            static let slowestRate = 1.34
            
            static var avgTop3: Double {
                return ((firstPlaceRate + secondPlaceRate + thirdPlaceRate) / 3.0).round(toPlaces: 2)
            }
        }
        
        struct Women {
            static let title = "Women's 100 Back"
            static let firstPlaceRate = 1.32
            static let secondPlaceRate = 1.17
            static let thirdPlaceRate = 1.32
            static let fastestRate = 1.17
            static let slowestRate = 1.42
            
            static var avgTop3: Double {
                return ((firstPlaceRate + secondPlaceRate + thirdPlaceRate) / 3.0).round(toPlaces: 2)
            }
        }
    }
    
    struct Back200 {
        struct Men {
            static let title = "Men's 200 Back"
            static let firstPlaceRate = 1.44
            static let secondPlaceRate = 1.39
            static let thirdPlaceRate = 1.31
            static let fastestRate = 1.31
            static let slowestRate = 1.44
            
            static var avgTop3: Double {
                return ((firstPlaceRate + secondPlaceRate + thirdPlaceRate) / 3.0).round(toPlaces: 2)
            }
        }
        
        struct Women {
            static let title = "Women's 200 Back"
            static let firstPlaceRate = 1.44
            static let secondPlaceRate = 1.44
            static let thirdPlaceRate = 1.49
            static let fastestRate = 1.41
            static let slowestRate = 1.53
            
            static var avgTop3: Double {
                return ((firstPlaceRate + secondPlaceRate + thirdPlaceRate) / 3.0).round(toPlaces: 2)
            }
        }
    }
    
    struct Breast100 {
        struct Men {
            static let title = "Men's 100 Breast"
            static let firstPlaceRate = 1.34
            static let secondPlaceRate = 1.33
            static let thirdPlaceRate = 1.20
            static let fastestRate = 1.18
            static let slowestRate = 1.35
            
            static var avgTop3: Double {
                return ((firstPlaceRate + secondPlaceRate + thirdPlaceRate) / 3.0).round(toPlaces: 2)
            }
        }
        
        struct Women {
            static let title = "Women's 100 Breast"
            static let firstPlaceRate = 1.06
            static let secondPlaceRate = 1.18
            static let thirdPlaceRate = 1.19
            static let fastestRate = 1.06
            static let slowestRate = 1.45
            
            static var avgTop3: Double {
                return ((firstPlaceRate + secondPlaceRate + thirdPlaceRate) / 3.0).round(toPlaces: 2)
            }
        }
    }
    
    struct Breast200 {
        struct Men {
            static let title = "Men's 200 Breast"
            static let firstPlaceRate = 1.53
            static let secondPlaceRate = 1.94
            static let thirdPlaceRate = 1.60
            static let fastestRate = 1.53
            static let slowestRate = 1.94
            
            static var avgTop3: Double {
                return ((firstPlaceRate + secondPlaceRate + thirdPlaceRate) / 3.0).round(toPlaces: 2)
            }
        }
        
        struct Women {
            static let title = "Women's 200 Breast"
            static let firstPlaceRate = 1.42
            static let secondPlaceRate = 1.58
            static let thirdPlaceRate = 1.40
            static let fastestRate = 1.40
            static let slowestRate = 1.73
            
            static var avgTop3: Double {
                return ((firstPlaceRate + secondPlaceRate + thirdPlaceRate) / 3.0).round(toPlaces: 2)
            }
        }
    }
    
    struct Fly100 {
        struct Men {
            static let title = "Men's 100 Fly"
            static let firstPlaceRate = 1.14
            static let secondPlaceRate = 1.12
            static let thirdPlaceRate = 1.13
            static let fastestRate = 1.07
            static let slowestRate = 1.16
            
            static var avgTop3: Double {
                return ((firstPlaceRate + secondPlaceRate + thirdPlaceRate) / 3.0).round(toPlaces: 2)
            }
        }
        
        struct Women {
            static let title = "Women's 100 Fly"
            static let firstPlaceRate = 1.05
            static let secondPlaceRate = 1.07
            static let thirdPlaceRate = 1.05
            static let fastestRate = 1.05
            static let slowestRate = 1.11
            
            static var avgTop3: Double {
                return ((firstPlaceRate + secondPlaceRate + thirdPlaceRate) / 3.0).round(toPlaces: 2)
            }
        }
    }
    
    struct Fly200 {
        struct Men {
            static let title = "Men's 200 Fly"
            static let firstPlaceRate = 1.23
            static let secondPlaceRate = 1.22
            static let thirdPlaceRate = 1.18
            static let fastestRate = 1.18
            static let slowestRate = 1.36
            
            static var avgTop3: Double {
                return ((firstPlaceRate + secondPlaceRate + thirdPlaceRate) / 3.0).round(toPlaces: 2)
            }
        }
        
        struct Women {
            static let title = "Women's 200 Fly"
            static let firstPlaceRate = 1.11
            static let secondPlaceRate = 1.14
            static let thirdPlaceRate = 1.16
            static let fastestRate = 1.09
            static let slowestRate = 1.21
            
            static var avgTop3: Double {
                return ((firstPlaceRate + secondPlaceRate + thirdPlaceRate) / 3.0).round(toPlaces: 2)
            }
        }
    }
}
