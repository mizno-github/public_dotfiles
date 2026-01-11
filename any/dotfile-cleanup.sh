function cleanup_process {
	rm -rf ~/.claude
}

trap cleanup_process EXIT SIGHUP
