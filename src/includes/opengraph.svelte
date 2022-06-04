
<script>
    import {current_page} from '@svelte-docs/get/routes';
    import maintitle from '@svelte-docs/get/maintitle';
    
    let site_name = 'Blackcoin Wiki'
    let descr = 'Wiki for Blackcoin - "The Original" - The First Pure Proof of Stake Bitcoin Fork - Since 2014';
    let img = '/static/banner.jpg';
    let baseUrl = 'https://wiki.blackcoin.nl/'
    $: title = $current_page.title ? $current_page.title + ' — ' + maintitle : maintitle;
    $: url = `${baseUrl}${$current_page.url}`;
</script>


<svelte:head>
    <meta property="og:url" content={url}>
    <meta property="og:site_name" content={site_name}>
    <meta property="article:publisher" content={baseUrl}>
    <meta property="og:type" content="article">
    <meta property="article:section" content="Wiki">
    <meta property="article:tag" content="Wiki">
    <meta property="og:title" content={title}>
    <meta property="og:description" content={descr}>
    <meta property="og:image" content={img}>
    <meta property="og:image:secure_url" content={img}>
    <meta property="og:image:width" content="1280">
    <meta property="og:image:height" content="640">
    <meta property="twitter:card" content="summary_large_image">
    <meta property="twitter:site" content="@BlackcoinNL">
</svelte:head>