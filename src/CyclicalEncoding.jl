module CyclicalEncoding

export cyclical_encode

function cyclical_encode(x::Number, min::Number, max::Number)
    """
    Encode a number in the range [min, max] as a cyclical variable.
    return: (sin, cos)
    """
    range = max - min
    return sin(2 * pi * (x - min) / range), cos(2 * pi * (x - min) / range)
end

end
