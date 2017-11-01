//
//  DataCenter.swift
//  PlayEntertainment
//
//  Created by 김현석 on 2017. 10. 31..
//  Copyright © 2017년 Kimhyeonseok. All rights reserved.
//

import Foundation

let fileName = "memoData.pages"

class DataCenter {
    static let sharedNoteT = DataCenter()
    
    var memoData = [String]()
    
    var filePath:String { get {
        let documentDirectory = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        return documentDirectory + fileName
        }}
    
    func save() {
        NSKeyedArchiver.archiveRootObject(self.memoData, toFile: self.filePath)
    }
}

