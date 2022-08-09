//
//  CompanyModel.swift
//  CompanyInfo
//
//  Created by Ilya Kozhevnikov on 09.08.2022.
//

import Foundation

struct Company: Decodable {
    let name: String
    let cik: String
}

struct Currency: Decodable {
    let id: String
    let name: String
    let min_size: String
}

struct CurrencyData: Decodable {
    let data: [Currency]
}
