def min_moves_to_good(s, c):
    n = len(s)
    if n == 1:
        return 0 if s[0] == c else 1

    half = n // 2

    count_c_first_half = sum(1 for x in s[:half] if x != c)

    next_char = chr(ord(c) + 1)
    second_half_moves = min_moves_to_good(s[half:], next_char)
    moves1 = count_c_first_half + second_half_moves
    count_c_second_half = sum(1 for x in s[half:] if x != c)

    first_half_moves = min_moves_to_good(s[:half], next_char)
    moves2 = count_c_second_half + first_half_moves

    return min(moves1, moves2)

def main():
    import sys
    inp = sys.stdin.read
    data = inp().splitlines()
    
    t = int(data[0])
    results = []
    index = 1
    for _ in range(t):
        n = int(data[index])
        s = data[index + 1]
        index += 2
        result = min_moves_to_good(s, 'a')
        results.append(result)
    
    print('\n'.join(map(str, results)))

if __name__ == "__main__":
    main()