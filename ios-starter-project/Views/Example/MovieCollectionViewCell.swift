//
//  MovieCollectionViewCell.swift
//  ios-starter-project
//
//  Created by Codesorbit on 08/10/2024.
//

import UIKit

class MovieCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var imageTitle: UIImageView!
    
    
    func setup(with movie: Movie) {
        titleLabel.text = movie.title
        imageTitle.image = movie.image
    }
}
