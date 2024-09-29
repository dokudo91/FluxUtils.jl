using Flux, JLD2

"""
    save_model(model, filepath)

# Example
```jldoctest
model = Dense(3=>1)
save_model(model, "model.jld2")
lmodel = Dense(3=>1)
load_model!(lmodel, "model.jld2")
Flux.state(model) == Flux.state(lmodel)

# output
true
```
"""
function save_model(model, filepath)
    state = Flux.state(model) |> cpu
    jldsave(filepath; state)
end

"""
    load_model!(model, filepath)

# Example
```
model = load_model!(Dense(3=>1), "model.jld2")
```
"""
function load_model!(model, filepath)
    state = JLD2.load(filepath, "state")
    Flux.loadmodel!(model, state)
    model
end