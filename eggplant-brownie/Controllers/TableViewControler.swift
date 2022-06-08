//
//  TableViewControler.swift
//  eggplant-brownie
//
//  Created by Samel PS on 06/06/22.
//  Copyright © 2022 Alura. All rights reserved.
//

import UIKit
class TableViewControler: UITableViewController, ViewControllerDelegate{
    //MARK: - Atributos
    var refeicoes = [Refeicao(nome: "Macarrao", felicidade: 4)]
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return refeicoes.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celula = UITableViewCell(style: .default, reuseIdentifier: nil)
        let refeicao = refeicoes[indexPath.row]
        celula.textLabel?.text = refeicao.nome
        return celula
    }
    func add (_ refeicao: Refeicao){
        refeicoes.append(refeicao)
        tableView.reloadData()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let viewController = segue.destination as? ViewController{
            viewController.delegate = self
        }
    }
}
