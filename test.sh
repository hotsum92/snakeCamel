#!/bin/bash

test "snakeCamel" = "$(echo "snake_camel" | ./snakeCamel)" || echo $LINENO
test "snakeCamel snakeCamel" = "$(echo "snake_camel snake_camel" | ./snakeCamel)" || echo $LINENO
test "camel_snake" = "$(echo "camelSnake" | ./snakeCamel)" || echo $LINENO
test "camel_snake" = "$(echo "CamelSnake" | ./snakeCamel)" || echo $LINENO
test "camel_snake camel_snake Camel_snake" = "$(echo "camelSnake camelSnake CamelSnake" | ./snakeCamel)" || echo $LINENO
