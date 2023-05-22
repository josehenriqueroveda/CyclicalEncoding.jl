using CyclicalEncoding
using Test


function test_clyclical_encode()
    # Test encoding of a number in the middle of the range.
    x = 5
    min = 0
    max = 10
    sin_expected = sin(2 * pi * (x - min) / (max - min))
    cos_expected = cos(2 * pi * (x - min) / (max - min))
    @test cyclical_encode(x, min, max) == (sin_expected, cos_expected)

    # Test encoding of the minimum value.
    x = 0
    sin_expected = sin(0)
    cos_expected = cos(0)
    @test cyclical_encode(x, min, max) == (sin_expected, cos_expected)

    # Test encoding of the maximum value.
    x = 10
    sin_expected = sin(2 * pi)
    cos_expected = cos(2 * pi)
    @test cyclical_encode(x, min, max) == (sin_expected, cos_expected)

end

@testset "CyclicalEncoding tests" begin
    @testset "clyclical_encode" begin
        test_clyclical_encode()
    end
end
