//
//  MyEvents.swift
//  Project
//
//  Created by admin on 01/01/2017.
//  Copyright © 2017 admin. All rights reserved.
//

import Foundation
class MyEvents{
    
    var title: String?
    var location: String?
    var noats: String?
    var time: String?
    
    
    init(_ title: String,_ location: String,_ noats: String,_ time: String) {
        self.title=title
        self.location=location
        self.noats=noats
        self.time=time 
    }

    
    
    
    init(json:Dictionary<String,String>){
        title = json["title"]!
        location = json["location"]!
        noats = json["noats"]!
        time = json["time"]!
    }
    
    func toFirebase() -> Dictionary<String,String> {
        var json = Dictionary<String,String>()
        json["title"] = title
        json["location"] = location
        json["noats"] = noats
        json["time"] = time
        return json
    }
}
