{% set container_value1 = var('container_1') %}
{% set storage_account_value = var('storage_account') %}
{% set incremental_location_value = var('incremental_location') %}

{{ load_wms_incremental(
    source_path="abfss://" ~ container_value1 ~ "@" ~ storage_account_value ~ ".dfs.core.windows.net/" ~ incremental_location_value ~ "/COL/WMS_TFITM_COL_500_parquet",
    all_columns = [
        {"name": "IMORG", "data_type": "STRING"},
        {"name": "IMITM", "data_type": "STRING"},
        {"name": "IMVRSN", "data_type": "STRING"},
        {"name": "IMIDSC", "data_type": "STRING"},
        {"name": "IMVDSC", "data_type": "STRING"},
        {"name": "IMPRFL", "data_type": "STRING"},
        {"name": "IMIVND", "data_type": "STRING"},
        {"name": "IMNOII", "data_type": "STRING"},
        {"name": "IMFTYP", "data_type": "STRING"},
        {"name": "IMASTS", "data_type": "STRING"},
        {"name": "IMBDRT", "data_type": "DECIMAL(13,2)"},
        {"name": "IMITMX", "data_type": "STRING"},
        {"name": "IMIPIM", "data_type": "DECIMAL(3,0)"},
        {"name": "IMUPC", "data_type": "DECIMAL(14,0)"},
        {"name": "IMSCC", "data_type": "DECIMAL(14,0)"},
        {"name": "IMSC14", "data_type": "STRING"},
        {"name": "IMSCCD", "data_type": "STRING"},
        {"name": "IMRNUM", "data_type": "STRING"},
        {"name": "IMMSKU", "data_type": "STRING"},
        {"name": "IMSTYL", "data_type": "STRING"},
        {"name": "IMCATL", "data_type": "STRING"},
        {"name": "IMRTPC", "data_type": "DECIMAL(13,2)"},
        {"name": "IMIUC1", "data_type": "STRING"},
        {"name": "IMIUC2", "data_type": "STRING"},
        {"name": "IMIUC3", "data_type": "STRING"},
        {"name": "IMPCWT", "data_type": "DECIMAL(13,5)"},
        {"name": "IMPCLN", "data_type": "DECIMAL(13,5)"},
        {"name": "IMPCWD", "data_type": "DECIMAL(13,5)"},
        {"name": "IMPCHT", "data_type": "DECIMAL(13,5)"},
        {"name": "IMPCIP", "data_type": "DECIMAL(5,0)"},
        {"name": "IMCAWT", "data_type": "DECIMAL(13,5)"},
        {"name": "IMCALN", "data_type": "DECIMAL(13,5)"},
        {"name": "IMCAWD", "data_type": "DECIMAL(13,5)"},
        {"name": "IMCAHT", "data_type": "DECIMAL(13,5)"},
        {"name": "IMPCCA", "data_type": "DECIMAL(5,0)"},
        {"name": "IMPLWT", "data_type": "DECIMAL(13,5)"},
        {"name": "IMPLLN", "data_type": "DECIMAL(13,5)"},
        {"name": "IMPLWD", "data_type": "DECIMAL(13,5)"},
        {"name": "IMPLHT", "data_type": "DECIMAL(13,5)"},
        {"name": "IMCAPL", "data_type": "DECIMAL(5,0)"},
        {"name": "IMCSLY", "data_type": "DECIMAL(5,0)"},
        {"name": "IMRSTS", "data_type": "STRING"},
        {"name": "IMLOTC", "data_type": "STRING"},
        {"name": "IMDEDP", "data_type": "DECIMAL(7,0)"},
        {"name": "IMPQCI", "data_type": "STRING"},
        {"name": "IMPQCV", "data_type": "DECIMAL(13,2)"},
        {"name": "IMSQCI", "data_type": "STRING"},
        {"name": "IMSQCV", "data_type": "DECIMAL(13,2)"},
        {"name": "IMQCLC", "data_type": "STRING"},
        {"name": "IMQCSO", "data_type": "STRING"},
        {"name": "IMQCQO", "data_type": "STRING"},
        {"name": "IMNMFC", "data_type": "STRING"},
        {"name": "IMDMUM", "data_type": "STRING"},
        {"name": "IMWTUM", "data_type": "STRING"},
        {"name": "IMRSVD", "data_type": "STRING"},
        {"name": "IMSBST", "data_type": "STRING"},
        {"name": "IMRPLN", "data_type": "DECIMAL(5,0)"},
        {"name": "IMHARM", "data_type": "STRING"},
        {"name": "IMPREF", "data_type": "STRING"},
        {"name": "IMPROD", "data_type": "STRING"},
        {"name": "IMNC", "data_type": "STRING"},
        {"name": "IMCNTY", "data_type": "STRING"},
        {"name": "IMELIC", "data_type": "STRING"},
        {"name": "IMELDT", "data_type": "DECIMAL(7,0)"},
        {"name": "IMELFG", "data_type": "STRING"},
        {"name": "IMEXCC", "data_type": "STRING"},
        {"name": "IMELES", "data_type": "STRING"},
        {"name": "IMMERC", "data_type": "STRING"},
        {"name": "IMDIV", "data_type": "STRING"},
        {"name": "IMDEPT", "data_type": "STRING"},
        {"name": "IMCOST", "data_type": "DECIMAL(13,2)"},
        {"name": "IMINT", "data_type": "STRING"},
        {"name": "IMDTE", "data_type": "DECIMAL(7,0)"},
        {"name": "IMTME", "data_type": "DECIMAL(7,0)"},
        {"name": "IMUSR", "data_type": "STRING"}
    ]
) }}