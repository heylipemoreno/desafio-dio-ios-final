//
//  WelcomeViewController.swift
//  app-final-1
//
//  Created by Felipe Moreno on 19/10/23.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBAction func showMainScreenSegue(_ sender: Any) {
        // Instancie a Tela Principal (Tela 2) a partir do storyboard
        if let mainVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MainScreenViewController") as? MainScreenViewController {
            // Apresente a Tela Principal
            self.present(mainVC, animated: true, completion: nil)
        }
    }
}
