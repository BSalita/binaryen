SET(passes_SOURCES
  pass.cpp
  LowerIfElse.cpp
  MergeBlocks.cpp
  Metrics.cpp
  NameManager.cpp
  OptimizeInstructions.cpp
  PostEmscripten.cpp
  Print.cpp
  RemoveImports.cpp
  RemoveUnusedBrs.cpp
  RemoveUnusedNames.cpp
  ReorderLocals.cpp
  ReorderFunctions.cpp
  SimplifyLocals.cpp
  Vacuum.cpp
)
ADD_LIBRARY(passes STATIC ${passes_SOURCES})
