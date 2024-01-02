
def modp(n: int, p: int) -> int:
    """Calculates 2^n modulo p, efficiently handling large values of n."""

    if n == 0:
        return 1  # Base case: 2^0 = 1

    result = 1
    power_of_two = 2 % p  # Initialize with 2 modulo p

    while n > 0:
        if n % 2 == 1:  # If n is odd, multiply result by the current power of two
            result = (result * power_of_two) % p
        power_of_two = (power_of_two * power_of_two) % p  # Square the power of two for the next iteration
        n //= 2  # Divide n by 2

    return result
