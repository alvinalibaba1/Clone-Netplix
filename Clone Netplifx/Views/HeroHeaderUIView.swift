//
//  HeroHeaderUIView.swift
//  Clone Netplifx
//
//  Created by Macbook on 02/12/22.
//

import UIKit

class HeroHeaderUIView: UIView {

    
    private let downloadButton: UIButton = {
        let button = UIButton()
        button.setTitle("Download", for: .normal)
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.borderWidth = 1
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius =  5
        return button
    }()
    
    private let playButton: UIButton = {
        let button = UIButton()
        button.setTitle("Play", for: .normal)
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.borderWidth = 1
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 5
        return button
    }()
    
    private let heroImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.image = UIImage(named: "thor")
        return imageView
    }()

    
    func addGradient() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [
            UIColor.clear.cgColor,
            UIColor.systemBackground.cgColor
        ]
        gradientLayer.frame = bounds
        layer.addSublayer(gradientLayer)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(heroImageView)
        addGradient()
        addSubview(playButton)
        addSubview(downloadButton)
        applyContsraint()
    }
    
    private func applyContsraint() {
        let playButtonContraints = [
        playButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 70),
        playButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -50),
        playButton.widthAnchor.constraint(equalToConstant: 120)
        ]
        
        let downloadButtonContraints = [
            downloadButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -70),
            downloadButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -50),
            downloadButton.widthAnchor.constraint(equalToConstant: 120)
        ]
        
        NSLayoutConstraint.activate(playButtonContraints)
        NSLayoutConstraint.activate(downloadButtonContraints)
    }
    
    
   public func configure(with model: TitleViewModel) {
       guard let url = URL(string: "https://image.tmdb.org/t/p/w500/\(model.posterUrl)") else {
           return
       }
        
        heroImageView.sd_setImage(with: url ,completed: nil)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        heroImageView.frame = bounds
    }
    
    required init(coder: NSCoder) {
        fatalError()
    }
}
