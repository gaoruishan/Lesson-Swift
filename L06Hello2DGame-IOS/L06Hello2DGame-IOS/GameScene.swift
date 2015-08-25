//
//  GameScene.swift
//  L06Hello2DGame-IOS
//
//  Created by gaoruishan on 15/8/24.
//  Copyright (c) 2015年 gaoruishan. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
      
      var gameStarted:Bool!
      var ball:SKSpriteNode!
      var startGameName:SKLabelNode!
      
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
      //设置边界
      self.physicsBody=SKPhysicsBody(edgeLoopFromRect: self.frame)
      ball = childNodeWithName("ball") as! SKSpriteNode
      startGameName = childNodeWithName("startGameName") as! SKLabelNode
      
    }
    // 默认当点击屏幕时 生成一个✈️
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent){
      
      if (gameStarted != nil){
            
      }else{
            gameStarted=true
            ball.physicsBody = SKPhysicsBody(circleOfRadius: ball.frame.size.width/2)
            startGameName.hidden = true
      }
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
