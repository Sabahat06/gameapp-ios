//
//  Movie.swift
//  CollectionViews
//
//  Created by Emmanuel Okwara on 28/06/2020.
//  Copyright © 2020 Macco. All rights reserved.
//

import UIKit

struct Movie {
    let title: String
    let image: UIImage
}

let sportsData: [Movie] = [
    Movie(title: "Hightown", image:UIImage(imageLiteralResourceName: "collection_view_image.png")),
    Movie(title: "Penny Dreadful", image:UIImage(imageLiteralResourceName: "collection_view_image.png")),
    Movie(title: "The Bold Type", image:UIImage(imageLiteralResourceName: "collection_view_image.png")),
    Movie(title: "Blindspot", image:UIImage(imageLiteralResourceName: "collection_view_image.png")),
    Movie(title: "In the Dark", image:UIImage(imageLiteralResourceName: "collection_view_image.png")),
    Movie(title: "Doom Patrol", image:UIImage(imageLiteralResourceName: "collection_view_image.png")),
    Movie(title: "Agents of S.H.I.E.L.D", image:UIImage(imageLiteralResourceName: "collection_view_image.png")),
    Movie(title: "The 100", image:UIImage(imageLiteralResourceName: "collection_view_image.png")),
    Movie(title: "DC Legends of Tomorrow", image:UIImage(imageLiteralResourceName: "collection_view_image.png")),
    Movie(title: "Siren", image:UIImage(imageLiteralResourceName: "collection_view_image.png")),
    Movie(title: "Hightown", image:UIImage(imageLiteralResourceName: "collection_view_image.png")),
    Movie(title: "Penny Dreadful", image:UIImage(imageLiteralResourceName: "collection_view_image.png")),
    Movie(title: "The Bold Type", image:UIImage(imageLiteralResourceName: "collection_view_image.png")),
    Movie(title: "Blindspot", image:UIImage(imageLiteralResourceName: "collection_view_image.png")),
    Movie(title: "In the Dark", image:UIImage(imageLiteralResourceName: "collection_view_image.png")),
    Movie(title: "Doom Patrol", image:UIImage(imageLiteralResourceName: "collection_view_image.png")),
    Movie(title: "Agents of S.H.I.E.L.D", image:UIImage(imageLiteralResourceName: "collection_view_image.png")),
    Movie(title: "The 100", image:UIImage(imageLiteralResourceName: "collection_view_image.png")),
    Movie(title: "DC Legends of Tomorrow", image:UIImage(imageLiteralResourceName: "collection_view_image.png")),
    Movie(title: "Siren", image:UIImage(imageLiteralResourceName: "collection_view_image.png"))
]

let leaguesData: [Movie] = [
    Movie(title: "Penny Dreadful", image:UIImage(imageLiteralResourceName: "league_image.png")),
    Movie(title: "Hightown", image:UIImage(imageLiteralResourceName: "league_image.png")),
    Movie(title: "Blindspot", image:UIImage(imageLiteralResourceName: "league_image.png")),
    Movie(title: "The Bold Type", image:UIImage(imageLiteralResourceName: "league_image.png")),
    Movie(title: "Doom Patrol", image:UIImage(imageLiteralResourceName: "league_image.png")),
    Movie(title: "In the Dark", image:UIImage(imageLiteralResourceName: "league_image.png")),
    Movie(title: "Siren", image:UIImage(imageLiteralResourceName: "league_image.png")),
    Movie(title: "DC Legends of Tomorrow", image:UIImage(imageLiteralResourceName: "league_image.png")),
    Movie(title: "The 100", image:UIImage(imageLiteralResourceName: "league_image.png")),
    Movie(title: "Agents of S.H.I.E.L.D", image:UIImage(imageLiteralResourceName: "league_image.png")),
    Movie(title: "Penny Dreadful", image:UIImage(imageLiteralResourceName: "league_image.png")),
    Movie(title: "Hightown", image:UIImage(imageLiteralResourceName: "league_image.png")),
    Movie(title: "Blindspot", image:UIImage(imageLiteralResourceName: "league_image.png")),
    Movie(title: "The Bold Type", image:UIImage(imageLiteralResourceName: "league_image.png")),
    Movie(title: "Doom Patrol", image:UIImage(imageLiteralResourceName: "league_image.png")),
    Movie(title: "In the Dark", image:UIImage(imageLiteralResourceName: "league_image.png")),
    Movie(title: "Siren", image:UIImage(imageLiteralResourceName: "league_image.png")),
    Movie(title: "DC Legends of Tomorrow", image:UIImage(imageLiteralResourceName: "league_image.png")),
    Movie(title: "The 100", image:UIImage(imageLiteralResourceName: "league_image.png")),
    Movie(title: "Agents of S.H.I.E.L.D", image:UIImage(imageLiteralResourceName: "league_image.png"))
]

let teamsData: [Movie] = [
    Movie(title: "Hightown", image:UIImage(imageLiteralResourceName: "team_image.png")),
    Movie(title: "Penny Dreadful", image:UIImage(imageLiteralResourceName: "team_image.png")),
    Movie(title: "The Bold Type", image:UIImage(imageLiteralResourceName: "team_image.png")),
    Movie(title: "Blindspot", image:UIImage(imageLiteralResourceName: "team_image.png")),
    Movie(title: "In the Dark", image:UIImage(imageLiteralResourceName: "team_image.png")),
    Movie(title: "Doom Patrol", image:UIImage(imageLiteralResourceName: "team_image.png")),
    Movie(title: "Agents of S.H.I.E.L.D", image:UIImage(imageLiteralResourceName: "team_image.png")),
    Movie(title: "The 100", image:UIImage(imageLiteralResourceName: "team_image.png")),
    Movie(title: "DC Legends of Tomorrow", image:UIImage(imageLiteralResourceName: "team_image.png")),
    Movie(title: "Siren", image:UIImage(imageLiteralResourceName: "team_image.png")),
    Movie(title: "Hightown", image:UIImage(imageLiteralResourceName: "team_image.png")),
    Movie(title: "Penny Dreadful", image:UIImage(imageLiteralResourceName: "team_image.png")),
    Movie(title: "The Bold Type", image:UIImage(imageLiteralResourceName: "team_image.png")),
    Movie(title: "Blindspot", image:UIImage(imageLiteralResourceName: "team_image.png")),
    Movie(title: "In the Dark", image:UIImage(imageLiteralResourceName: "team_image.png")),
    Movie(title: "Doom Patrol", image:UIImage(imageLiteralResourceName: "team_image.png")),
    Movie(title: "Agents of S.H.I.E.L.D", image:UIImage(imageLiteralResourceName: "team_image.png")),
    Movie(title: "The 100", image:UIImage(imageLiteralResourceName: "team_image.png")),
    Movie(title: "DC Legends of Tomorrow", image:UIImage(imageLiteralResourceName: "team_image.png")),
    Movie(title: "Siren", image:UIImage(imageLiteralResourceName: "team_image.png"))
]
