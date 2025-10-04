#!/usr/bin/env bash
nix-shell ../shell.nix --run 'latexmk -pdf main.tex'