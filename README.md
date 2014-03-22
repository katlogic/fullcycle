Fullcycle PRNG for Lua
----------------------

The randomness distribution quality is not particularly stellar, however LCG generators
have interesting property, to demonstrate:

    $ lua -e  "for i in require('fullcycle')(3) do print(i) end"
    5
    0
    7
    2
    1
    4
    3
    6

As you can see, each random number is represented exactly once, which has number of uses
in statistics, load-balancing algorithms and the like. Note that power of 2 must be given
as upper bound for the sake of implementation simplicity (we'd have compute c and m otherwise,
to satisfy LCG invariant).

Usage
=====


    local lcg = require "fullcycle"
    -- will print 65536 numbers in random order, 12345 as rng seed
    for r in lcg(16,12345) do
        print(r)
    end


