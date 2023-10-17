defmodule Equacao do
  def equacao(a, b, c) when is_number(a) and is_number(b) and is_number(c) do
    delta = b ** 2 - 4 * a * c

    if delta < 0 do
      {:error, "Não há soluções reais"}
    elsif delta == 0 do
      {:ok, -b / (2 * a)}
    else
      x1 = (-b + :math.sqrt(delta)) / (2 * a)
      x2 = (-b - :math.sqrt(delta)) / (2 * a)
      {:ok, {x1, x2}}
    end
  end
end