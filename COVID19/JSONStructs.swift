//
//  JSONStructs.swift
//  COVID19
//
//  Created by Dennis Zubkoff on 06.04.2020.
//  Copyright © 2020 Denis Zubkov. All rights reserved.
//

import Foundation

struct CovidElement: Codable {
    let dateInfo : Date?
    let country: String?
    let countryInfo: CountryInfo?
    let updated: Int?
    let cases: Int?
    let todayCases: Int?
    let deaths: Int?
    let todayDeaths: Int?
    let recovered: Int?
    let active: Int?
    let critical: Int?
    let casesPerOneMillion: Float?
    let deathsPerOneMillion: Float?
    let tests: Int?
    let testsPerOneMillion: Float?
}

// MARK: - CountryInfo
struct CountryInfo :Codable{
    let id: Int?
    let iso2: String?
    let iso3: String?
    let lat: Int?
    let long: Int?
    let flag: String?
}
