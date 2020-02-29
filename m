Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 486B9174564
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 29 Feb 2020 07:12:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HQc5TXvlBzEHsQHXs9DapEoHcCYEoTDdrJwto2okXrc=; b=kVPXog8B4oUlyE
	xbcWGekwX7V11LX2HHDc4J33EQHVpGVm/Uf52i88g38XVLOh+sC8XHuT6PgSqzYB3ZmnQOWuC6VFh
	NT5ArNpKNt24vtv0P3FTUzXjR29nbZiFk0gOVQWrsNztSTYwRz/MErLxls6Acyw5G3OXxRWU11FCB
	0labQJwZeOB+NldX+Th/RQxO43pyr7oc/Rga8Z05EKFy1AwCo47VGOmY9hsUc4smcn38cqSOoV1uv
	z2C3stQofSPeaptTryxVKj9wofiA1v4ELfM/bvu35U3J/qacBXudV8GkSppJryidoY0MFCmF2jDze
	aLHuPifkMct6vwqkeoRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7vMd-0000al-2E; Sat, 29 Feb 2020 06:12:39 +0000
Received: from conssluserg-05.nifty.com ([210.131.2.90])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7vMP-0000ZS-0q
 for linux-arm-kernel@lists.infradead.org; Sat, 29 Feb 2020 06:12:26 +0000
Received: from mail-vs1-f50.google.com (mail-vs1-f50.google.com
 [209.85.217.50]) (authenticated)
 by conssluserg-05.nifty.com with ESMTP id 01T6C9rE028909
 for <linux-arm-kernel@lists.infradead.org>; Sat, 29 Feb 2020 15:12:10 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-05.nifty.com 01T6C9rE028909
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1582956730;
 bh=S0njFHUxsIxjdz5yDTcE8c9CmwQQMKBJYk9q7UJP43s=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=XaaC3iYJbQAIenxVhP41okTS5fB0mpjVw7mgy+/WvZLWHg4kokqhbheDfQTyytYvm
 aJ/pqSqz31qLMVnRIS9OZy2dwJzu9rC4/R6//DG+RR5tfmP1+fSKtylUcTin8xnuUR
 4TVvYg6N368tKeXNtCxKv5P2oOEocfl4/xsAZd2QNX3nrkIhPxCz42jpLsCpXWEuH4
 mAN6dHJF6HCAnSnW7pDQfF23bFtFif29HBOeuNtn3JgawDyEdvLDya+GXPggfS9qAQ
 EFSeAB9Wo6byUC3RzLq/gLI/EKkBLFk8pJqw92J+A4PgDRKdDVgAVa7Auc+lUpC8Ha
 7qmjX7XglSUqg==
X-Nifty-SrcIP: [209.85.217.50]
Received: by mail-vs1-f50.google.com with SMTP id k188so3382792vsc.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 28 Feb 2020 22:12:09 -0800 (PST)
X-Gm-Message-State: ANhLgQ0zkPTME77x4bUiuvu19U/YWgcy6V8ppJvJbaPKoBgfDaB26NWN
 f6g+c95iQpiLmn2s1xEGbhKVQY8U1y3MT3EuKno=
X-Google-Smtp-Source: ADFU+vsr21moWJFN7V7QE8rx/N7pQ9ZhwoS/WYbo35jUF1cpQQ1ACOrc6b/XUt9sAeFWUZYy0BBG3rYpX/INBSWsitE=
X-Received: by 2002:a67:fa4b:: with SMTP id j11mr4503502vsq.155.1582956728783; 
 Fri, 28 Feb 2020 22:12:08 -0800 (PST)
MIME-Version: 1.0
References: <20200222064445.14903-1-yamada.masahiro@socionext.com>
In-Reply-To: <20200222064445.14903-1-yamada.masahiro@socionext.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Sat, 29 Feb 2020 15:11:33 +0900
X-Gmail-Original-Message-ID: <CAK7LNARa-t5f9d0NcyzQfGq3RaX8PnjUeuST8s0Wdfs1kP_vvg@mail.gmail.com>
Message-ID: <CAK7LNARa-t5f9d0NcyzQfGq3RaX8PnjUeuST8s0Wdfs1kP_vvg@mail.gmail.com>
Subject: Re: [PATCH 1/4] ARM: dts: uniphier: change SD/eMMC node names to
 follow json-schema
To: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_221225_311987_5368EF2E 
X-CRM114-Status: GOOD (  14.48  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.90 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, DTML <devicetree@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Feb 22, 2020 at 3:45 PM Masahiro Yamada
<yamada.masahiro@socionext.com> wrote:
>
> Follow the standard nodename pattern "^mmc(@.*)?$" defined in
> Documentation/devicetree/bindings/mmc/mmc-controller.yaml
>
> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> ---


Applied to linux-uniphier.


>  arch/arm/boot/dts/uniphier-ld4.dtsi  | 4 ++--
>  arch/arm/boot/dts/uniphier-pro4.dtsi | 6 +++---
>  arch/arm/boot/dts/uniphier-pro5.dtsi | 4 ++--
>  arch/arm/boot/dts/uniphier-pxs2.dtsi | 4 ++--
>  arch/arm/boot/dts/uniphier-sld8.dtsi | 4 ++--
>  5 files changed, 11 insertions(+), 11 deletions(-)
>
> diff --git a/arch/arm/boot/dts/uniphier-ld4.dtsi b/arch/arm/boot/dts/uniphier-ld4.dtsi
> index 64ec46c72a4c..f3a20dc0b22b 100644
> --- a/arch/arm/boot/dts/uniphier-ld4.dtsi
> +++ b/arch/arm/boot/dts/uniphier-ld4.dtsi
> @@ -245,7 +245,7 @@
>                         #dma-cells = <1>;
>                 };
>
> -               sd: sdhc@5a400000 {
> +               sd: mmc@5a400000 {
>                         compatible = "socionext,uniphier-sd-v2.91";
>                         status = "disabled";
>                         reg = <0x5a400000 0x200>;
> @@ -265,7 +265,7 @@
>                         sd-uhs-sdr50;
>                 };
>
> -               emmc: sdhc@5a500000 {
> +               emmc: mmc@5a500000 {
>                         compatible = "socionext,uniphier-sd-v2.91";
>                         status = "disabled";
>                         reg = <0x5a500000 0x200>;
> diff --git a/arch/arm/boot/dts/uniphier-pro4.dtsi b/arch/arm/boot/dts/uniphier-pro4.dtsi
> index 2ec04d7972ef..e96b5796f0f8 100644
> --- a/arch/arm/boot/dts/uniphier-pro4.dtsi
> +++ b/arch/arm/boot/dts/uniphier-pro4.dtsi
> @@ -279,7 +279,7 @@
>                         #dma-cells = <1>;
>                 };
>
> -               sd: sdhc@5a400000 {
> +               sd: mmc@5a400000 {
>                         compatible = "socionext,uniphier-sd-v2.91";
>                         status = "disabled";
>                         reg = <0x5a400000 0x200>;
> @@ -299,7 +299,7 @@
>                         sd-uhs-sdr50;
>                 };
>
> -               emmc: sdhc@5a500000 {
> +               emmc: mmc@5a500000 {
>                         compatible = "socionext,uniphier-sd-v2.91";
>                         status = "disabled";
>                         reg = <0x5a500000 0x200>;
> @@ -317,7 +317,7 @@
>                         non-removable;
>                 };
>
> -               sd1: sdhc@5a600000 {
> +               sd1: mmc@5a600000 {
>                         compatible = "socionext,uniphier-sd-v2.91";
>                         status = "disabled";
>                         reg = <0x5a600000 0x200>;
> diff --git a/arch/arm/boot/dts/uniphier-pro5.dtsi b/arch/arm/boot/dts/uniphier-pro5.dtsi
> index ea3961f920a0..f794a0676760 100644
> --- a/arch/arm/boot/dts/uniphier-pro5.dtsi
> +++ b/arch/arm/boot/dts/uniphier-pro5.dtsi
> @@ -469,7 +469,7 @@
>                         resets = <&sys_rst 2>, <&sys_rst 2>;
>                 };
>
> -               emmc: sdhc@68400000 {
> +               emmc: mmc@68400000 {
>                         compatible = "socionext,uniphier-sd-v3.1";
>                         status = "disabled";
>                         reg = <0x68400000 0x800>;
> @@ -485,7 +485,7 @@
>                         non-removable;
>                 };
>
> -               sd: sdhc@68800000 {
> +               sd: mmc@68800000 {
>                         compatible = "socionext,uniphier-sd-v3.1";
>                         status = "disabled";
>                         reg = <0x68800000 0x800>;
> diff --git a/arch/arm/boot/dts/uniphier-pxs2.dtsi b/arch/arm/boot/dts/uniphier-pxs2.dtsi
> index 13b0d4a7741f..04d6bef3a00f 100644
> --- a/arch/arm/boot/dts/uniphier-pxs2.dtsi
> +++ b/arch/arm/boot/dts/uniphier-pxs2.dtsi
> @@ -446,7 +446,7 @@
>                         };
>                 };
>
> -               emmc: sdhc@5a000000 {
> +               emmc: mmc@5a000000 {
>                         compatible = "socionext,uniphier-sd-v3.1.1";
>                         status = "disabled";
>                         reg = <0x5a000000 0x800>;
> @@ -462,7 +462,7 @@
>                         non-removable;
>                 };
>
> -               sd: sdhc@5a400000 {
> +               sd: mmc@5a400000 {
>                         compatible = "socionext,uniphier-sd-v3.1.1";
>                         status = "disabled";
>                         reg = <0x5a400000 0x800>;
> diff --git a/arch/arm/boot/dts/uniphier-sld8.dtsi b/arch/arm/boot/dts/uniphier-sld8.dtsi
> index 4fc6676f5486..beb1eac85436 100644
> --- a/arch/arm/boot/dts/uniphier-sld8.dtsi
> +++ b/arch/arm/boot/dts/uniphier-sld8.dtsi
> @@ -249,7 +249,7 @@
>                         #dma-cells = <1>;
>                 };
>
> -               sd: sdhc@5a400000 {
> +               sd: mmc@5a400000 {
>                         compatible = "socionext,uniphier-sd-v2.91";
>                         status = "disabled";
>                         reg = <0x5a400000 0x200>;
> @@ -269,7 +269,7 @@
>                         sd-uhs-sdr50;
>                 };
>
> -               emmc: sdhc@5a500000 {
> +               emmc: mmc@5a500000 {
>                         compatible = "socionext,uniphier-sd-v2.91";
>                         status = "disabled";
>                         reg = <0x5a500000 0x200>;
> --
> 2.17.1
>


-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
