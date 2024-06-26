=====
use-001-smoke-test
=====

use file.nu

-----

(nu_script
  (decl_use
    (unquoted)))

=====
use-002-semicolon
=====

use dir/file.nu;

-----

(nu_script
  (decl_use
    (unquoted)))

=====
use-003-pipe
=====

use ('file.nu')

-----

(nu_script
  (decl_use
    module: (expr_parenthesized
      (pipeline
        (pipe_element
          (val_string))))))

=====
use-004-interpolated-string
=====

use $"('s' + 't' + 'd')"

-----

(nu_script
  (decl_use
    (val_interpolated
      (expr_interpolated
        (pipeline
          (pipe_element
            (expr_binary
              (val_string)
              (expr_binary
                (val_string)
                (val_string)))))))))
