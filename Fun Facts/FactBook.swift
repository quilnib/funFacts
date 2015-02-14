//
//  FactBook.swift
//  Fun Facts
//
//  Created by Timothy Walsh on 2/5/15.
//  Copyright (c) 2015 com.ClassicTim. All rights reserved.
//

import Foundation

struct FactBook {
    
    let factsArray = [
        "Ants stretch when they wake up in the monring.",
        "Ostriches can run faster than horses.",
        "Olympic gold medals are actually mostly made of silver.",
        "You are born with 300 bones;  by the time you are an adult you will have 206.",
        "It takes about 8 minutes for light from the Sun to reach Earch.",
        "Some bamboo plants can grow almost a meter in just one day.",
        "Some penquins can leap 2-3 meters out of the water.",
        "The state of Florida is bigger than England.",
        "On average, it takes 66 days to form a new habit",
        "Mammoths still walked the earth when the Great Pyramid was being built."
    ]
    
    func randomFact () -> String {
        var unsignedArrayCount = UInt32(factsArray.count)
        var unsignedRandomNumber = arc4random_uniform(unsignedArrayCount)
        var randomNumber = Int(unsignedRandomNumber)
        
        return factsArray[randomNumber]
    }
}
