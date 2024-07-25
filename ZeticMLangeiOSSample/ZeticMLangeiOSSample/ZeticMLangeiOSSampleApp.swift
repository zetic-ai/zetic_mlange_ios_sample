import SwiftUI
import ZeticMLange

@main
struct ZeticMLangeiOSSampleApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
    
    init() {
        do {
            let inputs: [Data] = [] // Prepare your inputs
            let model = try ZeticMLangeModel("0E468BBA6472D6DA0FE99035FFC33F143F979C112A53B15E19677BFD98E4048F")
            try model.run(inputs)
            let outputs = model.getOutputDataArray()
        } catch {
            print(error)
        }
    }
}
