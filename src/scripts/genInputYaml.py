import yaml
import sys

outFile = "input.yaml"

fi_index_opt = '-injecttoindex='+ sys.argv[1]


bool_false = 'false'
bool_true = 'true'
data = {
    'compileOption' : { 
        'includeInjectionTrace' : ['backward'],
        'instSelMethod': [{ \
            'customInstselector':{ \
                "include" : ['llfiindex'], \
                "options" : [fi_index_opt] \
            }
        }],
        "regSelMethod" : 'regloc', 
        "regloc" : 'dstreg', 
        "tracingPropagation" : bool_true,
        "tracingPropagationOption":{ 
            "debugTrace" : 'false', 
            "generateCDFG" : 'false', 
            "maxTrace" : 250, 
        },
    },
    'runOption':[{ 
        'run' :{ \
            "fi_type" : "bitflip", \
            "numOfRuns" : 30 ,\
        },
    }], 
}
with open('input.yaml', 'w') as f:
    yaml.safe_dump(data, f)