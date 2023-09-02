use astro_float::ctx::Context;
use astro_float::expr;
use astro_float::BigFloat;
use astro_float::Consts;
use astro_float::RoundingMode;

fn main() {
    // Create a context with precision 1024, and rounding to even.
    let mut ctx = Context::new(
        1024,
        RoundingMode::ToEven,
        Consts::new().expect("Contants cache initialized"),
    );

    // Compute pi: pi = 6*arctan(1/sqrt(3))
    let mut a1 = expr!(4, &mut ctx);
    let mut a2 = expr!(4.25, &mut ctx);

    for i in 0..50 {
        a1 = expr!(108 - (815 - 1500 / a1) / a2, &mut ctx);
        println!("{}", a1);
        a2 = expr!(108 - (815 - 1500 / a2) / a1, &mut ctx);
        println!("{}", a2);
    }
}
