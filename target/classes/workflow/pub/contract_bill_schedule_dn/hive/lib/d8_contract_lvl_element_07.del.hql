----------------------------------------------------------------------------------------
--THIS FILE IS CREATED AUTOMATICALLY USING Workload Transformation @ 2020/01/04 22:44:17 
--Script Name: d8_contract_lvl_element_07.del.sql
--Inputs:  
--Outputs:

--Modification History:
--Date:     Current Date     Who:    
--Control:              
--Description:
----------------------------------------------------------------------------------------


--Original Query: 8ac01af70ef22e7d586a4f5e5ecd1242
  --DATABASE ${EEDDWWDDBB1}  

--Translated Query: STATUS SUCCESS

    use ${EEDDWWDDBB1} ;

--Original Query: c4ee47700a526ff317c6525a6b2803ee
  --DELETE FROM contract_lvl_element_ld A  WHERE (A.rule_id,A.instance_id) IN (SELECT B.rule_id,B.instance_id   FROM contract_rule_ld B,  ${TTMMPPDDBB1}.${AAPPLLIIDD1EENNVV}_contract_header_purge_t1 C  WHERE B.instance_id = C.instance_id  AND   B.alt_contract_header_id = C.contract_header_id) AND (A.rule_id,A.instance_id) NOT IN (SELECT D.contr_bill_stream_id, D.instance_id FROM contr_bill_stream_ld D)   

--Translated Query: STATUS MANUAL
--(Nikhil) Corrected Manually,added the source tables used in IN and NOT IN clause.
--    INSERT OVERWRITE
        -- TABLE ${EEDDWWDDBB1}.contract_lvl_element_ld SELECT
            -- Q1.* 
        -- FROM
            -- (SELECT
                -- * 
            -- FROM
                -- ${EEDDWWDDBB1}.contract_lvl_element_ld ) AS  Q1  
        -- LEFT OUTER JOIN
            -- (
                -- SELECT
                    -- A.*  
                -- FROM
                    -- ${EEDDWWDDBB1}.contract_lvl_element_ld    AS A    
            -- ) AS Q2 
                -- ON COALESCE( Q1.instance_id ,
            -- '1' ) = COALESCE( Q2.instance_id ,
            -- '1' ) 
            -- AND COALESCE( Q1.level_element_id ,
            -- '1' ) = COALESCE( Q2.level_element_id ,
            -- '1' ) 
            -- AND COALESCE( Q1.alt_as_of_date_time ,
            -- cast ( CURRENT_DATE() as timestamp) ) = COALESCE( Q2.alt_as_of_date_time ,
            -- cast ( CURRENT_DATE() as timestamp) ) 
            -- AND COALESCE( Q1.alt_batch_nbr ,
            -- 1) = COALESCE( Q2.alt_batch_nbr ,
            -- 1) 
            -- AND COALESCE( Q1.amount_due_date_time ,
            -- cast ( CURRENT_DATE() as timestamp) ) = COALESCE( Q2.amount_due_date_time ,
            -- cast ( CURRENT_DATE() as timestamp) ) 
            -- AND COALESCE( Q1.as_of_date_time ,
            -- cast ( CURRENT_DATE() as timestamp) ) = COALESCE( Q2.as_of_date_time ,
            -- cast ( CURRENT_DATE() as timestamp) ) 
            -- AND COALESCE( Q1.batch_nbr ,
            -- 1) = COALESCE( Q2.batch_nbr ,
            -- 1) 
            -- AND COALESCE( Q1.completed_date_time ,
            -- cast ( CURRENT_DATE() as timestamp) ) = COALESCE( Q2.completed_date_time ,
            -- cast ( CURRENT_DATE() as timestamp) ) 
            -- AND COALESCE( Q1.created_by_name ,
            -- '1' ) = COALESCE( Q2.created_by_name ,
            -- '1' ) 
            -- AND COALESCE( Q1.creation_date_time ,
            -- cast ( CURRENT_DATE() as timestamp) ) = COALESCE( Q2.creation_date_time ,
            -- cast ( CURRENT_DATE() as timestamp) ) 
            -- AND COALESCE( Q1.gl_receivable_date_time ,
            -- cast ( CURRENT_DATE() as timestamp) ) = COALESCE( Q2.gl_receivable_date_time ,
            -- cast ( CURRENT_DATE() as timestamp) ) 
            -- AND COALESCE( Q1.interface_date_time ,
            -- cast ( CURRENT_DATE() as timestamp) ) = COALESCE( Q2.interface_date_time ,
            -- cast ( CURRENT_DATE() as timestamp) ) 
            -- AND COALESCE( Q1.last_update_date_time ,
            -- cast ( CURRENT_DATE() as timestamp) ) = COALESCE( Q2.last_update_date_time ,
            -- cast ( CURRENT_DATE() as timestamp) ) 
            -- AND COALESCE( Q1.last_updated_by_name ,
            -- '1' ) = COALESCE( Q2.last_updated_by_name ,
            -- '1' ) 
            -- AND COALESCE( Q1.level_element_amt_ent ,
            -- 1) = COALESCE( Q2.level_element_amt_ent ,
            -- 1) 
            -- AND COALESCE( Q1.period_start_date ,
            -- CURRENT_DATE() ) = COALESCE( Q2.period_start_date ,
            -- CURRENT_DATE() ) 
            -- AND COALESCE( Q1.print_date_time ,
            -- cast ( CURRENT_DATE() as timestamp) ) = COALESCE( Q2.print_date_time ,
            -- cast ( CURRENT_DATE() as timestamp) ) 
            -- AND COALESCE( Q1.rule_id ,
            -- '1' ) = COALESCE( Q2.rule_id ,
            -- '1' ) 
            -- AND COALESCE( Q1.rule_start_date_time ,
            -- cast ( CURRENT_DATE() as timestamp) ) = COALESCE( Q2.rule_start_date_time ,
            -- cast ( CURRENT_DATE() as timestamp) ) 
            -- AND COALESCE( Q1.sequence_nbr ,
            -- '1' ) = COALESCE( Q2.sequence_nbr ,
            -- '1' ) 
            -- AND COALESCE( Q1.tran_code ,
            -- '1' ) = COALESCE( Q2.tran_code ,
            -- '1' ) 
            -- AND COALESCE( Q1.transaction_date_time ,
            -- cast ( CURRENT_DATE() as timestamp) ) = COALESCE( Q2.transaction_date_time ,
            -- cast ( CURRENT_DATE() as timestamp) ) 
            -- AND COALESCE( Q1.alt_contract_header_id ,
            -- '1' ) = COALESCE( Q2.alt_contract_header_id ,
            -- '1' ) 
            -- AND COALESCE( Q1.contract_line_id ,
            -- '1' ) = COALESCE( Q2.contract_line_id ,
            -- '1' ) 
            -- AND COALESCE( Q1.parent_contract_line_id ,
            -- '1' ) = COALESCE( Q2.parent_contract_line_id ,
            -- '1' ) 
            -- AND COALESCE( Q1.period_end_date ,
            -- CURRENT_DATE() ) = COALESCE( Q2.period_end_date ,
            -- CURRENT_DATE() ) 
            -- AND COALESCE( Q1.level_element_amt_us ,
            -- 1) = COALESCE( Q2.level_element_amt_us ,
            -- 1) 
        -- WHERE
            -- Q2.instance_id IS NULL 
            -- AND Q2.level_element_id IS NULL 
            -- AND Q2.alt_as_of_date_time IS NULL 
            -- AND Q2.alt_batch_nbr IS NULL 
            -- AND Q2.amount_due_date_time IS NULL 
            -- AND Q2.as_of_date_time IS NULL 
            -- AND Q2.batch_nbr IS NULL 
            -- AND Q2.completed_date_time IS NULL 
            -- AND Q2.created_by_name IS NULL 
            -- AND Q2.creation_date_time IS NULL 
            -- AND Q2.gl_receivable_date_time IS NULL 
            -- AND Q2.interface_date_time IS NULL 
            -- AND Q2.last_update_date_time IS NULL 
            -- AND Q2.last_updated_by_name IS NULL 
            -- AND Q2.level_element_amt_ent IS NULL 
            -- AND Q2.period_start_date IS NULL 
            -- AND Q2.print_date_time IS NULL 
            -- AND Q2.rule_id IS NULL 
            -- AND Q2.rule_start_date_time IS NULL 
            -- AND Q2.sequence_nbr IS NULL 
            -- AND Q2.tran_code IS NULL 
            -- AND Q2.transaction_date_time IS NULL 
            -- AND Q2.alt_contract_header_id IS NULL 
            -- AND Q2.contract_line_id IS NULL 
            -- AND Q2.parent_contract_line_id IS NULL 
            -- AND Q2.period_end_date IS NULL 
            -- AND Q2.level_element_amt_us IS NULL;
--WITH qq1 AS(
--SELECT B.rule_id
--            ,B.instance_id
--        FROM ${TTMMPPDDBB1}.contract_rule_ld B 
--        INNER JOIN
--       ${TTMMPPDDBB1}.${AAPPLLIIDD1EENNVV}_contract_header_purge_t1 C
--        ON  upper(trim(B.instance_id)) = upper(trim(C.instance_id))
--            AND  upper(trim(B.alt_contract_header_id)) = upper(trim(C.contract_header_id))
--
--)
--INSERT OVERWRITE TABLE ${EEDDWWDDBB1}.contract_lvl_element_ld
--SELECT A.* from  ${EEDDWWDDBB1}.contract_lvl_element_ld A
--INNER JOIN ${EEDDWWDDBB1}.contr_bill_stream_ld qq2
--on upper(trim(qq2.contr_bill_stream_id))=upper(trim(A.rule_id))
--and upper(trim(qq2.instance_id))=upper(trim(A.instance_id))
--LEFT OUTER JOIN 
--qq1
--ON upper(trim(qq1.rule_id=A.rule_id)) and upper(trim(qq1.instance_id=A.instance_id))
--where qq1.rule_id is null and qq1.instance_id is null;

--Original Query: ab009379c3cbbddfcf235f09633afae7
  --DELETE A FROM contract_lvl_element_ld A, ${TTMMPPDDBB1}.${AAPPLLIIDD1EENNVV}_contract_header_purge_t1 B WHERE A.instance_id = B.instance_id AND A.alt_contract_header_id = B.contract_header_id AND (A.rule_id,A.instance_id) NOT IN (SELECT D.contr_bill_stream_id, D.instance_id FROM contr_bill_stream_ld D)  

--Translated Query: STATUS MANUAL
--(Nikhil) Corrected Manually,added the source tables used in IN and NOT IN clause.
--   INSERT OVERWRITE
        -- TABLE ${EEDDWWDDBB1}.contract_lvl_element_ld SELECT
            -- Q1.* 
        -- FROM
            -- (SELECT
                -- * 
            -- FROM
                -- ${EEDDWWDDBB1}.contract_lvl_element_ld ) AS  Q1  
        -- LEFT OUTER JOIN
            -- (
                -- SELECT
                    -- A.*  
                -- FROM
                    -- ${EEDDWWDDBB1}.contract_lvl_element_ld    AS A   ,
                    -- ${TTMMPPDDBB1}.${AAPPLLIIDD1EENNVV}_contract_header_purge_t1    AS B   
                -- WHERE
                    -- A.instance_id = B.instance_id  
                    -- AND A.alt_contract_header_id = B.contract_header_id   
            -- ) AS Q2 
                -- ON COALESCE( Q1.instance_id ,
            -- '1' ) = COALESCE( Q2.instance_id ,
            -- '1' ) 
            -- AND COALESCE( Q1.level_element_id ,
            -- '1' ) = COALESCE( Q2.level_element_id ,
            -- '1' ) 
            -- AND COALESCE( Q1.alt_as_of_date_time ,
            -- cast ( CURRENT_DATE() as timestamp) ) = COALESCE( Q2.alt_as_of_date_time ,
            -- cast ( CURRENT_DATE() as timestamp) ) 
            -- AND COALESCE( Q1.alt_batch_nbr ,
            -- 1) = COALESCE( Q2.alt_batch_nbr ,
            -- 1) 
            -- AND COALESCE( Q1.amount_due_date_time ,
            -- cast ( CURRENT_DATE() as timestamp) ) = COALESCE( Q2.amount_due_date_time ,
            -- cast ( CURRENT_DATE() as timestamp) ) 
            -- AND COALESCE( Q1.as_of_date_time ,
            -- cast ( CURRENT_DATE() as timestamp) ) = COALESCE( Q2.as_of_date_time ,
            -- cast ( CURRENT_DATE() as timestamp) ) 
            -- AND COALESCE( Q1.batch_nbr ,
            -- 1) = COALESCE( Q2.batch_nbr ,
            -- 1) 
            -- AND COALESCE( Q1.completed_date_time ,
            -- cast ( CURRENT_DATE() as timestamp) ) = COALESCE( Q2.completed_date_time ,
            -- cast ( CURRENT_DATE() as timestamp) ) 
            -- AND COALESCE( Q1.created_by_name ,
            -- '1' ) = COALESCE( Q2.created_by_name ,
            -- '1' ) 
            -- AND COALESCE( Q1.creation_date_time ,
            -- cast ( CURRENT_DATE() as timestamp) ) = COALESCE( Q2.creation_date_time ,
            -- cast ( CURRENT_DATE() as timestamp) ) 
            -- AND COALESCE( Q1.gl_receivable_date_time ,
            -- cast ( CURRENT_DATE() as timestamp) ) = COALESCE( Q2.gl_receivable_date_time ,
            -- cast ( CURRENT_DATE() as timestamp) ) 
            -- AND COALESCE( Q1.interface_date_time ,
            -- cast ( CURRENT_DATE() as timestamp) ) = COALESCE( Q2.interface_date_time ,
            -- cast ( CURRENT_DATE() as timestamp) ) 
            -- AND COALESCE( Q1.last_update_date_time ,
            -- cast ( CURRENT_DATE() as timestamp) ) = COALESCE( Q2.last_update_date_time ,
            -- cast ( CURRENT_DATE() as timestamp) ) 
            -- AND COALESCE( Q1.last_updated_by_name ,
            -- '1' ) = COALESCE( Q2.last_updated_by_name ,
            -- '1' ) 
            -- AND COALESCE( Q1.level_element_amt_ent ,
            -- 1) = COALESCE( Q2.level_element_amt_ent ,
            -- 1) 
            -- AND COALESCE( Q1.period_start_date ,
            -- CURRENT_DATE() ) = COALESCE( Q2.period_start_date ,
            -- CURRENT_DATE() ) 
            -- AND COALESCE( Q1.print_date_time ,
            -- cast ( CURRENT_DATE() as timestamp) ) = COALESCE( Q2.print_date_time ,
            -- cast ( CURRENT_DATE() as timestamp) ) 
            -- AND COALESCE( Q1.rule_id ,
            -- '1' ) = COALESCE( Q2.rule_id ,
            -- '1' ) 
            -- AND COALESCE( Q1.rule_start_date_time ,
            -- cast ( CURRENT_DATE() as timestamp) ) = COALESCE( Q2.rule_start_date_time ,
            -- cast ( CURRENT_DATE() as timestamp) ) 
            -- AND COALESCE( Q1.sequence_nbr ,
            -- '1' ) = COALESCE( Q2.sequence_nbr ,
            -- '1' ) 
            -- AND COALESCE( Q1.tran_code ,
            -- '1' ) = COALESCE( Q2.tran_code ,
            -- '1' ) 
            -- AND COALESCE( Q1.transaction_date_time ,
            -- cast ( CURRENT_DATE() as timestamp) ) = COALESCE( Q2.transaction_date_time ,
            -- cast ( CURRENT_DATE() as timestamp) ) 
            -- AND COALESCE( Q1.alt_contract_header_id ,
            -- '1' ) = COALESCE( Q2.alt_contract_header_id ,
            -- '1' ) 
            -- AND COALESCE( Q1.contract_line_id ,
            -- '1' ) = COALESCE( Q2.contract_line_id ,
            -- '1' ) 
            -- AND COALESCE( Q1.parent_contract_line_id ,
            -- '1' ) = COALESCE( Q2.parent_contract_line_id ,
            -- '1' ) 
            -- AND COALESCE( Q1.period_end_date ,
            -- CURRENT_DATE() ) = COALESCE( Q2.period_end_date ,
            -- CURRENT_DATE() ) 
            -- AND COALESCE( Q1.level_element_amt_us ,
            -- 1) = COALESCE( Q2.level_element_amt_us ,
            -- 1) 
        -- WHERE
            -- Q2.instance_id IS NULL 
            -- AND Q2.level_element_id IS NULL 
            -- AND Q2.alt_as_of_date_time IS NULL 
            -- AND Q2.alt_batch_nbr IS NULL 
            -- AND Q2.amount_due_date_time IS NULL 
            -- AND Q2.as_of_date_time IS NULL 
            -- AND Q2.batch_nbr IS NULL 
            -- AND Q2.completed_date_time IS NULL 
            -- AND Q2.created_by_name IS NULL 
            -- AND Q2.creation_date_time IS NULL 
            -- AND Q2.gl_receivable_date_time IS NULL 
            -- AND Q2.interface_date_time IS NULL 
            -- AND Q2.last_update_date_time IS NULL 
            -- AND Q2.last_updated_by_name IS NULL 
            -- AND Q2.level_element_amt_ent IS NULL 
            -- AND Q2.period_start_date IS NULL 
            -- AND Q2.print_date_time IS NULL 
            -- AND Q2.rule_id IS NULL 
            -- AND Q2.rule_start_date_time IS NULL 
            -- AND Q2.sequence_nbr IS NULL 
            -- AND Q2.tran_code IS NULL 
            -- AND Q2.transaction_date_time IS NULL 
            -- AND Q2.alt_contract_header_id IS NULL 
            -- AND Q2.contract_line_id IS NULL 
            -- AND Q2.parent_contract_line_id IS NULL 
            -- AND Q2.period_end_date IS NULL 
            -- AND Q2.level_element_amt_us IS NULL;

INSERT OVERWRITE TABLE ${EEDDWWDDBB1}.contract_lvl_element_ld
SELECT A.* from  ${EEDDWWDDBB1}.contract_lvl_element_ld A
INNER JOIN ${EEDDWWDDBB1}.contr_bill_stream_ld qq2
on upper(trim(qq2.contr_bill_stream_id))=upper(trim(A.rule_id))
and upper(trim(qq2.instance_id))=upper(trim(A.instance_id))

LEFT OUTER JOIN 
${TTMMPPDDBB1}.${AAPPLLIIDD1EENNVV}_contract_header_purge_t1 B
ON upper(trim(B.instance_id))=upper(trim(A.instance_id)) 
and upper(trim(B.contract_header_id))=upper(trim(A.alt_contract_header_id))

where B.contract_header_id is null and B.instance_id is NULL;