public enum Result<T> {
    case succes(data: T), error(resultError: ResultError)

    public var error: ResultError? {
        if case .error(let e) = self { // *
            return e
        } else {
            return nil
        }
    }
    
    //* Does the same thing as the following code:
    
    //    public var error: ResultError? {
    //        switch self {
    //        case .succes(_):
    //            return nil
    //        case .error(let resultError):
    //            return resultError
    //        }
    //    }
    
    // However, the current implementation would be slightly quicker.
    // It is a bit unreadable though...
    
}
