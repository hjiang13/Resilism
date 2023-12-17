import csv
import pandas as  pd
df = pd.read_csv("/home/hjiang/Resilism/processed_data/FIInfoInstance.csv")


# To calculate the percentage of eroor types across opcodes
opcode_erro_type = df.groupby(["opcode", "error_type"]).agg({'fi_cycle':'sum'})
opcode_erro_type_pcts = opcode_erro_type.groupby(level=0).apply(lambda x: 100 * x / float(x.sum()))

print(opcode_erro_type_pcts)

sub_opcode_erro_type_pcts = opcode_erro_type_pcts.unstack().T
sub_opcode_erro_type_pcts.index = sub_opcode_erro_type_pcts.index.droplevel()

sub_opcode_erro_type_pcts.T.plot(kind='bar', stacked=True, rot=1, figsize=(8, 8), 
               title="Error types across opcode")

#