# Add file limits configs - allow to open 100,000 file descriptors

```bash
cat /etc/security/limits.conf
```

```bash
echo "* hard nofile 1048576
* soft nofile 1048576" | tee –append /etc/security/limits.conf
```
