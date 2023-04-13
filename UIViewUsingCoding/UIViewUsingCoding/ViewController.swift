//
//  ViewController.swift
//  UIViewUsingCoding
//
//  Created by Mac on 20/04/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
         addUIView()
    }
    private func addUIView(){
        let width = view.frame.width - 20
        let mainView = UIView(frame: CGRect(x: 10, y: 70, width: width, height: 250))
        mainView.layer.cornerRadius = 25
        mainView.backgroundColor = UIColor(red: 0, green: 1, blue: 0, alpha: 0.20)
        mainView.layer.borderWidth = 2
        mainView.layer.borderColor = .init(genericCMYKCyan: 0, magenta: 0, yellow: 0, black: 1, alpha: 1)
        view.addSubview(mainView)
        
        let labelWidth = mainView.frame.width / 2 - 30
        let fNameLabel = UILabel(frame: CGRect(x: 20, y: 50, width: labelWidth, height: 30))
        fNameLabel.text = "Pooja"
        fNameLabel.textAlignment = .center
        fNameLabel.backgroundColor = .cyan
        mainView.addSubview(fNameLabel)
        
        let lNameLabel = UILabel(frame: CGRect(x: 20, y: 120, width: labelWidth, height: 30))
        lNameLabel.text = "Kalamkar"
        lNameLabel.textAlignment = .center
        lNameLabel.backgroundColor = .cyan
        mainView.addSubview(lNameLabel)
        
        let widthCity = mainView.frame.width - 40
        let cityLabel = UILabel(frame: CGRect(x: 20, y: 190, width: widthCity, height: 30))
        cityLabel.text = "Ch. SambhajiNagar"
        cityLabel.textAlignment = .center
        cityLabel.backgroundColor = .gray
        mainView.addSubview(cityLabel)

        let imageView = UIImageView(frame: CGRect(x: Int(labelWidth + 30), y: 30, width: Int(labelWidth + 10), height: 140))
        imageView.image = #imageLiteral(resourceName: "pooja")
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 20
        mainView.addSubview(imageView)
        
    }

}

