//
//  CountryListDetailModel.swift
//  Countries
//
//  Created by ismail palali on 19.04.2022.
//

import Foundation

struct CountryListDetailModel: Codable {
    let data: DataClass
}

struct DataClass: Codable {
    let capital, code, callingCode: String
    let currencyCodes: [String]
    let flagImageURI: String
    let name: String
    let numRegions: Int
    let wikiDataID: String

    enum CodingKeys: String, CodingKey {
        case capital, code, callingCode, currencyCodes
        case flagImageURI = "flagImageUri"
        case name, numRegions
        case wikiDataID = "wikiDataId"
    }
}
