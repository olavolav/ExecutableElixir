# Tutorial for Single Executable Elixir

This is a simple exercise to create a single, dependency-free executable of an
Elixir app using [Distillery](https://github.com/bitwalker/distillery).


## Setup

To set this up, [install Elixir](https://elixir-lang.org/install.html) and then
install project dependencies:

```
mix deps.get
```

For development, we can then compile and run:

```
mix release
_build/dev/rel/executable_elixir/bin/executable_elixir foreground
```

The same in production:
```
MIX_ENV=prod mix release --executable
_build/prod/rel/executable_elixir/bin/executable_elixir.run foreground
```

Not however that in the production setting, the resulting file
`_build/prod/rel/executable_elixir/bin/executable_elixir.run` is a single
stand-alone executable, as we wanted.
