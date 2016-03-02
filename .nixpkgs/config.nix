{ pkgs }:

{
  packageOverrides = pkgs : rec {
    toolsEnv = with pkgs; buildEnv {
      name = "toolsEnv";
      paths = [
        fish
        emacs24Macport
        git
        silver-searcher
      ];
    };
  };
}
