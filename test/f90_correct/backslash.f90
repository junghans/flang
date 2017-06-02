! RUN: %flang -c -Mbackslash %s
! RUN: %flang -c -fno-backslash %s
! RUN: not %flang -c -Mnobackslash %s 2>&1 | FileCheck %s
! RUN: not %flang -c -fbackslash %s 2>&1 | FileCheck %s

write (*,*) "\" ! CHECK: Unmatched quote
end
