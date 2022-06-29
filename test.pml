hide labels
cmd.label('''byca(sele)''', 'oneletter+resi')
preset.ligand_cartoon("4OLI",_self=cmd)
cc
util.color_chains("(enabled and name CA)",_self=cmd) 
cmd.select('sele','none')
cmd.select('sele',"byresi((((sele) or byresi((4OLI`4483))) and not ((byresi((4OLI`4483))) and byresi(sele))))",enable=1)
center sele
5
create a5, byres organic  and enabled expand 5; disable !a5; see 
zoom byres organic around 8 and chain A 
cmd.select('sele','none')
cmd.select('sele',"byresi((((sele) or byresi((a5`319))) and not ((byresi((a5`319))) and byresi(sele))))",enable=1)
center sele
cmd.disable('sele')
select 4, byres organic  and enabled expand 4
show labels, organic and enabled
set label_position, (3, 1, 1)
cmd.disable('4')
byres organic  and enabled around 4
select 4, byres organic  and enabled around 4
cmd.enable('4OLI_pol_conts',1)
cmd.disable('4OLI_pol_conts')
cmd.enable('4OLI_pol_conts',1)
cmd.enable('4OLI',1)
cmd.disable('a5')
cmd.disable('4OLI_pol_conts')
cmd.enable('4')
select 4, oragenic
select 4, organic
select 4, byres organic  and enabled around 4
select 4, byres organic  around 4 and enabled
select 4, byres organic expand 4 and enabled
