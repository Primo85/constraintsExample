//
//  FirstPresenter.swift
//  ConstraintsExample
//
//  Created by Przemyslaw Biskup on 20/11/2018.
//  Copyright © 2018 Przemyslaw Biskup. All rights reserved.
//

import UIKit

protocol FirstViewProtocol: class {
    
}

final class FirstPresenter {
    
    unowned var view: FirstViewProtocol
    
    var model: FirstModel?
    
    init(view: FirstViewProtocol) {
        self.view = view
    }
    
    
    
}

