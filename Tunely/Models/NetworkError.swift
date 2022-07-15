//
//  NetworkError.swift
//  Flix
//
//  Created by Derek Chang on 7/7/22.
//  Copyright © 2022 Derek Chang. All rights reserved.
//

import Foundation

enum NetworkError: Error {
  case requestError
  case parseError
  case invalidUrl
  case dateParseError
}
