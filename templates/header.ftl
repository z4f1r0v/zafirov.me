<!DOCTYPE html>
<html>
  <head>
  <head>
      <!-- Global site tag (gtag.js) - Google Analytics -->
      <script async src="https://www.googletagmanager.com/gtag/js?id=UA-77368278-1"></script>
      <script>
    window.dataLayer = window.dataLayer || [];
    function gtag(){dataLayer.push(arguments);}
    gtag('js', new Date());

    gtag('config', 'UA-77368278-1');

      </script>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name=“viewport” content=“width=device-width, initial-scale=1">
    <meta charset="utf-8">
    <meta name="description" content="${site.description}">
    <meta http-equiv="content-language" content="en-us">

    <#if pageType??>
      <#if pageType == "archive">
        <title>Blog - ${site.title}</title>
      <#elseif pageType == "post" && content.title??>
        <title>${content.title} - ${site.title}</title>
      <#elseif pageType == "custom" && pageTitle??>
          <title>${pageTitle} - ${site.title}</title>
      <#else>
        <title>${site.title}</title>
      </#if>
    <#else>
      <title>${site.title}</title>
    </#if>

    <link href="/css/styles.css" rel="stylesheet">
