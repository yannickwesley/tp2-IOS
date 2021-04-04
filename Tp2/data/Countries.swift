//
//  Countries.swift
//  Tp2
//
//  Created by MacBook on 27/03/2021.
//  Copyright © 2021 MacBook. All rights reserved.
//

import Foundation
let countries = [
  
    Country(isoCode: "at", name: "Austria", continent: "Oceany"),
    Country(isoCode: "ms", name: "Marshall", continent: "Oceany"),
    Country(isoCode: "be", name: "Belgium", continent: "Europ"),
  Country(isoCode: "de", name: "Germany", continent: "Europ"),
   Country(isoCode: "el", name: "Greece", continent: "Europ"),
    Country(isoCode: "fr", name: "France", continent: "Europ"),
    Country(isoCode: "ci", name: "Cote d'Ivoire", continent: "Afrique"),
     Country(isoCode: "gh", name: "Ghana", continent: "Afrique"),
    Country(isoCode: "ch", name: "China", continent: "Asia"),
    Country(isoCode: "jp", name: "Japan", continent: "Asia"),
    Country(isoCode: "ag", name: "Argentina", continent: "America"),
    Country(isoCode: "cb", name: "Cuba", continent: "America"),
]


let countriesByContinent = Dictionary(grouping: countries, by: { $0.continent })


