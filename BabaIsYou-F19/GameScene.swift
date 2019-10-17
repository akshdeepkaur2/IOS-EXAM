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
    
    var ThingBlockArray = [SKSpriteNode]()
    var isBlockArray = [SKSpriteNode]()
    var ResultBlockArray = [SKSpriteNode]()
    var babaMovingLeft:Bool = false
    var babaMovingRight:Bool = false
    var babaMovingUp:Bool = false
    var babaMovingDown:Bool = false
    var MouseX:CGFloat = 0.0
    var MouseY:CGFloat = 0.0
    func createbaba() -> SKSpriteNode{
        let baba = SKSpriteNode(imageNamed: "rabbit64")
        baba.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        baba.size = CGSize(width: 64, height: 64)
        baba.position = CGPoint(x: 192, y: -128)
        baba.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: 64, height: 64))
        baba.physicsBody?.affectedByGravity = false
        baba.physicsBody?.isDynamic = true
        baba.physicsBody?.categoryBitMask = 32
        baba.physicsBody?.collisionBitMask = 4294967295
        baba.physicsBody?.contactTestBitMask = 28
        baba.physicsBody?.restitution = 0
        baba.physicsBody?.allowsRotation = false
        baba.name =  "rabbit64"
        return baba
    }
    func createwinblock() -> SKSpriteNode{
        let Win = SKSpriteNode(imageNamed: "win")
        Win.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        Win.size = CGSize(width: 64, height: 64)
    Win.position = CGPoint(x: 192, y: 192)
        Win.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: 64, height: 64))
        Win.physicsBody?.affectedByGravity = false
        Win.physicsBody?.isDynamic = true
        Win.physicsBody?.categoryBitMask = 64
        Win.physicsBody?.collisionBitMask = 32
        Win.physicsBody?.contactTestBitMask = 32
        Win.physicsBody?.restitution = 0
        Win.physicsBody?.allowsRotation = false
        Win.name = "win"
        ResultBlockArray.append(Win)
        return Win
    }
    func createwallblock() -> SKSpriteNode{
        let Wall = SKSpriteNode(imageNamed: "wallblock")
        Wall.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        Wall.size = CGSize(width: 64, height: 64)
        Wall.position = CGPoint(x: 126, y: -276.288)
        Wall.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: 64, height: 64))
        Wall.physicsBody?.affectedByGravity = false
        Wall.physicsBody?.isDynamic = true
        Wall.physicsBody?.categoryBitMask = 2
        Wall.physicsBody?.collisionBitMask = 0
        Wall.physicsBody?.contactTestBitMask = 0
        Wall.physicsBody?.restitution = 0
        Wall.physicsBody?.allowsRotation = false
        Wall.name = "wallblock"
        ThingBlockArray.append(Wall)
        return Wall
    }
    func createisblock() -> SKSpriteNode{
        let Is = SKSpriteNode(imageNamed: "isblock")
        Is.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        Is.size = CGSize(width: 64, height: 64)
        
        Is.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: 64, height: 64))
        Is.physicsBody?.affectedByGravity = false
        Is.physicsBody?.isDynamic = true
        Is.physicsBody?.categoryBitMask = 4
        Is.physicsBody?.collisionBitMask = 4294967295
        Is.physicsBody?.contactTestBitMask = 0
        Is.physicsBody?.restitution = 0
        Is.physicsBody?.allowsRotation = false
        Is.name = "isblock"
        isBlockArray.append(Is)
        return Is
    }
    func createflagblock() -> SKSpriteNode{
    let Flag = SKSpriteNode(imageNamed: "flagblock")
    Flag.anchorPoint = CGPoint(x: 0.5, y: 0.5)
    Flag.size = CGSize(width: 64, height: 64)
    Flag.position = CGPoint(x: -112, y: 128)
    Flag.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: 64, height: 64))
    Flag.physicsBody?.affectedByGravity = false
    Flag.physicsBody?.isDynamic = true
    Flag.physicsBody?.categoryBitMask = 16
    Flag.physicsBody?.collisionBitMask = 0
    Flag.physicsBody?.contactTestBitMask = 32
    Flag.physicsBody?.restitution = 0
    Flag.physicsBody?.allowsRotation = false
    Flag.name = "flagblock"
    ThingBlockArray.append(Flag)
        return Flag
        
    }
    func createstopblock() -> SKSpriteNode{
        let Stop = SKSpriteNode(imageNamed: "stopblock")
    Stop.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        Stop.size = CGSize(width: 64, height: 64)
        Stop.position = CGPoint(x: -34.612, y: -277.288)
        Stop.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: 64, height: 64))
        Stop.physicsBody?.affectedByGravity = false
        Stop.physicsBody?.isDynamic = true
        Stop.physicsBody?.categoryBitMask = 8
        Stop.physicsBody?.collisionBitMask = 32
        Stop.physicsBody?.contactTestBitMask = 32
        Stop.physicsBody?.restitution = 0
        Stop.physicsBody?.allowsRotation = false
        Stop.name = "stopblock"
        ResultBlockArray.append(Stop)
        return Stop
    }
    
    override func didMove(to view: SKView) {
       let baba = SKSpriteNode(imageNamed:"rabbit64")
        baba.position = CGPoint(x: 192, y: -128)
        addChild(baba)
        let moveBottomLeft = SKAction.move(to: CGPoint(x: 100,y: 100), duration:2.0)
        baba.run(moveBottomLeft)
        let moveRight = SKAction.moveBy(x: 50, y:0, duration:1.0)
        baba.run(moveRight)
        let moveBottom = SKAction.moveBy(x: 0, y:-100, duration:3.0)
        baba.run(moveBottom)
    }
   
    func didBegin(_ contact: SKPhysicsContact) {
        print("Something collided!")
    }
    
    override func update(_ currentTime: TimeInterval) {
        if (babaMovingUp == true) {
            
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        // get the first "tap" on the screen
        let locationtouched = touches.first
        
        if (locationtouched == nil) {
            // if for some reason the "tap" return as null, then exit
            return
        }
        let mousePosition = locationtouched!.location(in:self)
        print("mouseX = \(mousePosition.x)")
        print("mouseY = \(mousePosition.y)")
        print("-------")
        
        self.MouseX = mousePosition.x
        self.MouseY = mousePosition.y
        
        
        let touchLocation = locationtouched!.location(in: self)
        
        print("User tapped screen at: \(touchLocation.x.rounded()),\(touchLocation.y.rounded())")
        
        
    }
    
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
}
