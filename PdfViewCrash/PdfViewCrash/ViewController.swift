//
//  ViewController.swift
//  PdfViewCrash
//
//  Created by Ali Akhtar on 02/07/2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func viewTapped(_ sender: Any) {
        let pdfViewController = PDFViewController()
              pdfViewController.modalPresentationStyle = .fullScreen
              self.present(pdfViewController, animated: true, completion: nil)
        
    }

}

