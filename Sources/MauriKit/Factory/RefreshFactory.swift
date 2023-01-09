//
//  RefreshFactory.swift
//  
//
//  Created by Mauricio Chirino on 9/1/23.
//

import UIKit

public struct RefreshFactory {
    static func assemble(text: String = "",
                         color: UIColor = .label) -> UIRefreshControl {
        let refresher = UIRefreshControl()
        refresher.translatesAutoresizingMaskIntoConstraints = false
        refresher.tintColor = color
        refresher.attributedTitle = NSAttributedString(
            string: text,
            attributes: [.foregroundColor: color, .font: UIFont.preferredFont(forTextStyle: .headline)]
        )

        return refresher
    }
}
