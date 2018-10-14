public enum Result<T> {
    case succes(data: T), error(resultError: ResultError)

    public var error: ResultError? {
        guard case .error(let _error) = self else { // *
            return nil
        }
        
        return _error
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
