{ pkgs }:

{
  packageOverrides = pkgs : rec {
    toolsEnv = with pkgs; buildEnv {
      name = "toolsEnv";
      paths = [
        fish
        emacs24Macport
        aspell
        aspellDicts.de
        aspellDicts.en
        git
        silver-searcher
      ];
    };
  };
}
