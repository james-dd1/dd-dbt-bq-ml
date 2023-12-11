{{
    config(
        materialized='model',
        ml_config={
            'model_type': 'matrix_factorization', 
            'user_col': 'user_id', 
            'item_col': 'movie_id', 
            'rating_col': 'rating', 
            'l2_reg': 0.2, 
            'num_factors': 16
        }
    )
}}

select 
    user_id, 
    movie_id, 
    rating 
from {{ ref('stg_movielens__ratings') }}