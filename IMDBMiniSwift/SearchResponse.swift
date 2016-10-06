//
//  SearchResponse.swift
//  AlamofireWithSwiftyJSON
//
//  Created by Chen, Wenbin on 9/15/16.
//  Copyright © 2016 Kode. All rights reserved.
//

import UIKit
import ObjectMapper
import AlamofireObjectMapper

class SearchResponse: Mappable {
    var searchArray: [Movie]?
    var searchCount: String?
    var isSuccess: String?
    
    required init?(map: Map) {
        /*
        if map["Search"].value() == nil {
            return nil
        }
        if map["totalResults"].value() == nil {
            return nil
        }
         */
    }
    
    func mapping(map: Map) {
        searchArray <- map["Search"]
        searchCount <- map["totalResults"]
        isSuccess <- map["Response"]
    }
}
