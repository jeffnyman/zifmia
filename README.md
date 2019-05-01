# Zifmia

In this repository are a series of programs, some of which are intended to exercise a Z-Machine interpreter to determine if it is functioning according to the specification. These are some programs here that were specifically designed as "testers." Other prorgrams are capable of exercising an interpreter but were not necessarily designed with that purpose in mind. These are the games.

This repository holds a series of story files, mostly in z-code format for testing by my [Quendor](http://github.com/jeffnyman/quendor) interpreter. (NOTE: Quendor is not quite up yet.) The idea is that if you are doing development on Quendor, you can clone this repo into the Quendor repo. Quendor is set to ignore the `zifmia` directory.

If you're wondering about the name of this repo, "zifmia" is one of the [spells](http://www.ifwiki.org/index.php/Spells) in the *Zork* / *Enchanter* universe and means "to magically summon a being."

---

## General Files

The `dream.blb` file is a compiled version of the game "Just a Dream". The source and resources for this game are located at [Grokking Glk](http://www.iffydoemain.com/grokglk/index.htm). This allows for testing a Blorb archive.

The `glulx_test.ulx` file is a Glulx story file. The source for this is provided in `glulx_test.inf`. This allows for testing a Glulx game. Although right now the test is only that Glulx is not supported.

The `simple_test.inf` file is a very simple test that has been compiled into a `simple_test.z5`, `simple_test.z6`, and `simple_test.z7` files. This file makes no particular use of features to any one Z-Machine so it's really just designed to compile to a few formats to make that Quendor can read in various versions.

## ZIL

The `zil_test.z3` file is a version 3 z-code file but one that was compiled via [ZILF](https://bitbucket.org/jmcgrew/zilf/wiki/Home). The source is provided as `zil_test.zil`. The fact that the format is in ZIL is not really important but it seems nice to show that a ZIL based game compiled to z-code would work.

The `cloak.z3` and `cloak_plus.z5` are files that were compiled with ZILF. Source is provided as `cloak.zil` and `cloak_plus.zil`. These, again, are just attempts to make sure that ZIL games are playable via the emulator. One of the challenges is that how ZIL compiles the Z-Machine files is different than how most other Z-Machine compilers seem to work.

## Testers

The `random.z5` file (source in `random.inf`) is an Inform randomization test, providing assorted tests for checking the performance of the interpreter's random number generator. This was written by David Griffith in 2002.

The `unicode.z5` file (source in `unicode.inf`) is a unicode test that essenetially creates assorted unicode characters. This was written by David Kinder in 2002.

The `crashme.z5` file (source in `crashme.inf`) is self-modifying reproducing z-code. Essentially the program generates random junk to see how the interpreter behaves. A good interpreter shouldn't crash except on fatal errors. This was written by Evin Robertson in 1999.

In the `czech` directory is the repository for CZECH, standing for Comprehensive Z-machine Emulation CHecker. This was written by Amir Karger and the source is included. These are a set of tests to determine whether a Z-Machine interpreter is compliant with the Z-Machine zpecification, specifically version 1.0 of the specification along with some fixes from a draft of the 1.1 specification.

In the `etude` directory is the repository for TerpETude, which is a Z-Machine interpreter exerciser. This was written by Andrew Plotkin and the source is included. This tests compliance with the Z-Machine ztandards document, version 0.99.

The 'gntests.z5' file (source in `gntests.inf`) are assorted tests for checking proper handling of fonts, accents, input codes, colors, header, and timed input. The tests conform to the the Z-Machine specification version 0.99 provided by Graham Nelson. This test is a weaker version of TerpEtude. This was originally written by Graham Nelson (hence the "gn") as a collection of sample programs and was unified by Andrew Plotkin in 1997. In fact, these tests are also included in the TerpETude repository.

The `strict.z5` file (source in `strict.inf`) is a program called StrictZ, which is a strict Z-Machine error checker. Specifically, this programs tests for strict error checking in the interpreter and was written by Torbjorn Andersson.

## Games

Anything I put up here is available both as source and compiled game file. The source comes from the [ifarchive source repo](http://ifarchive.org/indexes/if-archiveXgamesXsourceXinform.html) while the games themselves come from the [ifarchive game repo](http://ifarchive.org/indexes/if-archiveXgamesXzcode.html).

Some of these are what are called "abuses" of the Z-Machine. What that tends to mean is games that were constructed in ways that the Z-Machine really wasn't intended for, often abadoning either whole or in part the idea of an "adventure game" or a game driven by text descriptions and text parsing.

*Super Z Trek* (`ztrek.z5`, `ztrek.inf`) is a Z-Machine implementation of the classic Star Trek. Written by John Menichelli, based on Chris Nystrom C port of a BASIC version.

*Z-Life* (`z-life.z5`, `z-life.inf`) is an Inform implementation of Conway's Game of Life, by Julian Arnold.

*Hunt the Wumpus* (`wumpus.z5`, `wumpus.inf`), originally written in BASIC in 1972 by Gregory Yob, and ported to Inform by Magnus Olsson.

*Zombies* (`zombies.z5`, `zombies.inf`) is an abuse of the Z-Machine, written by David Ledgard, based on Torbjorn Andersson's game Robots.

*Wurm* (`wurm.z5`, `wurm.inf`) billed as "a blatant abuse of the Z-Machine", written by C.V.F. Knight.

*Freefall* (`freefall.z5`, `freefall.inf`) is basically an attempt to code a Tetris clone for the Z-Machine. This was written by Andrew Plotkin.

*SameGame* (`samegame.inf`, `samegame.z5`), is billed as "another episode in the Z-Machine abuse saga", written by Kevin Bracey. SameGame is an implementation of a simple arcade game and is also stated to be "a stress test of Z-Machine interpreters."

*Risorgimento Represso* written by Michael Coyne. This game was chosen because it has a z-code (`risorg.z8`), zblorb (`risorg.zblorb`), and gblorb (`risorg.glborb`) version. I have not distributed the source for the game in my repository but it is available as [risorg_src](http://ifarchive.org/if-archive/games/source/inform/risorg_src.zip).

## Advent

There is an `advent.z5` file (source in `advent.inf`) which is a remaking of the game `Colossal Cave Adventure`. This was ported to Inform 6 by Graham Nelson, based on an implementation for another system (called TADS) that was done by Dave Baggett and called "Colossal Cave Revisited".

There is also `advent.z6`. This is the same version in `advent.z5` but was recompiled as a version 6 game by Jason Penney, using an Inform library called V6Lib.

There is an `advent.z8` file which is the same game as shown in `advent.z5` and `advent.z6` but not the same implementation. This version is Don Knuth's CWEB implementation that was converted to C99 and compiled as z-code with a modified vbccz compiler by Arthur O'Dwyer.

There is an `advent.z3` file which is "Colossal Cave Adventure". This is the original 350 point version of the game. This one was ported to ZIL by Jesse McGrew, based on ealier work by Graham Nelson and Dave Baggett, with some elements of the original Fortran version restored. The ZIL source files are included in `advent.zil` and `hints.zil`.

Finally, there is `advent_crowther.z8` This one is Will Crowther's original, pre-Woods 1976 game. This version was ported to Inform 7 by Chris Conley and the source is included as `advent.ni`.

## Zorks

There are various included versions here for testing purposes.

The `minizork.z3` file is a condensed version of Zork I. This version was reduced to make it viable for the cassette-based Commodore 64. This is, in fact, the only Infocom story file ever to be intended to run from cassette rather than disk.

The `zork.z1`, `zork1.z2` and `zork3.z3` files are simply the Zork I game at different release levels for the different z-machine versions. I had to use my [Zpatchy](https://github.com/jeffnyman/zpatchy) repo to produce the version 1 and 2 files.

## Infocom

I have included various Infocom games for testing purposes. The legality of this is admittely a bit questionable as the status of these games is very unclear. The current copyright holder *should* be Activision, who acquired the rights to Infocom back in 1986. Repeated attempts at contacting their legal department gained me no information.

The Infocom games are currently freely available at many sites and through various torrents. Activision has not taken action against those even having been aware of their presence for well over a decade now.

The games I have included here were chosen because they all had some aspects that were interesting and that allowed me to consider how to test an intrepreter. `Trinity`, `Bureaucracy` and `A Mind Forever Voyaging` are version 4 games. `Beyond Zork` is a version 5 game but with a lot of specifics, like colors and various display options. `Border Zone` had some interesting things dealing with real-time interactions. `The Lurking Horror` had sounds. `Zork Zero` and `Arthur` are both version 6 games, which are really complicated to emulate.

Note that some of the games have a "blorb" (blb) file associated with them. This file is a compressed format for holding the resources of the particular game, whether that be graphic images or sound files.
