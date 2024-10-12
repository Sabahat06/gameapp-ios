//
//  MovieCollectionViewCell.swift
//  ios-starter-project
//
//  Created by Codesorbit on 08/10/2024.
//

import UIKit

class MovieCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var movieCellBg: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var imageTitle: UIImageView!
    
    
    func setup(with movie: Movie) {
        titleLabel.text = movie.title
        imageTitle.image = movie.image
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        movieCellBg.backgroundColor = .clear
        movieCellBg.layer.cornerRadius = 43
        movieCellBg.layer.borderWidth = 5
        movieCellBg.layer.borderColor = UIColor.white.withAlphaComponent(0.1).cgColor
    }
}
