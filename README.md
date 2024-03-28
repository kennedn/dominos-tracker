# Domino's Tracker

Shows the current status of a dominos pizza delivery. Polls every 20 seconds.

I have ordered so many damn pizzas that I've managed to reverse engineer the Dominos delivery tracker.

The purpose of this script is to liberate myself and others from the cringy pizza tracker web UI.

## Prereqs

- jq

## Usage:

```shell
./dominos-tracker.sh <Tracker URL>
```

## Example:
```shell
> ./dominos-tracker.sh https://www.dominos.co.uk/pizzatracker/?id=NTcwMjU5NzY1fDgyYjc5OTRlLTc2OTgtNDJjYS05ZGVmLTgwYjQ0OWEyYmRmYQ==
prep
```
