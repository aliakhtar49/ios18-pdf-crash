//
//  PDFViewController.swift
//  PdfViewCrash
//
//  Created by Ali Akhtar on 02/07/2024.
//

import Foundation
import UIKit
import PDFKit

class PDFViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Set up the PDFView
        let pdfView = PDFView(frame: self.view.bounds)
        pdfView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.view.addSubview(pdfView)
    

        // Load the PDF document from the bundle
        if let path = Bundle.main.path(forResource: "sample-five", ofType: "pdf") {
            if let pdfDocument = PDFDocument(url: URL(fileURLWithPath: path)) {
                // Set the PDF document to the PDFView
                pdfView.document = pdfDocument
            } else {
                print("Failed to create PDFDocument")
            }
        } else {
            print("Failed to find PDF file in bundle")
        }
        
        // Optional: Additional PDFView configurations
        pdfView.autoScales = true
        pdfView.displayMode = .singlePageContinuous
        pdfView.displayDirection = .vertical
    }
}
