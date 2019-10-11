//
//  Recursion.swift
//  SearchingAndSorting
//
//  Created by Ronak Shastri on 2019-10-08.
//  Copyright © 2019 Ronak Shastri. All rights reserved.
//

import Foundation


func getFib(_ position: Int) -> Int {

    if position == 0 || position == 1 {
        return position
    }
    return getFib(position - 1) + getFib(position - 2)
}
