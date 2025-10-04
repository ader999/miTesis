#!/usr/bin/env bash
nix-shell ../shell.nix --run "pdflatex $@"