function cuda-env
    set -gx CUDACXX /usr/local/cuda/bin/nvcc
    set -gx CXX /usr/bin/g++
    set -gx CC /usr/bin/gcc
    set -gx LD_LIBRARY_PATH "$LD_LIBRARY_PATH:/usr/local/cuda/lib64"
    set -x PATH "/usr/local/cuda/bin:$PATH"
end
# function cuda-env
#     set -gx CUDACXX /usr/bin/nvcc
#     set -gx CXX /usr/bin/clang
#     set -gx CC /usr/bin/gcc
#     set -gx LD_LIBRARY_PATH /usr/local/cuda/lib64:$LD_LIBRARY_PATH
# end
