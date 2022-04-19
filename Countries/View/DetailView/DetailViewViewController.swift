//
//  DetailViewViewController.swift
//  Countries
//
//  Created by ismail palali on 19.04.2022.
//

import UIKit

class DetailViewViewController: UIViewController {
    @IBOutlet weak var countryImage: UIImageView!
    @IBOutlet weak var countryCode: UILabel!
    lazy var selectCountryCode = ""
    lazy var wikiID = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        getUI()
        getDetail()
        backButton()
        // Do any additional setup after loading the view.
    }


    func  getUI() {
        countryCode.text = "Country Code : \(selectCountryCode) "
    }
    
    func backButton() {
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "arrow.left"), style: .done, target: self, action: #selector(backHomeVC))
    }
    
    @objc func backHomeVC() {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func infoButtonTapped(_ sender: UIButton) {
        let urlString = "https://www.wikidata.org/wiki/\(wikiID)"
        if let url = URL(string: urlString) {
            UIApplication.shared.open(url, completionHandler: nil)
        }
    }
    
    func getDetail() {
        API.fetchCountryDetail(code: selectCountryCode) { [weak self] detail in
            DispatchQueue.main.async {
                let imageUrl = detail.data.flagImageURI
                let url = URL(string: imageUrl)
                self!.countryImage.downloadedsvg(from: url!)
                print(detail.data.flagImageURI)
                self?.wikiID = detail.data.wikiDataID
            }
        }
    }
}
