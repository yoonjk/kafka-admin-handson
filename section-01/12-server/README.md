# Add file limits configs - allow to open 100,000 file descriptors

OS 에서 file open 최대 개수 늘리기 
```bash
cat /etc/security/limits.conf
```

```bash
echo "* hard nofile 1048576
* soft nofile 1048576" | tee –append /etc/security/limits.conf
```

RAM Swap disable
```bash
cat /proc/sys/vm/swappiness

echo 1 > /proc/sys/vm/swappiness
```
