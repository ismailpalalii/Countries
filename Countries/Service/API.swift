//
//  API.swift
//  Countries
//
//  Created by ismail palali on 19.04.2022.
//

import Foundation
import Alamofire

private let headers: HTTPHeaders = [
    "X-RapidAPI-Host": "wft-geo-db.p.rapidapi.com",
    "X-RapidAPI-Key": "72262ac780msh89ebee54c758e6cp1b672cjsnece3917591d3"
]
private let baseUrl = "https://wft-geo-db.p.rapidapi.com/v1/geo/countries"

class API{
    static func fetchCountryList(completionHandler: @escaping ([Country]) -> Void) {
        
        let url = "\(baseUrl)?limit=10"
        var countries = [Country]()
        
        AF.request(url, method: .get, headers: headers).responseDecodable(of: CountryListModel.self) { response in
            guard let response = response.value else { return }
            
            for i in response.data{
                countries.append(Country(name: i.name, code: i.code))
            }
            completionHandler(countries)
        }
    }
    
    static func fetchCountryDetail(code: String, completionHandler: @escaping (CountryListDetailModel) -> Void) {
        
        let url = "\(baseUrl)/\(code)"
        
        AF.request(url, method: .get, headers: headers).responseDecodable(of: CountryListDetailModel.self) { response in
            guard let response = response.value else { return }
        
            completionHandler(response)
        }
    }
}

