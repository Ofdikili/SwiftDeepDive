//
//  main.swift
//  MultiDelegates
//
//  Created by Ömer Faruk Dikili on 3.03.2025.
//
import Foundation

protocol OrderProductionDelegate: AnyObject {
    func orderStarted(orderID: String)
    func orderCompleted(orderID: String)
}

protocol OrderDeliveryDelegate: AnyObject {
    func orderReadyForDelivery(orderID: String)
    func orderDelivered(orderID: String)
}

class OrderSystem {
    weak var productionDelegate: OrderProductionDelegate?
    weak var deliveryDelegate: OrderDeliveryDelegate?
    
    func processOrder(orderID: String) {
        productionDelegate?.orderStarted(orderID: orderID)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.productionDelegate?.orderCompleted(orderID: orderID)
            self.deliveryDelegate?.orderReadyForDelivery(orderID: orderID)
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                self.deliveryDelegate?.orderDelivered(orderID: orderID)
            }
        }
    }
}

class ProductionManager: OrderProductionDelegate {
    func orderStarted(orderID: String) {
        print("Üretim başladı: \(orderID)")
    }
    
    func orderCompleted(orderID: String) {
        print("Üretim tamamlandı: \(orderID)")
    }
}

class DeliveryManager: OrderDeliveryDelegate {
    func orderReadyForDelivery(orderID: String) {
        print("Kuryeye bilgi verildi, teslimata hazırlanıyor: \(orderID)")
    }
    
    func orderDelivered(orderID: String) {
        print("Sipariş teslim edildi: \(orderID)")
    }
}

let orderSystem = OrderSystem()
let productionManager = ProductionManager()
let deliveryManager = DeliveryManager()

orderSystem.productionDelegate = productionManager
orderSystem.deliveryDelegate = deliveryManager

orderSystem.processOrder(orderID: "ORD123")

RunLoop.main.run()
