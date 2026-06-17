# LinuxScripts
Linux scripts

## NmapParser
Order Nmap scan result by port.

```
sh NmapParser.sh scan.gnmap
```

## Resolver
Resolve a list of domains given in a file (input) and resolve their IP in output file using the host command.

```
sh Resolver.sh domains.txt resolved.txt
```

## Record
Record your screen and save the stdin/stdout to ~/records.

```
sh record.sh
```

To run it automatically when a new terminal is open, add this to bashrc or zshrc:
```
if [ -z "$TERMINAL_RECORDED" ]; then
  export TERMINAL_RECORDED=1
  exec ~/record.sh
fi
```
