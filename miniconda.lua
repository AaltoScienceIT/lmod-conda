--prepend_path("PATH", "/home/darstr1/miniconda3-module/bin/")

local root = "/home/darstr1/miniconda3-module/"

if myShellType() == "csh" then
   execute{cmd=table.join{"source ", pathJoin(root, "bin/activate.csh ''"}, modeA={"load"}}

else
   -- The extra '' is needed, or else $@ is set to "module load" and then
   -- "conda activate" gives an error message.
   execute{cmd=table.join{"source ", /home/darstr1/miniconda3-module/bin/activate ''"}, modeA={"load"}}

end

execute{cmd="conda deactivate", modeA={"unload"}}

