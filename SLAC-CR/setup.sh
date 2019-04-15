export INST_DIR=/gpfs/slac/lsst/fs2/u1/devel/ccs/cr/dev/jh_inst/1.0.4
export STACK_DIR=/lsst/dh/software/centos7-gcc48/stack/v16_py3
source ${STACK_DIR}/loadLSST.bash
export EUPS_PATH=${INST_DIR}/eups:${EUPS_PATH}
setup eotest
export HARNESSEDJOBSDIR=${INST_DIR}/harnessed-jobs-0.4.93
export VIRTUAL_ENV=${INST_DIR}
source ${INST_DIR}/Modules/3.2.10/init/bash
export PATH=${INST_DIR}/cr-eotest-1.0.4/bin:${INST_DIR}/jh-dev-tools-0.1.0/bin:${INST_DIR}/bin:${PATH}
export SITENAME=SLAC
export CREOTESTDIR=${INST_DIR}/cr-eotest-1.0.4
export ETRAVELERCLIENTAPIDIR=${INST_DIR}/eTraveler-clientAPI-1.7.1
export CRCAMERAMODELDIR=${INST_DIR}/cr-camera-model-1.0.0
export CONFIG_FILESDIR=${INST_DIR}/config_files-1.0.0
export JHCRCCSUTILSDIR=${INST_DIR}/jh-cr-ccs-utils-1.0.3
export CRJOBSDIR=${INST_DIR}/CR-jobs-1.0.4
export JHDEVTOOLSDIR=${INST_DIR}/jh-dev-tools-0.1.0
export CREOANALYSISJOBSDIR=${INST_DIR}/cr-EO-analysis-jobs-1.0.4
export LCATR_SCHEMA_PATH=${JHCRCCSUTILSDIR}/schemas:${CREOANALYSISJOBSDIR}/schemas:${HARNESSEDJOBSDIR}/schemas:${LCATR_SCHEMA_PATH}
export DATACATDIR=/lsst/dh/software/centos7-gcc48/dev/datacat/0.4/lib
export DATACAT_CONFIG=/lsst/dh/software/centos7-gcc48/dev/datacat/config.cfg
export PYTHONPATH=${CREOTESTDIR}/python:${ETRAVELERCLIENTAPIDIR}/python:${CRCAMERAMODELDIR}/python:${CONFIG_FILESDIR}/python:${JHCRCCSUTILSDIR}/python:${CRJOBSDIR}/python:${JHDEVTOOLSDIR}/python:${CREOANALYSISJOBSDIR}/python:${DATACATDIR}:${HARNESSEDJOBSDIR}/python:${INST_DIR}/lib/python3.6/site-packages:${PYTHONPATH}
PS1="[jh]$ "
