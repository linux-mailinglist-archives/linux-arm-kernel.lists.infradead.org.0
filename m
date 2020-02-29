Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B559B17454F
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 29 Feb 2020 07:08:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jAQ2+I07V+i/l9hpNQDk+7NI4racbQe26Nx7fIMC3ug=; b=NeeM/4I3S+COIH
	Gjh+BlwfSyeIe/niks0HKQc7wT2YAa4hHamFt2E9j0ccxafBWLF1sN6wkMP8dOHt3nmNVI8hW/Slc
	4lEMDgG6epL6qvUMaT2tjxmdRNiS2Ei7ejjA6CB6TI61w6Bq81FwswtxfCwRGcXgU7R57dwOv200Z
	SVZQC0Skvcr9zL2pJ5x0sRX/zg3YQT5xYRDRmiHyCzO7enuHXwwkckVhRiwrYV5HM9CXEkGc0/Je1
	zyCM0C4mQXNn1Wkt9BdvN0UZYTEL8f4UDg9eMEs6Jnz8Yog+QT+mIZtnY6jM9n9BjqA/aRBQAHpwG
	bVOULN/SB0YFhIYpGi+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7vId-0005kV-TR; Sat, 29 Feb 2020 06:08:31 +0000
Received: from conssluserg-05.nifty.com ([210.131.2.90])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7vIR-0005iy-3W
 for linux-arm-kernel@lists.infradead.org; Sat, 29 Feb 2020 06:08:21 +0000
Received: from mail-ua1-f43.google.com (mail-ua1-f43.google.com
 [209.85.222.43]) (authenticated)
 by conssluserg-05.nifty.com with ESMTP id 01T68475027069
 for <linux-arm-kernel@lists.infradead.org>; Sat, 29 Feb 2020 15:08:04 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-05.nifty.com 01T68475027069
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1582956485;
 bh=MPlTFlGFOYGEN3wAxlaLHIRWtngnYQ4XIJlxJ/a/yLc=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=YJq/gTCYvlxhgM30Kqw/i0LSYVLlYHTx3+2gcBhwmK1rWoD85wZHVjhB473I1cA9z
 e7CTlet+8Fs6AjAsmGIiStEfEDtO9j8qfXmjhXJE4xgXNgGI7IbNGZ7hDmrdlQcaa0
 TMJSSK9lYMwL2Zj4m8LcnWg9+0aFyCzRXWXAOiRKUyHwlJevvBP5Yd9sfJ8+H2EpmT
 9MzRKCiAj9aiH705htDG/4uy+to9jcKn+zCmmaFYn8rGKCI678QjdhS2nn7yswgzu1
 duZCT8mohG1TZh932ubd1ZRUGaovwTs+ZMlo+n0B0zts/mdEa8i+VaAOeRPQ/165ud
 sIOIiTo64y8NQ==
X-Nifty-SrcIP: [209.85.222.43]
Received: by mail-ua1-f43.google.com with SMTP id y3so1809696uae.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 28 Feb 2020 22:08:04 -0800 (PST)
X-Gm-Message-State: ANhLgQ3w0gxPzALAFJH8bm/TRiMI6JKCgXSVpBE2O5oZm+UGbdBfxQjS
 oxqcESdnTl1xoVrkAYhYMsfsVrYxh4K00QIPgvQ=
X-Google-Smtp-Source: ADFU+vvD+Jes1r5LCq19pCWnEzIalPq/2VR6XM24yQcSfzbLuAgf5XLPlQKQLx7SVBw4EIpuLJtnBOfj6+Tppj9etdg=
X-Received: by 2002:ab0:14ea:: with SMTP id f39mr3906665uae.40.1582956483318; 
 Fri, 28 Feb 2020 22:08:03 -0800 (PST)
MIME-Version: 1.0
References: <20200227123726.12910-1-yamada.masahiro@socionext.com>
In-Reply-To: <20200227123726.12910-1-yamada.masahiro@socionext.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Sat, 29 Feb 2020 15:07:27 +0900
X-Gmail-Original-Message-ID: <CAK7LNARGNmg8VtwZgxets5NYLnNrzp1eryEOEFGyCxDvKiVisQ@mail.gmail.com>
Message-ID: <CAK7LNARGNmg8VtwZgxets5NYLnNrzp1eryEOEFGyCxDvKiVisQ@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: uniphier: rename cache controller nodes to
 follow json-schema
To: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_220819_378185_1D33438D 
X-CRM114-Status: GOOD (  16.04  )
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
 Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 27, 2020 at 9:38 PM Masahiro Yamada
<yamada.masahiro@socionext.com> wrote:
>
> Follow the standard nodename pattern
> "^(cache-controller|cpu)(@[0-9a-f,]+)*$" defined in
> schemas/cache-controller.yaml of dt-schema.
>
> Otherwise, after the dt-binding is converted to json-schema,
> 'make ARCH=arm dtbs_check' will show a warning like this:
>
>   l2-cache@500c0000: $nodename:0: 'l2-cache@500c0000' does not match '^(cache-controller|cpu)(@[0-9a-f,]+)*$'
>
> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> ---

Applied to linux-uniphier.

>
>  arch/arm/boot/dts/uniphier-ld4.dtsi  | 2 +-
>  arch/arm/boot/dts/uniphier-pro4.dtsi | 2 +-
>  arch/arm/boot/dts/uniphier-pro5.dtsi | 4 ++--
>  arch/arm/boot/dts/uniphier-pxs2.dtsi | 2 +-
>  arch/arm/boot/dts/uniphier-sld8.dtsi | 2 +-
>  5 files changed, 6 insertions(+), 6 deletions(-)
>
> diff --git a/arch/arm/boot/dts/uniphier-ld4.dtsi b/arch/arm/boot/dts/uniphier-ld4.dtsi
> index 197bee7d8b7f..06e7400d2940 100644
> --- a/arch/arm/boot/dts/uniphier-ld4.dtsi
> +++ b/arch/arm/boot/dts/uniphier-ld4.dtsi
> @@ -51,7 +51,7 @@
>                 ranges;
>                 interrupt-parent = <&intc>;
>
> -               l2: l2-cache@500c0000 {
> +               l2: cache-controller@500c0000 {
>                         compatible = "socionext,uniphier-system-cache";
>                         reg = <0x500c0000 0x2000>, <0x503c0100 0x4>,
>                               <0x506c0000 0x400>;
> diff --git a/arch/arm/boot/dts/uniphier-pro4.dtsi b/arch/arm/boot/dts/uniphier-pro4.dtsi
> index b02bc8a6346b..1c866f0306fc 100644
> --- a/arch/arm/boot/dts/uniphier-pro4.dtsi
> +++ b/arch/arm/boot/dts/uniphier-pro4.dtsi
> @@ -59,7 +59,7 @@
>                 ranges;
>                 interrupt-parent = <&intc>;
>
> -               l2: l2-cache@500c0000 {
> +               l2: cache-controller@500c0000 {
>                         compatible = "socionext,uniphier-system-cache";
>                         reg = <0x500c0000 0x2000>, <0x503c0100 0x4>,
>                               <0x506c0000 0x400>;
> diff --git a/arch/arm/boot/dts/uniphier-pro5.dtsi b/arch/arm/boot/dts/uniphier-pro5.dtsi
> index f84a43a10f38..da772429b55a 100644
> --- a/arch/arm/boot/dts/uniphier-pro5.dtsi
> +++ b/arch/arm/boot/dts/uniphier-pro5.dtsi
> @@ -131,7 +131,7 @@
>                 ranges;
>                 interrupt-parent = <&intc>;
>
> -               l2: l2-cache@500c0000 {
> +               l2: cache-controller@500c0000 {
>                         compatible = "socionext,uniphier-system-cache";
>                         reg = <0x500c0000 0x2000>, <0x503c0100 0x8>,
>                               <0x506c0000 0x400>;
> @@ -144,7 +144,7 @@
>                         next-level-cache = <&l3>;
>                 };
>
> -               l3: l3-cache@500c8000 {
> +               l3: cache-controller@500c8000 {
>                         compatible = "socionext,uniphier-system-cache";
>                         reg = <0x500c8000 0x2000>, <0x503c8100 0x8>,
>                               <0x506c8000 0x400>;
> diff --git a/arch/arm/boot/dts/uniphier-pxs2.dtsi b/arch/arm/boot/dts/uniphier-pxs2.dtsi
> index 989b2a241822..7044f8700cb2 100644
> --- a/arch/arm/boot/dts/uniphier-pxs2.dtsi
> +++ b/arch/arm/boot/dts/uniphier-pxs2.dtsi
> @@ -157,7 +157,7 @@
>                 ranges;
>                 interrupt-parent = <&intc>;
>
> -               l2: l2-cache@500c0000 {
> +               l2: cache-controller@500c0000 {
>                         compatible = "socionext,uniphier-system-cache";
>                         reg = <0x500c0000 0x2000>, <0x503c0100 0x8>,
>                               <0x506c0000 0x400>;
> diff --git a/arch/arm/boot/dts/uniphier-sld8.dtsi b/arch/arm/boot/dts/uniphier-sld8.dtsi
> index fbfd25050a04..09992163e1f4 100644
> --- a/arch/arm/boot/dts/uniphier-sld8.dtsi
> +++ b/arch/arm/boot/dts/uniphier-sld8.dtsi
> @@ -51,7 +51,7 @@
>                 ranges;
>                 interrupt-parent = <&intc>;
>
> -               l2: l2-cache@500c0000 {
> +               l2: cache-controller@500c0000 {
>                         compatible = "socionext,uniphier-system-cache";
>                         reg = <0x500c0000 0x2000>, <0x503c0100 0x4>,
>                               <0x506c0000 0x400>;
> --
> 2.17.1
>
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel



-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
