//
//  ViewController.swift
//  dianostico-1.0
//
//  Created by Alumno on 1/17/22.
//  Copyright © 2022 Estudiate. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return variantes.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaVariante") as! CeldaVarianteController
        
        celda.lblLineAge.text = variantes[indexPath.row].lineage
        celda.lblEarlistDate.text = variantes[indexPath.row].earliestDate
        celda.lblNoDesigned.text = variantes[indexPath.row].noDesignated
        celda.lblNoAssigned.text = variantes[indexPath.row].noAssigned
        celda.lblName.text = variantes[indexPath.row].name
        return celda
        
    }
    
    var variantes : [Variante] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        variantes.append(Variante(lineage: "A",earliestDate: "30/12/19",noDesignated: "1698",noAssigned: "2293",name: ""))
        variantes.append(Variante(lineage: "A.1",earliestDate: "22/02/20",noDesignated: "2699",noAssigned: "3026",name: ""))
        variantes.append(Variante(lineage: "A.2",earliestDate: "17/02/20",noDesignated: "1107",noAssigned: "1283",name: ""))
        variantes.append(Variante(lineage: "A.2.2",earliestDate: "17/03/20",noDesignated: "473",noAssigned: "550",name: ""))
        variantes.append(Variante(lineage: "A.2.3",earliestDate: "12/03/20",noDesignated: "167",noAssigned: "201",name: ""))
        variantes.append(Variante(lineage: "A.2.4",earliestDate: "04/02/20",noDesignated: "110",noAssigned: "243",name: ""))
        variantes.append(Variante(lineage: "A.2.5",earliestDate: "15/04/20",noDesignated: "1028",noAssigned: "1936",name: ""))
        variantes.append(Variante(lineage: "A.2.5.1",earliestDate: "14/04/20",noDesignated: "135",noAssigned: "299",name: ""))
        variantes.append(Variante(lineage: "A.2.5.2",earliestDate: "12/04/20",noDesignated: "260",noAssigned: "1016",name: ""))

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

