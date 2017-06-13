//
//  ViewController.swift
//  ActivityIndicator
//

import UIKit

class ViewController: UIViewController {

    var activityIndicator = UIActivityIndicatorView(activityIndicatorStyle: .whiteLarge)

    override func viewDidLoad() {

        super.viewDidLoad()

        self.addActivityIndicator()

        //-- To Start Animating indicator
        activityIndicator.startAnimating()

        //-- To Stop Indicator
        //activityIndicator.stopAnimating()

        //--Hide Indicator when stop animating
        //activityIndicator.hidesWhenStopped = true

        
    }

    func addActivityIndicator() -> Void {

        activityIndicator.translatesAutoresizingMaskIntoConstraints = false

        //--Another View Style

        //activityIndicator.activityIndicatorViewStyle = .gray
        //activityIndicator.activityIndicatorViewStyle = .white
        //activityIndicator.activityIndicatorViewStyle = .whiteLarge

        //-- Can also set the indicator color
        activityIndicator.color = .green

        view.addSubview(activityIndicator)

        let horizontalConstraint = NSLayoutConstraint(item: activityIndicator, attribute: NSLayoutAttribute.centerX, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.centerX, multiplier: 1, constant: 0)
        view.addConstraint(horizontalConstraint)

        let verticalConstraint = NSLayoutConstraint(item: activityIndicator, attribute: NSLayoutAttribute.centerY, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.centerY, multiplier: 1, constant: 0)
        view.addConstraint(verticalConstraint)

    }

}

