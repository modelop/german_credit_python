CREATE EXTERNAL TABLE IF NOT EXISTS baseline_data (
    id                       INT,
    duration_months          INT,
    credit_amount            INT,
    installment_rate         INT,
    present_residence_since  INT,
    age_years                INT,
    number_existing_credits  INT,
    checking_status          STRING,
    credit_history           STRING,
    purpose                  STRING,
    savings_account          STRING,
    present_employment_since STRING,
    debtors_guarantors       STRING,
    property                 STRING,
    installment_plans        STRING,
    housing                  STRING,
    job                      STRING,
    number_people_liable     INT,
    telephone                STRING,
    foreign_worker           STRING,
    gender                   STRING,
    label_value              INT,
    score                    INT
)
USING json
OPTIONS (
    path 's3://spark-test-bucket-internal/german_credit_sample_data/extended_schema_mrm/baseline_data.json',
    multiline 'false'
);


CREATE EXTERNAL TABLE IF NOT EXISTS comparator_data (
    id                       INT,
    duration_months          INT,
    credit_amount            INT,
    installment_rate         INT,
    present_residence_since  INT,
    age_years                INT,
    number_existing_credits  INT,
    checking_status          STRING,
    credit_history           STRING,
    purpose                  STRING,
    savings_account          STRING,
    present_employment_since STRING,
    debtors_guarantors       STRING,
    property                 STRING,
    installment_plans        STRING,
    housing                  STRING,
    job                      STRING,
    number_people_liable     INT,
    telephone                STRING,
    foreign_worker           STRING,
    gender                   STRING,
    label_value              INT,
    score                    INT
)
USING json
OPTIONS (
    path 's3://spark-test-bucket-internal/german_credit_sample_data/extended_schema_mrm/comparator_data.json',
    multiline 'false'
);


CREATE EXTERNAL TABLE IF NOT EXISTS baseline_data_metrics_over_time (
    id                       INT,
    predictionDate           TIMESTAMP,
    duration_months          INT,
    credit_amount            INT,
    installment_rate         INT,
    present_residence_since  INT,
    age_years                INT,
    number_existing_credits  INT,
    checking_status          STRING,
    credit_history           STRING,
    purpose                  STRING,
    savings_account          STRING,
    present_employment_since STRING,
    debtors_guarantors       STRING,
    property                 STRING,
    installment_plans        STRING,
    housing                  STRING,
    job                      STRING,
    number_people_liable     INT,
    telephone                STRING,
    foreign_worker           STRING,
    gender                   STRING,
    label                    INT,
    score                    INT
)
USING csv
OPTIONS (
    path 's3://spark-test-bucket-internal/german_credit_sample_data/metrics_over_time/baseline_data.csv',
    header 'true',
    inferSchema 'true'
);


CREATE EXTERNAL TABLE IF NOT EXISTS comparator_data_metrics_over_time (
    id                       INT,
    predictionDate           TIMESTAMP,
    duration_months          INT,
    credit_amount            INT,
    installment_rate         INT,
    present_residence_since  INT,
    age_years                INT,
    number_existing_credits  INT,
    checking_status          STRING,
    credit_history           STRING,
    purpose                  STRING,
    savings_account          STRING,
    present_employment_since STRING,
    debtors_guarantors       STRING,
    property                 STRING,
    installment_plans        STRING,
    housing                  STRING,
    job                      STRING,
    number_people_liable     INT,
    telephone                STRING,
    foreign_worker           STRING,
    gender                   STRING,
    label                    INT,
    score                    INT
)
USING csv
OPTIONS (
    path 's3://spark-test-bucket-internal/german_credit_sample_data/metrics_over_time/comparator_data.csv',
    header 'true',
    inferSchema 'true'
);