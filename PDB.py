from IPython.display import HTML
from pypdb import *
import time
from Bio.PDB import PDBList
from tqdm import tqdm 

q = input('keywords? ')
pdb_ids = Query(q).search()
print('the number of PDB IDs are ' + str(len(pdb_ids)))

pdbl = PDBList()
dir_name = q + '/'

download = input('Download PDB files? y/n  ')
if download == 'y':
    for pdb_id in tqdm(pdb_ids, position=0):
        pdbl.retrieve_pdb_file(pdb_id, pdir=dir_name)
        time.sleep(10)
print('fertig')