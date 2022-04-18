//
//  HomeViewModel.swift
//  Countries
//
//  Created by ismail palali on 19.04.2022.
//

import Foundation

struct HomeListViewModel {
    let homeList: [Country]
    
    func numberOfRowsInSection() -> Int {
        return self.homeList.count
    }
    
    func cellForRowAt(_ index: Int) -> HomeViewModel {
        let countryList = self.homeList[index]
        return HomeViewModel(homeList: countryList)
    }
}

struct HomeViewModel {

    let homeList: Country
    
    var name: String {
        return self.homeList.name
    }
    var code: String {
        return self.homeList.code
    }
}
