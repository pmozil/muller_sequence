#include "dec64.h"
#include "dec64_string.h"
#include "stdio.h"

static dec64 fn(dec64 a1, dec64 a2) {
    dec64 result = dec64_new(108, 0);

    dec64 snd = dec64_new(815, 0);

    dec64 thrd = dec64_new(1500, 0);
    thrd = dec64_divide(thrd, a2);

    snd = dec64_subtract(snd, thrd);
    snd = dec64_divide(snd, a1);

    return dec64_subtract(result, snd);
}

static void print_dec64(dec64 number) {
    dec64_string_state state = dec64_string_begin();
    dec64_string_char actual[64];
    dec64_to_string(state, number, actual);

    printf("%s\n", actual);
}

int main() {
    dec64 a1 = dec64_new(4, 0);
    dec64 a2 = dec64_new(425, -2);

    for (int i = 0; i < 40; i++) {
        a1 = fn(a2, a1);
        print_dec64(a1);
        a2 = fn(a1, a2);
        print_dec64(a2);
    }

    return 0;
}
