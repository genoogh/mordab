#!/system/bin/sh

# Performance Tweaks LITE - Service Script
# Author: @reljawa
# Version: v1.0 LITE

# Wait for system to be ready
sleep 30

# Log function
log() {
    echo "[$(date)] Performance-Tweaks LITE: $1" >> /data/local/tmp/performance_tweaks.log
}

log "Starting Performance Tweaks LITE..."

# CPU Governor optimizations
if [ -f /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor ]; then
    echo "performance" > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor 2>/dev/null
    log "CPU governor set to performance"
fi

# I/O Scheduler optimizations
for queue in /sys/block/*/queue/scheduler; do
    if [ -f "$queue" ]; then
        echo "deadline" > "$queue" 2>/dev/null
        log "I/O scheduler optimized"
    fi
done

# VM optimizations
echo "10" > /proc/sys/vm/swappiness 2>/dev/null
echo "1" > /proc/sys/vm/oom_kill_allocating_task 2>/dev/null
echo "0" > /proc/sys/vm/oom_dump_tasks 2>/dev/null

# Network optimizations
echo "1" > /proc/sys/net/ipv4/tcp_low_latency 2>/dev/null
echo "1" > /proc/sys/net/ipv4/tcp_timestamps 2>/dev/null

log "Performance Tweaks LITE applied successfully!"

# End of script