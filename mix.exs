defmodule NervesToolchainArmUnknownLinuxGnueabi.Mixfile do
  use Mix.Project

  def project do
    [app: :nerves_toolchain_arm_unknown_linux_gnueabi,
     version: "0.7.0-dev",
     elixir: "~> 1.2",
     compilers: Mix.compilers ++ [:nerves_toolchain],
     deps: deps]
  end

  def application do
    [env: [
      target_tuple: "arm-unknown-linux-gnueabi"
    ]]
  end

  defp deps do
    [{:nerves_toolchain, github: "nerves-project/nerves_toolchain"}]
  end

end
