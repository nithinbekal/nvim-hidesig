(
  call
    method: (identifier) @sig_keyword
    block:  [(block) (do_block)]
  (#eq? @sig_keyword "sig")
) @sorbet

(
  assignment
    left: (constant)
    right: (
      call
        receiver: (constant)
        method: (identifier) @alias_identifier
        (#eq? @alias_identifier "type_alias")
    )
) @sorbet

(
  assignment
    left: (constant)
    right: (
      call
        receiver: (constant) @t_receiver
        method: (identifier) @t_let
        arguments: (
          argument_list
          "(" @t_let_lparen
          . (_) @t_let_value
          . "," @t_let_comma
          . (_) @t_let_type
          ")" @t_let_rparen
        )
        (#eq? @t_receiver "T")
        (#eq? @t_let "let")
    )
) @t_let_call
