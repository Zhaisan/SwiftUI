//
//  ContentView.swift
//  SwiftUI-Calculator
//
//  Created by Zhaisan on 26.06.2021.
//

import SwiftUI

enum CalcButton: String {
    case one = "1"
    case two = "2"
    case three = "3"
    case four = "4"
    case five = "5"
    case six = "6"
    case seven = "7"
    case eight = "8"
    case nine = "9"
    case zero = "0"
    case add = "+"
    case subtract = "-"
    case divide = "/"
    case multiply = "x"
    case equal = "="
    case clear = "AC"
    case decimal = "."
    case percent = "%"
    case negative = "-/+"
    
    var buttonColor: Color{
        switch self{
        case .add, .subtract, .multiply, .divide, .equal:
            return .orange
        case .clear, .negative, .percent:
            return Color(.lightGray)
        default:
            return Color(UIColor(red: 55 / 255.0,
                                 green: 55 / 255.0,
                                 blue: 55 / 255.0,
                                 alpha: 1))
        }
    }
}

enum Operation {
    case add, subtract, multiply, divide, percent, negative, none
    
    
}
struct ContentView: View {
    
    @State var value  = "0"
    @State var runningNumber = 0
    @State var currentOperation: Operation = .none
    
    
    let buttons: [[CalcButton]] = [
        [.clear, .negative, .percent, .divide],
        [.seven, .eight, .nine, .multiply],
        [.four, .five, .six, .subtract],
        [.one, .two, .three, .add],
        [.zero, .decimal, .equal]
    ]
    
    var body: some View {
        ZStack{
            Color.black.edgesIgnoringSafeArea(.all)
            
            VStack{
                Spacer()
                // Text display
                HStack{
                    Spacer()
                    Text(value)
                        .bold()
                        .font(.system(size: 75))
                        .foregroundColor(.white)
                    
                }
                .padding()
                
                // Our buttons
                ForEach(buttons, id: \.self) { row in
                    HStack(spacing: 12){
                        ForEach(row, id: \.self) { item in
                            Button(action: {
                                self.didTap(button: item)
                            }, label: {
                                Text(item.rawValue)
                                    .font(.system(size: 32))
                                    .frame(width: self.buttonWidth(item: item),
                                           height: self.buttonHeight())
                                    .background(item.buttonColor)
                                    .foregroundColor(.white)
                                    .cornerRadius(self.buttonWidth(item: item) / 2)
                            })
                        }
                    }
                    .padding(.bottom, 3)
                }
            }
        }
    }
    
    func didTap(button: CalcButton){
        switch button{
        case .add, .subtract, .multiply, .divide, .percent, .negative, .equal:
            if button == .add {
                self.currentOperation = .add
                self.runningNumber = Int(Double(self.value) ?? 0.0)
                
            }
            else if button == .subtract {
                self.currentOperation = .subtract
                self.runningNumber = Int(Double(self.value) ?? 0.0)
            }
            else if button == .multiply {
                self.currentOperation = .multiply
                self.runningNumber = Int(Double(self.value) ?? 0.0)
            }
            else if button == .divide {
                self.currentOperation = .divide
                self.runningNumber = Int(Double(self.value) ?? 0.0)
            }
            else if button == .percent {
                self.currentOperation = .percent
                self.runningNumber = Int(Double(self.value) ?? 0.0)
            }
            else if button == .negative {
                self.currentOperation = .negative
                self.runningNumber = Int(Double(self.value) ?? 0.0)
            }
            else if button == .equal {
                let runningValue = self.runningNumber
                let currentValue = Double(self.value) ?? 0.0
                switch self.currentOperation {
                case .add: self.value = "\(Double(runningValue) + currentValue)"
                case .subtract: self.value = "\(Double(runningValue) - currentValue)"
                case .multiply: self.value = "\(Double(runningValue) * currentValue)"
                case .divide: self.value = "\(Double(runningValue) / currentValue)"
                case .percent: self.value = "\(runningValue * (Int(currentValue) / 100))"
                case .negative: self.value = "\(runningValue * (-1))"
                case .none:
                    break
                }
            }
            
            if button != .equal{
                self.value = "0"
            }
        case .clear:
            self.value = "0"
        case .decimal:
            break
        default:
            let number = button.rawValue
            if self.value == "0"{
                value = number
            }
            else{
                self.value = "\(self.value)\(number)"
            }
        }
    }
    
    func buttonWidth(item: CalcButton) -> CGFloat {
        if item == .zero{
            return ((UIScreen.main.bounds.width - (4 * 12)) / 4) * 2
        }
        return (UIScreen.main.bounds.width - (5 * 12)) / 4
    }
    
    func buttonHeight() -> CGFloat {
        return (UIScreen.main.bounds.width - (5 * 12)) / 4
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
