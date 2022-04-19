//
//  HomeViewController.swift
//  Countries
//
//  Created by ismail palali on 19.04.2022.
//

import UIKit

class HomeViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    private var homeListViewModel : HomeListViewModel!
    private var countries = [Country]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //tableView.register(UINib(nibName: "homeTableCell", bundle: nil), forCellReuseIdentifier: "homeTableCell")
        tableView.register(HomeTableViewCell.nib, forCellReuseIdentifier:HomeTableViewCell.reuseIdentifier)
        loadList()
    }

    func loadList() {
        API.fetchCountryList{ [weak self] (country) in
            self?.homeListViewModel = HomeListViewModel(homeList: country)
            DispatchQueue.main.async {
                self?.tableView.reloadData()
                print(country)
            }
            
        }
    }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "HomeTableViewCell", for: indexPath) as! HomeTableViewCell
            let hmList = self.homeListViewModel.cellForRowAt(indexPath.row)
            cell.countryName.text = hmList.name
                return cell
            }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.homeListViewModel == nil ? 0 : self.homeListViewModel.numberOfRowsInSection()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailVC = DetailViewViewController()
        
        let countryVM = self.homeListViewModel.cellForRowAt(indexPath.row)
        detailVC.title = countryVM.name
        detailVC.selectCountryCode = countryVM.code
        
        let navVC = UINavigationController(rootViewController: detailVC)
        navVC.modalPresentationStyle = .fullScreen
        present(navVC, animated: true, completion: nil)
        
        
    }

}
