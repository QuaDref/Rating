//
//  ViewController.swift
//  RatingTap
//
//  Created by Admin on 20/09/2019.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ratingView: FloatRatingView!
    @IBOutlet weak var liveRating: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.ratingView.backgroundColor = UIColor.clear
        self.ratingView.delegate = self as! FloatRatingViewDelegate
        self.ratingView.contentMode = UIView.ContentMode.scaleAspectFit
        
        self.liveRating.text = String(format: "%.2f", self.ratingView.rating)
    }


}

extension ViewController: FloatRatingViewDelegate {
    func floatRatingView(_ ratingView: FloatRatingView, isUpdating rating: Double) {
        self.liveRating.text = String(format: "%.2f", self.ratingView.rating)
    }
}

