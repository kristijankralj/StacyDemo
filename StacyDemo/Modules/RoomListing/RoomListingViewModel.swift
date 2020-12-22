//
//  RoomListingViewModel.swift
//  StacyDemo
//
//  Created by Kristijan Kralj on 22/12/2020.
//

import Foundation


class RoomListingViewModel: ObservableObject {
  @Published var rooms: [Room] = roomData
}
