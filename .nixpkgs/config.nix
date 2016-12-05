{ pkgs }:

{
  packageOverrides = pkgs : rec {
    toolsEnv = with pkgs; buildEnv {
      name = "toolsEnv";
      paths = [
        emacs
        aspell
        aspellDicts.de
        aspellDicts.en
        git
        jdk8
        silver-searcher
      ];
    };
  };
}
