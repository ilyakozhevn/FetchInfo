//
//  Fetcher.swift
//  CompanyInfo
//
//  Created by Ilya Kozhevnikov on 09.08.2022.
//
import Foundation

class Fetcher {
    static func getCompanyInfo(from link: String) {
        guard let url = URL(string: link) else { return }
        
        URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data else {
                print(error?.localizedDescription ?? "No error description")
                return
            }
            
            do {
                let info = try JSONDecoder().decode(Company.self, from: data)
                print(info)
            } catch {
                print(error.localizedDescription)
            }

        }.resume()
    }
    
    static func getCurrencyInfo(from link: String) {
        guard let url = URL(string: link) else { return }
        
        URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data else {
                print(error?.localizedDescription ?? "No error description")
                return
            }
            
            do {
                let info = try JSONDecoder().decode(CurrencyData.self, from: data)
                print(info)
            } catch {
                print(error.localizedDescription)
            }

        }.resume()
    }
}
