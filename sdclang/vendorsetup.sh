# Set SDClang defaults
export SDCLANG=false
export SDCLANG_PATH=prebuilts/snapdragon-llvm-4.0.14-linux64/toolchains/llvm-Snapdragon_LLVM_for_Android_4.0/prebuilt/linux-x86_64/bin
export SDCLANG_LTO_DEFS=vendor/lineage/sdclang/sdllvm-lto-defs.mk
export SDCLANG_COMMON_FLAGS="-O3 -g0 -mcpu=krait -Wno-user-defined-warnings -Wno-vectorizer-no-neon -Wno-unknown-warning-option \
-Wno-deprecated-register -Wno-tautological-type-limit-compare -Wno-sign-compare -Wno-gnu-folding-constant \
-mllvm -arm-implicit-it=always -Wno-inline-asm -Wno-unused-command-line-argument -Wno-unused-variable"

# Enable based on host OS/availablitiy
case $(uname -s) in
    Linux)
        if [ -d "$SDCLANG_PATH" ]; then
            export SDCLANG=true
        fi
        ;;
    Darwin)
        ;;
    *)
        ;;
esac
