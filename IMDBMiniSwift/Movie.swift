//
//  Movie.swift
//  AlamofireWithSwiftyJSON
//
//  Created by Chen, Wenbin on 9/15/16.
//  Copyright © 2016 Kode. All rights reserved.
//

import UIKit
import ObjectMapper
import AlamofireObjectMapper


class Movie: Mappable {
    // MARK: Properties
    
    var title: String?
    var year: String?
    var id: String?
    var type: String?
    var posterUrl: String?
    
    
    required init?(map: Map) {
        /*
        if map["Title"].value() == nil {
            return nil
        }
        if map["Year"].value() == nil {
            return nil
        }
        if map["Poster"].value() == nil {
            return nil
        }
         */
    }
    
    func mapping(map: Map) {
        title <- map["Title"]
        year <- map["Year"]
        id <- map["imdbID"]
        type <- map["Type"]
        posterUrl <- map["Poster"]
    }
    
    
}
