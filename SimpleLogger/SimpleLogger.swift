//
//  SimpleLogger.swift
//  SimpleLogger
//
//  Created by shindyu on 2017/12/12.
//  Copyright © 2017年 shindyu. All rights reserved.
//

import Foundation

open class SimpleLogger {
    enum LogLevel: String {
        case error
        case warning
        case info
        case debug
    }

    open class func error(message: String..., file: String = #file, _ function: String = #function, line: Int = #line) {
        putLog(with: .error, message: message, file: file, function, line: line)
    }

    open class func warning(message: String..., file: String = #file, _ function: String = #function, line: Int = #line) {
        putLog(with: .warning, message: message, file: file, function, line: line)
    }

    open class func info(message: String..., file: String = #file, _ function: String = #function, line: Int = #line) {
        putLog(with: .info, message: message, file: file, function, line: line)
    }

    // debug is only use in Debug Build.
    // if you want use this other than DebugBuild,
    // set DEBUG=1 to preprocessor macro.
    open class func debug(message: String..., file: String = #file, _ function: String = #function, line: Int = #line) {
        putLog(with: .debug, message: message, file: file, function, line: line)
    }

    class func putLog(with logLevel: LogLevel, message: [String], file: String = #file, _ function: String = #function, line: Int = #line) {
        #if DEBUG
        #else
            if logLevel == .debug { return }
        #endif

        Swift.print(
            "LOG_LEVEL:\(logLevel.rawValue.uppercased())",
            "LOG_MESSAGE:\(message)",
            "@\(file):\(function)#\(line)"
        )
    }
}

