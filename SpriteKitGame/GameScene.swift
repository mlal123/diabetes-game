//
//  GameScene.swift
//  DiabetesGame
//
//  Created by Student on 2/3/17.
//  Copyright (c) 2017 Student. All rights reserved.
//

import SpriteKit

let TickLengthLevelOne = TimeInterval(600)

class GameScene: SKScene {
      
    var tick:(()->())?
    
    var tickLengthMillis = TickLengthLevelOne
    
    var lastTick:Date?
    
    
    required init(coder aDecoder: NSCoder) {
        fatalError("NSCoder not supported")
    }
    
    override init(size: CGSize) {
        super.init(size: size)
        
        anchorPoint = CGPoint(x: 0, y: 1.0)
        
        let background = SKSpriteNode(imageNamed: "background")
        
        background.position = CGPoint(x:0, y:0)
        
        background.anchorPoint = CGPoint(x:0, y:1.0)
        
        addChild(background)
    }
    
    override func update(_ currentTime: TimeInterval) {
        /* Called before each frame is rendered */
        
        guard let lastTick = lastTick else {
            
            return
            
        }
        
        let timePassed = lastTick.timeIntervalSinceNow * -1000.0
            
        if timePassed > tickLengthMillis {
            
            self.lastTick = Date()
            
            tick?()
        }
    }
    
    func startTicking() {
        
        lastTick = Date()
    }
    
    func stopTicking() {
        
        lastTick = nil
    }
}
