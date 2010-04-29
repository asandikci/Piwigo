<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html lang="{$lang_info.code}" dir="{$lang_info.direction}">
<head>
<meta http-equiv="Content-Type" content="text/html; charset={$CONTENT_ENCODING}">
<meta name="generator" content="Piwigo (aka PWG), see piwigo.org">
{if isset($meta_ref) } 
{if isset($INFO_AUTHOR)}
<meta name="author" content="{$INFO_AUTHOR|@replace:'"':' '}">
{/if}
{if isset($related_tags)}
<meta name="keywords" content="{foreach from=$related_tags item=tag name=tag_loop}{if !$smarty.foreach.tag_loop.first}, {/if}{$tag.name}{/foreach}">
{/if}
{if isset($COMMENT_IMG)}
<meta name="description" content="{$COMMENT_IMG|@strip_tags:false|@replace:'"':' '}{if isset($INFO_FILE)} - {$INFO_FILE}{/if}">
{else}
<meta name="description" content="{$PAGE_TITLE}{if isset($INFO_FILE)} - {$INFO_FILE}{/if}">
{/if}
{/if}

{if (isset($REVERSE) and $REVERSE and $PAGE_TITLE == l10n('Home'))}
<title>{$GALLERY_TITLE} | {$PAGE_TITLE}</title>{else}
<title>{$PAGE_TITLE} | {$GALLERY_TITLE}</title>{/if}
<link rel="shortcut icon" type="image/x-icon" href="{$ROOT_URL}{$themeconf.icon_dir}/favicon.ico">

<link rel="start" title="{'Home'|@translate}" href="{$U_HOME}" >
<link rel="search" title="{'Search'|@translate}" href="{$ROOT_URL}search.php" >
{if isset($first.U_IMG)   }<link rel="first" title="{'First'|@translate}" href="{$first.U_IMG}" >{/if}
{if isset($previous.U_IMG)}<link rel="prev" title="{'Previous'|@translate}" href="{$previous.U_IMG}" >{/if}
{if isset($next.U_IMG)    }<link rel="next" title="{'Next'|@translate}" href="{$next.U_IMG}" >{/if}
{if isset($last.U_IMG)    }<link rel="last" title="{'Last'|@translate}" href="{$last.U_IMG}" >{/if}
{if isset($U_UP)          }<link rel="up" title="{'Thumbnails'|@translate}" href="{$U_UP}" >{/if}

{foreach from=$themes item=theme}
{if $theme.load_css}
<link rel="stylesheet" type="text/css" href="{$ROOT_URL}themes/{$theme.id}/theme.css">
{/if}
{if isset($theme.local_head)}{include file=$theme.local_head}{/if}
{/foreach}
{* the next css is used to fix khtml (Konqueror/Safari) issue the "text/nonsense" prevents gecko based browsers to load it *}
<link rel="stylesheet" type="text/nonsense" href="{$ROOT_URL}themes/default/fix-khtml.css">
<!--[if lt IE 7]>
	<link rel="stylesheet" type="text/css" href="{$ROOT_URL}themes/default/fix-ie5-ie6.css">
<![endif]-->
<!--[if IE 7]>
	<link rel="stylesheet" type="text/css" href="{$ROOT_URL}themes/default/fix-ie7.css">
<![endif]-->
<!--[if !IE]> <-->
	<link rel="stylesheet" href="{$ROOT_URL}themes/default/not-ie.css" type="text/css">
<!--> <![endif]-->
<link rel="stylesheet" type="text/css" media="print" href="{$ROOT_URL}themes/default/print.css">

{if isset($U_PREFETCH)          }<link rel="prefetch" href="{$U_PREFETCH}">{/if}

{if not empty($page_refresh)    }<meta http-equiv="refresh" content="{$page_refresh.TIME};url={$page_refresh.U_REFRESH}">{/if}

<script type="text/javascript" src="{$ROOT_URL}themes/default/js/scripts.js"></script>
<!--[if lt IE 7]>
<script type="text/javascript" src="{$ROOT_URL}themes/default/js/pngfix.js"></script>
<![endif]-->

{if not empty($head_elements)}
	{foreach from=$head_elements item=elt}{$elt}
	{/foreach}
{/if}

</head>

<body id="{$BODY_ID}">
<div id="the_page">

{if not empty($header_msgs)}
<div class="header_msgs">
	{foreach from=$header_msgs item=elt}
	{$elt}<br>
	{/foreach}
</div>
{/if}

<div id="theHeader">{$PAGE_BANNER}</div>
{if isset($theSwiftHeader)}{$theSwiftHeader}{/if}
{if not empty($header_notes)}
<div class="header_notes">
	{foreach from=$header_notes item=elt}
	<p>{$elt}</p>
	{/foreach}
</div>
{/if}
