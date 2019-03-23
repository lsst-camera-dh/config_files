export INST_DIR=/home/homer/cr/jh_inst/1.0.0
export STACK_DIR=/lsst/dh/software/centos7-gcc48/stack/v16_py3
source ${STACK_DIR}/loadLSST.bash
export EUPS_PATH=${INST_DIR}/eups:${EUPS_PATH}
setup eotest
export HARNESSEDJOBSDIR=${INST_DIR}/harnessed-jobs-0.4.90
export VIRTUAL_ENV=${INST_DIR}
source ${INST_DIR}/Modules/3.2.10/init/bash
export PATH=${INST_DIR}/jh-dev-tools-0.1.0/bin:${INST_DIR}/CR-jobs-0.0.1/bin:${INST_DIR}/bin:${PATH}
export SITENAME=SLAC


export PATH=${INST_DIR}/jh-dev-tools-0.1.0/bin:${INST_DIR}/bin:${PATH}
export SITENAME=SLAC
export CRJOBSDIR=${INST_DIR}/CR-jobs-1.0.0
export JHCCSUTILSDIR=${INST_DIR}/jh-ccs-utils-0.1.1
export ETRAVELERCLIENTAPIDIR=${INST_DIR}/eTraveler-clientAPI-1.7.1
export CONFIG_FILESDIR=${INST_DIR}/config_files-0.0.12
export JHDEVTOOLSDIR=${INST_DIR}/jh-dev-tools-0.1.0
export EOANALYSISJOBSDIR=${INST_DIR}/EO-analysis-jobs-0.1.0
export CAMERAMODELDIR=${INST_DIR}/camera-model-0.1.1


export LCATR_SCHEMA_PATH=${JHCCSUTILSDIR}/schemas:${EOANALYSISJOBSDIR}/schemas:${HARNESSEDJOBSDIR}/schemas:${LCATR_SCHEMA_PATH}
export DATACATDIR=/lsst/dh/software/centos7-gcc48/dev/datacat/0.4/lib
export DATACAT_CONFIG=/lsst/dh/software/centos7-gcc48/dev/datacat/config.cfg
export PYTHONPATH=${JHCCSUTILSDIR}/python:${ETRAVELERCLIENTAPIDIR}/python:${METROLOGYDATAANALYSISDIR}/python:${CONFIG_FILESDIR}/python:${JHDEVTOOLSDIR}/python:${EOANALYSISJOBSDIR}/python:${CAMERAMODELDIR}/python:${CRJOBSDIR}/python:${DATACATDIR}:${HARNESSEDJOBSDIR}/python:${INST_DIR}/lib/python3.6/site-packages:${PYTHONPATH}
PS1="[jh]$ "
