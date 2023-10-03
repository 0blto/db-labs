select score from iq_test where person_id=(
    select person_id from action_connection where object_id=(
            select id from tree_object where tree_id=(
                    select id from tree where tree_type_id=1
                ) limit 1
        )
);



