//
//  ViewController.swift
//  app-final-1
//
//  Created by Felipe Moreno on 19/10/23.
//

import UIKit

class MainScreenViewController: UIViewController {

    @IBOutlet weak var amountTextField: UITextField!
    @IBOutlet weak var convertButton: UIButton!

    var brlAmount: Double = 0.0

    override func viewDidLoad() {
        super.viewDidLoad()
        convertButton.addTarget(self, action: #selector(convertCurrency), for: .touchUpInside)
    }

    @objc func convertCurrency() {
        if let text = amountTextField.text, let amount = Double(text) {
            brlAmount = amount

            // Instancie a Tela de Resultado (Tela 3) a partir do storyboard
            if let resultVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ResultViewController") as? ResultViewController {
                // Configure a propriedade brlAmount na Tela de Resultado
                resultVC.brlAmount = brlAmount

                // Apresente a Tela de Resultado
                self.present(resultVC, animated: true, completion: nil)
            }
        } else {
            let alert = UIAlertController(
                title: "Erro",
                message: "Digite um valor válido para a conversão.",
                preferredStyle: .alert
            )
            let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(okAction)
            present(alert, animated: true, completion: nil)
        }
    }
}
