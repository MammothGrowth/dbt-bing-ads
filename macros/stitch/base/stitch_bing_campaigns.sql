{% macro stitch_bing_campaigns() %}

    {{ adapter_macro('bing_ads.stitch_bing_campaigns') }}

{% endmacro %}


{% macro default__stitch_bing_campaigns() %}

select

    id as campaign_id,
    name,
    description,
    status,
    timezone,
    biddingscheme as bidding_scheme,
    budgettype as budget_type,
    campaigntype as campaign_type,
    dailybudget as daily_budget,
    trackingurltemplate as tracking_url_template,
    urlcustomparameters as url_custom_parameters

from {{source('bing_ads', var('campaigns_table'))}}

{% endmacro %}