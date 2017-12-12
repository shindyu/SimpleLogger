# SimpleLogger
SimpleLogger is very simple logging tool in Swift.

# Installation
```
github "shindyu/SimpleLoggeer"
```

# How to use
```
import SimpleLogger

class Sample {
 func method() {
    SimpleLogger.error(message: "message")
    // LOG_LEVEL:ERROR LOG_MESSAGE:["message"] @/~/Sample.swift:method()#5
    
    SimpleLogger.info(message: "a", "b")
    // LOG_LEVEL:INFO LOG_MESSAGE:["a", "b"] @/~/Sample.swift:method()#7
    
    SimpleLogger.debug(message: ".debug is only available in Debug Build in basically")
    // LOG_LEVEL:DEBUG LOG_MESSAGE:[".debug is only available in Debug Build in basically"] @/~/Sample.swift:method()#9
  }
}
```

# License
SimpleLogger is released under the [MIT License]( https://github.com/shindyu/SimpleLogger/blob/master/LICENSE)
