cd "$(find ~ -type d -name "kata-leap-years" -maxdepth 3 | head -n 1)" \
&& git add . \
&& git commit -m "Step completed : $(date '+%Y-%m-%d %H:%M:%S')" \
&& git push