//
//  ViewController.swift
//  CompanyInfo
//
//  Created by Ilya Kozhevnikov on 09.08.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        Fetcher.getCurrencyInfo(from: "https://api.coinbase.com/v2/currencies")
        
        for link in Link.allCases {
            Fetcher.getCompanyInfo(from: link.rawValue)
        }
    }


}

