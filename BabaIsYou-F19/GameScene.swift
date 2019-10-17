//
//  GameScene.swift
//  BabaIsYou-F19
//
//  Created by Parrot on 2019-10-17.
//  Copyright © 2019 Parrot. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene, SKPhysicsContactDelegate {
var baba = [SKSpriteNode]()
    func createbaba() -> SKSpriteNode{
        let baba = SKSpriteNode(imageNamed: "rabbit64")
        baba.anchorPoint = CGPoint(x: 0, y: 0)
        baba.size = CGSize(width: 80, height: 80)
        baba.position = CGPoint(x: 535, y: 1135.618)
        baba.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: 50, height: 50))
        baba.physicsBody?.affectedByGravity = true
        baba.physicsBody?.isDynamic = true
        baba.physicsBody?.categoryBitMask = 16
        baba.physicsBody?.collisionBitMask = 100
        baba.physicsBody?.contactTestBitMask = 28
        baba.physicsBody?.restitution = 0
        baba.physicsBody?.allowsRotation = false
        baba.name =  "rabbit64"
        return baba
    }
    override func didMove(to view: SKView) {
        self.physicsWorld.contactDelegate = self
    }
   
    func didBegin(_ contact: SKPhysicsContact) {
        print("Something collided!")
    }
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
}
