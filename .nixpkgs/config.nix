{ pkgs }:

{
  packageOverrides = pkgs : rec {
    toolsEnv = with pkgs; buildEnv {
      name = "toolsEnv";
      paths = [
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
