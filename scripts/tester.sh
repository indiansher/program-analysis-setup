if [ -z ${1} ]
  then
    echo "ERROR (Argument Missing): Please provide the executable as your argument"
    exit 1
fi

CURRENT_TIMESTAMP=$(date +"%m%d%y_%H%M%S")
LOG_FILE=test-reports/${CURRENT_TIMESTAMP}.log
TEST_CASES_DIR=test-cases

programs=$(ls ${TEST_CASES_DIR}/*.c)
for program in ${programs}
do
    /scripts/compileTestProgram.sh ${program}
done
mkdir -p "test-reports"
touch ${LOG_FILE}
echo "Writing Logs to ${LOG_FILE} [Please run \"tail -f ${LOG_FILE} in another tab to tail logs\"]"

lls=$(ls ${TEST_CASES_DIR}/*.ll)
for ll in ${lls}
do
    echo ${ll} >> ${LOG_FILE}
    echo "-----------------------" >> ${LOG_FILE}
    ./${1} ${ll} >>${LOG_FILE} 2>&1
    echo "-----------------------" >> ${LOG_FILE}
done

echo "Log Written to ${LOG_FILE}"