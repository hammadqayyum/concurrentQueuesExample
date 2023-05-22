import UIKit



// ******************* == Below Shows how qos works and the manner they are executed  == *********************

/*
let dispatchQueue1 = DispatchQueue(label: "Queue 1", qos: .userInteractive)
let dispatchQueue2 = DispatchQueue(label: "Queue 2", qos: .background)

dispatchQueue1.async {
    for i in 0..<5 {
        print("DispatchQueue X ", i)
    }
}

dispatchQueue2.async {
    for i in 5..<10 {
        print("DispatchQueue Y ", i)
    }
}
*/



// ******************* == Below Shows how concurrent queues works in async manner  == *********************


/*
let dispatchQueue = DispatchQueue(label: "Background", attributes: .concurrent)
print("current thread is \(Thread.current) and at the start ************************************" )
dispatchQueue.async {
    print("task 1 started & current thread is \(Thread.current)")
    for i in 0..<5 {

        print("current thread is \(Thread.current) and DispatchQueue X ", i )
    }
}

dispatchQueue.async {
    print("task 2 started & current thread is \(Thread.current)")
    for i in 5..<10 {
        print("current thread is \(Thread.current) and DispatchQueue Y ", i )
    }
}

dispatchQueue.async {
    print("task 3 started & current thread is \(Thread.current)")
    for i in 10..<15 {
        print("current thread is \(Thread.current) and DispatchQueue Z ", i )
    }
}

print("current thread is \(Thread.current) and at the end ************************************" )
*/





// ******************* == Below Shows how serial queue works in async manner   == *********************

/*
let dispatchQueue = DispatchQueue(label: "Background")
print("current thread is \(Thread.current) and at the start ************************************" )
dispatchQueue.async {
    print("task 1 started & current thread is \(Thread.current)")
    for i in 0..<5 {

        print("current thread is \(Thread.current) and DispatchQueue X ", i )
    }
}

dispatchQueue.async {
    print("task 2 started & current thread is \(Thread.current)")
    for i in 5..<10 {
        print("current thread is \(Thread.current) and DispatchQueue Y ", i )
    }
}

dispatchQueue.async {
    print("task 3 started & current thread is \(Thread.current)")
    for i in 10..<15 {
        print("current thread is \(Thread.current) and DispatchQueue Z ", i )
    }
}

print("current thread is \(Thread.current) and at the end ************************************" )
*/






// ******************* == Below Shows how concurrent queue works in sync manner   == *********************

/*
let dispatchQueue = DispatchQueue(label: "Background", attributes: .concurrent)
print("current thread is \(Thread.current) and at the start ************************************" )
dispatchQueue.sync {
    print("task 1 started & current thread is \(Thread.current)")
    for i in 0..<5 {

        print("current thread is \(Thread.current) and DispatchQueue X ", i )
    }
}

dispatchQueue.sync {
    print("task 2 started & current thread is \(Thread.current)")
    for i in 5..<10 {
        print("current thread is \(Thread.current) and DispatchQueue Y ", i )
    }
}

dispatchQueue.sync {
    print("task 3 started & current thread is \(Thread.current)")
    for i in 10..<15 {
        print("current thread is \(Thread.current) and DispatchQueue Z ", i )
    }
}

print("current thread is \(Thread.current) and at the end and is main thread: \(Thread.isMainThread) ************************************" )
*/










// ******************* == Below Shows how concurrent queue works with async+sync task   == *********************

/*
let dispatchQueue = DispatchQueue(label: "Background", attributes: .concurrent)
print("current thread is \(Thread.current) and at the start" )


dispatchQueue.async {
    print("task 1 started & current thread is \(Thread.current)")
    for i in 15..<500 {

        print("current thread is \(Thread.current) and DispatchQueue X ", i )
    }
}

dispatchQueue.sync {
    print("task 2 started & current thread is \(Thread.current)")
    for i in 5..<10 {
        print("current thread is \(Thread.current) and DispatchQueue Y ", i )
    }
}

dispatchQueue.async {
    print("task 3 started & current thread is \(Thread.current)")
    for i in 10..<15 {
        print("current thread is \(Thread.current) and DispatchQueue Z ", i )
    }
}

print("current thread is \(Thread.current) and at the end and is main thread: \(Thread.isMainThread)" )
*/
