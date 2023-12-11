with source as (
    select *
    from {{ source ('movielens','movielens_ratings') }}
),

renamed as (
    select
        userId as user_id,
        movieId as movie_id,
        rating,
        timestamp_micros(`timestamp`) as rating_at

    from source
)

select * from renamed

