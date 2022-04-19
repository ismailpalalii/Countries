//
//  DetailViewModel.swift
//  Countries
//
//  Created by ismail palali on 19.04.2022.
//

import Foundation

struct DetailViewModel {
    let detailCountry: CountryListDetailModel?
    
    init(detail: CountryListDetailModel) {
        detailCountry = detail
    }
    
    var imageUrl: String {
        return self.detailCountry?.data.flagImageURI ?? "imageUrl is not found"
        
    }

    var wikiID: String {
        return self.detailCountry?.data.wikiDataID ?? "wikiID is not found"
    }

    var name: String {
        return self.detailCountry?.data.name ?? "name is not found"
    }
    
    var code: String {
        return self.detailCountry?.data.code ?? "code is not found"
    }
}
