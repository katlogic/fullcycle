local bit = rawget(_G,"bit32") or bit
return function(power, seed)
    power = power or 31
    local mask = bit.lshift(1, power)-1
    seed = seed or math.random(mask)
    return (function(mask, state)
        if not seed then return end
        state = bit.band((state*1664525 + 1013904223), mask)
        if state == seed then seed = nil end
        return state
    end), mask, seed
end