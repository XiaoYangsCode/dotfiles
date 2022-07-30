return {
    cmd = {
        "clangd",
        "--background-index",
        "--clang-tidy",
        -- config clang-tidy, for all config refer to https://clang.llvm.org/extra/clang-tidy/checks
        "--clang-tidy-checks=bugprone-*, clang-analyzer-*, google-*, modernize-*, performance-*, portability-*, readability-*, -bugprone-too-small-loop-variable, -clang-analyzer-cplusplus.NewDelete, -clang-analyzer-cplusplus.NewDeleteLeaks, -modernize-use-nodiscard, -modernize-avoid-c-arrays, -readability-magic-numbers, -bugprone-branch-clone, -bugprone-signed-char-misuse, -bugprone-unhandled-self-assignment, -clang-diagnostic-implicit-int-float-conversion, -modernize-use-auto, -modernize-use-trailing-return-type, -readability-convert-member-functions-to-static, -readability-make-member-function-const, -readability-qualified-auto, -readability-redundant-access-specifiers,",
        "--completion-style=detailed",
        "--cross-file-rename=true",
        "--header-insertion=iwyu",
        "--pch-storage=memory",
        -- if turn on, cmp function will add placeholder，click Tab move to next
        "--function-arg-placeholders=false",
        "--log=verbose",
        "--offset-encoding=utf-16", -- solve multi different client offset_encodings
        "--ranking-model=decision_forest",
        -- if header not exist, add a dot to differ from which have
        "--header-insertion-decorators",
        "-j=12",
        "--pretty",
    }
}
