//
//  ViewController.swift
//  Lesson2_4
//
//  Created by Ilnar on 23.11.2024.
//

import UIKit

class ViewController: UIViewController {
    lazy var logoSize: CGFloat = 63

    lazy var nameLabel: UILabel = textSet(text: "Имя Фамилия", size: 16, weight: .bold)
    
    lazy var imageName: UILabel = textSet(text: "Название фото", size: 20, weight: .bold, color: .white)
    
    lazy var titleText = textSet(text: "Заголовок", size: 20, weight: .bold)
    
    lazy var mainText: UILabel = {
        let label = textSet(
            text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore ",
            size: 16,
            weight: .light)
        label.numberOfLines = 0
        return label
    }()
    
    lazy var grayView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.backgroundColor = .systemGray4
        $0.layer.cornerRadius = 30
        // view.addSubview(eagleImage)
        return $0
    }(UIView())
    
    lazy var imageLogo: UIImageView = imageSet(imageView: .woomen, round: logoSize / 2)
    
    lazy var eagleImage: UIImageView = imageSet(imageView: .eagle, round: 30)
    
    lazy var buttonNext = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.setTitle("next", for: .normal)
        $0.backgroundColor = .systemGreen
        $0.layer.cornerRadius = 20
        return $0
    }(UIButton())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(imageLogo)
        view.addSubview(nameLabel)
        view.addSubview(grayView)
        view.addSubview(eagleImage)
        view.addSubview(imageName)
        view.addSubview(titleText)
        view.addSubview(mainText)
        view.addSubview(buttonNext)
        constreints()
    }
    
    private func textSet(text: String, size: CGFloat, weight: UIFont.Weight, color: UIColor = .black) -> UILabel {
        let label = UILabel()
        label.text = text
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: size, weight: weight)
        label.textColor = color
        return label
    }
    
    private func imageSet(imageView: UIImage, round: CGFloat) -> UIImageView {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = imageView
        image.clipsToBounds = true
        image.contentMode = .scaleAspectFill
        image.layer.cornerRadius = round
        return image
    }
    
    private func constreints() {
        NSLayoutConstraint.activate([
            imageLogo.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            imageLogo.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 30),
            imageLogo.widthAnchor.constraint(equalToConstant: logoSize),
            imageLogo.heightAnchor.constraint(equalToConstant: logoSize),
            
            nameLabel.leadingAnchor.constraint(equalTo: imageLogo.trailingAnchor, constant: 10),
            nameLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: logoSize / 2),
            
            grayView.topAnchor.constraint(equalTo: imageLogo.bottomAnchor, constant: 20),
            grayView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 12),
            grayView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -12),
            grayView.heightAnchor.constraint(equalToConstant: 489),
            
            eagleImage.topAnchor.constraint(equalTo: grayView.topAnchor, constant: 20),
            eagleImage.leadingAnchor.constraint(equalTo: grayView.leadingAnchor, constant: 20),
            eagleImage.trailingAnchor.constraint(equalTo: grayView.trailingAnchor, constant: -20),
            eagleImage.heightAnchor.constraint(equalToConstant: 239),
            
            imageName.bottomAnchor.constraint(equalTo: eagleImage.bottomAnchor, constant: -40),
            imageName.leadingAnchor.constraint(equalTo: eagleImage.leadingAnchor, constant: 20),
            
            titleText.topAnchor.constraint(equalTo: eagleImage.bottomAnchor, constant: 20),
            titleText.leadingAnchor.constraint(equalTo: grayView.leadingAnchor, constant: 40),
            
            mainText.topAnchor.constraint(equalTo: titleText.bottomAnchor, constant: 10),
            mainText.leadingAnchor.constraint(equalTo: grayView.leadingAnchor, constant: 20),
            mainText.trailingAnchor.constraint(equalTo: grayView.trailingAnchor, constant: -20),
            mainText.heightAnchor.constraint(equalToConstant: 67),
            
            buttonNext.bottomAnchor.constraint(equalTo: grayView.bottomAnchor, constant: -20),
            buttonNext.leadingAnchor.constraint(equalTo: grayView.leadingAnchor, constant: 20),
            buttonNext.trailingAnchor.constraint(equalTo: grayView.trailingAnchor, constant: -20),
            buttonNext.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}
