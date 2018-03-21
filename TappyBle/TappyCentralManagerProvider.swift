//
//  TappyCentralManagerProvider.swift
//  TapTrackReader
//
//  Created by David Shalaby on 2018-03-08.
//  Copyright © 2018 Papyrus Electronics Inc d/b/a TapTrack. All rights reserved.
//
/*
 * Copyright (c) 2018. Papyrus Electronics, Inc d/b/a TapTrack.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * you may obtain a copy of the License at
 *
 *        http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import Foundation
import CoreBluetooth

class TappyCentralManagerProvider {
    
    // MARK: - Properties
    
    private static var sharedTappyCentralManagerProvider: TappyCentralManagerProvider = {
        let centralManager : CBCentralManager = CBCentralManager()
        let tappyCentralManagerProvider : TappyCentralManagerProvider = TappyCentralManagerProvider(centralManager: centralManager)
        return tappyCentralManagerProvider
    }()
    
    // MARK: -
    
    public var centralManager : CBCentralManager
    
    // Initialization
    
    private init(centralManager: CBCentralManager) {
        self.centralManager = centralManager
    }
    
    // MARK: - Accessors
    
    class func shared() -> TappyCentralManagerProvider {
        return sharedTappyCentralManagerProvider
    }
    
}