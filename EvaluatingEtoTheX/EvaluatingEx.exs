defmodule EvaluatingEx do
  def exec(),
    do:
      read_input()
      |> evaluate_cases()
      |> write_output()

  defp read_input() do
    {fl, _} =
      IO.read(:line)
      |> IO.chardata_to_string()
      |> String.trim()
      |> Float.parse()

    fl
  end

  defp evaluate_cases(n) do
    (0..trunc(n) - 1)
    |> Enum.map(fn _ -> Float.round(evaluate_10_terms(read_input()), 4) end)
  end

  defp evaluate_10_terms(n),
    do: Enum.reduce((0..9), 0.0000, fn i, acc -> acc + evaluate(n, i) end)

  defp evaluate(_, 0), do: 1.000
  defp evaluate(e, 1), do: e
  defp evaluate(e, x), do: (:math.pow(e, x)) / factorial(x)

  defp factorial(1), do: 1.0
  defp factorial(n), do: n * factorial(n - 1)

  defp write_output(n), do: Enum.join(n, "\n") |> IO.puts()
end

EvaluatingEx.exec()
