The issue was likely caused by a type mismatch or an unexpected behavior in the Hack compiler's handling of function calls.  The solution involves explicitly casting the values or carefully reviewing the function definitions for any potential conflicts.

Here's the corrected code:

function foo(x: int): int {  return x + 1; }

function bar(x: int): int {  return foo(x) * 2; }

function baz(x: int): int {  return bar(x) - 1; }

function main(): void {
  var x = 10;
  var y = baz(x);
  echo y; // Output: 21
}

This version explicitly defines the function types to ensure type safety and avoid unexpected behavior during function calls.