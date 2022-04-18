//
//  CountryListModel.swift
//  Countries
//
//  Created by ismail palali on 19.04.2022.
//

import Foundation

struct CountryListModel: Codable {
    let data: [Datum]
    
}

struct Datum: Codable {
    let code: String
    let currencyCodes: [String]
    let name: String
    let wikiDataID: String

    enum CodingKeys: String, CodingKey {
        case code, currencyCodes, name
        case wikiDataID = "wikiDataId"
    }
}
