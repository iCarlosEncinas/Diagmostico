//
//  Variante.swift
//  dianostico-1.0
//
//  Created by Alumno on 1/17/22.
//  Copyright © 2022 Estudiate. All rights reserved.
//

import Foundation


class Variante {
    
    var lineage : String
    var earliestDate : String
    var noDesignated : String
    var noAssigned : String
    var name : String
    
    init(lineage: String, earliestDate: String, noDesignated: String, noAssigned: String, name: String) {
        self.lineage = lineage
        self.earliestDate = earliestDate
        self.noDesignated = noDesignated
        self.noAssigned = noAssigned
        self.name = name
        
    }
}
