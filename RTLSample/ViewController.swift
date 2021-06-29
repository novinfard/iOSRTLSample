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

        let image = UIImage(systemName: "pencil.circle.fill")
        if self.view.effectiveUserInterfaceLayoutDirection == .rightToLeft {
            imageView.image = image?.imageFlippedForRightToLeftLayoutDirection()
        } else {
            imageView.image = image
        }
    }
}
