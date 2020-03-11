defmodule Solution do
  def exec() do
    read_input(nil)
  end

  defp read_input(:float),
    do:
      IO.gets("") |> parse_input(:float)

  defp read_input(:int),
    do:
      IO.gets("") |> parse_input(:int)

  defp read_input(_),
    do:
      IO.gets("") |> parse_input(nil)

  defp parse_input(input, :float),
    do:
      input
      |> String.trim()
      |> String.to_float()

  defp parse_input(input, :int),
    do:
      input
      |> String.trim()
      |> String.to_integer()

  defp parse_input(input, _),
    do:
      input
      |> String.trim()

  defp write_output(n), do: IO.puts(n)
end

Solution.exec()
