if [[ "${CONDA_BUILD:-}" == "1" ]]; then
  export CLI_NO_THREAD_CONDA_BACKUP="${CLI_NO_THREAD:-}"
  export CLI_NO_THREAD=1
fi
