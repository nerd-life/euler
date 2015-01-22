use std::iter::AdditiveIterator;

fn is_divisible_to_3_or_5(num: i32) -> bool {
    num % 3 == 0 || num % 5 == 0
}

fn main() {
    let result = range(0i32, 1000).filter(|&x| is_divisible_to_3_or_5(x)).sum();
    println!("Sum is: {}", result);
}
