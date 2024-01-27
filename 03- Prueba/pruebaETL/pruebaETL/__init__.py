from dagster import (
    AssetSelection,
    Definitions,
    ScheduleDefinition,
    define_asset_job,
    load_assets_from_modules,
)

from . import assets

all_assets = load_assets_from_modules([assets])

jobs = define_asset_job("jobs", selection=AssetSelection.all())

jobs_schedule = ScheduleDefinition(
    job=jobs,
    cron_schedule="0 0 * * *",  
)

defs = Definitions(
    assets=all_assets,
    schedules=[jobs_schedule],
)
