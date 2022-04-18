//
//  Country.swift
//  Countries
//
//  Created by ismail palali on 19.04.2022.
//

import Foundation

class Country: NSObject {
    
    var name: String!
    var code: String!
    
    override init(){
    }
    
    init(name: String, code: String){
        self.name = name
        self.code = code
    }
}
