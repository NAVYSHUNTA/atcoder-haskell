#!/bin/bash

for filename in {A..G}; do
    cp Main.hs "$filename.hs"
done

code {A..G}.hs
