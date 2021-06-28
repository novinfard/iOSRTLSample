//
//  ViewController.swift
//  RTLSample
//
//  Created by Soheil  Novinfard on 28/06/2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        imageView.image = UIImage(systemName: "pencil.circle.fill")?.imageFlippedForRightToLeftLayoutDirection()
    }
}
