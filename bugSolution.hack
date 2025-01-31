function foo(x: int): int {
  if (x < 0) {
    return 0; // Or throw an exception
  } else if (x == 0) {
    return 1;
  } else {
    return x * foo(x - 1);
  }
}

function main(): void {
  echo foo(5);
  echo foo(-3);
}

This improved version explicitly checks for negative inputs and handles them by returning 0 (or you could choose to throw an exception). This prevents the infinite recursion and makes the function more robust.