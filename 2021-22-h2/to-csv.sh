#!/bin/bash -eu
TARGET=${1:-2021-21-h2.csv}
echo "reporting_date,school_type,zip,county,lfd_positive,sick,quarantine,pcr_positive" > $TARGET
java -jar $TABULA_JAR --pages all -a 151,20,842,595 statistischedatenzumpandemieverlauf-inkllk.pdf | grep -v 'Seite' >> $TARGET
