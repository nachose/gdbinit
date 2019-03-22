set pagination off
set loggin file gdb.output
set logging on
set debug-file-directory /home/esgops/0/lib
show debug-file-directory
directory /home/esgops/0/bin
set solib-search-path /home/esgops/0/lib
set listsize 40
set print symbol-filename on
set print symbol on
set print array on
set print array-indexes on
set print pretty on
set print demangle on
set print object on
set print static-members on
set print vtbl on
define bsave
    save breakpoints /home/esgopsdev/.breakpoints
end

define brestore
   source /home/esgopsdev/.breakpoints
end
set breakpoint pending on
set confirm off
set print thread-events
brestore
directory /home/esgopsdev/MCS-DEV
set substitute-path /home/esgops/0/lib /home/esgopsdev/MCS-DEV
set substitute-path /home/esgops/1/lib /home/esgopsdev/MCS-DEV
set substitute-path /home/esgops/2/lib /home/esgopsdev/MCS-DEV
set substitute-path /home/esgops/0/bin /home/esgopsdev/MCS-DEV
set substitute-path /home/esgops/1/bin /home/esgopsdev/MCS-DEV
set substitute-path /home/esgops/2/bin /home/esgopsdev/MCS-DEV
