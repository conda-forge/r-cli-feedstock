if [[ "${CONDA_BUILD:-}" == "1" ]]; then
    export CLI_NO_THREAD=${CLI_NO_THREAD_CONDA_BACKUP:-}
    unset CLI_NO_THREAD_CONDA_BACKUP
    if [ -z $CLI_NO_THREAD ]; then
        unset CLI_NO_THREAD
    fi
fi
