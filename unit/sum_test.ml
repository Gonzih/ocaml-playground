open OUnit2
open Sum

let test_sum trgt lst = fun _ -> assert_equal ~printer:string_of_int trgt (sum lst)

let tests = "test suite for sum" >::: [
  "empty"  >::   (test_sum 0  []);
  "one"    >::   (test_sum 1  [1]);
  "onetwo" >::   (test_sum 3  [1; 2]);
  "mulitple" >:: (test_sum 15 [1; 2; 4; 8]);
]

let _ = run_test_tt_main tests
