//
//  ResultViewController.swift
//  app-final-1
//
//  Created by Felipe Moreno on 19/10/23.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var backButton: UIButton!

    var brlAmount: Double = 0.00
    var exchangeRate: Double = 0.20

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    func updateUI() {
        let usdAmount = brlAmount * exchangeRate
        resultLabel.text = String(format: "%.2f USD", usdAmount)
    }

    @IBAction func backButtonTapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}
