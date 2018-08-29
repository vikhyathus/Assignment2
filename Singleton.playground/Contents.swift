// Singleton

//This is basic implementation of an ATM service using singleton class
//Here one

import UIKit
import PlaygroundSupport

//Protocol
protocol Statementtype{
    func printStatement() -> String
}

class Ministatement:Statementtype{
    func printStatement() -> String {
        return "Mini statement printed"
    }
}

class Detailedstatement:Statementtype{
    func printStatement() -> String {
        return "Detailed statement printed"
    }
}

//This is a singleton class
class Statement{
    var singleInstance:Statement?
    
    private init(){

    }
    
    static func getSingleInstance() ->Statement{
        print("creating new instance!")
        return Statement()
    }
    
    public func returnStatement(type:String) -> Statementtype {
        if type == "ministatement"{
            return Ministatement()
        }
        else{
            return Detailedstatement()
        }
    }
}

//Only one instance of Statement is created and the method is called over and over again
//For every function we dont need create seperate instances
var uniqueHandler = Statement.getSingleInstance()
print(uniqueHandler.returnStatement(type: "ministatement").printStatement())




