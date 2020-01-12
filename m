Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19E8D13884D
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 Jan 2020 21:58:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gBkLjqYuQdk9mQOciOwr/URGuopFwRHvxkd0fqJn3Nw=; b=SEGuxYn52V/+V2
	LUGVbZpVXXksQ9L8ZNUm1jqokE7lkcKKP6rYnL4odrtrBN0W8ollT5sBTUNfp8M9wfCredN/a7+sd
	bP3KZQ1yWzqmICkMU0FgNaiO8DdbaJWJiRA3wwGMcZUH+vzSJBzQMokC3y7Y9mEPn/tYiLG/HZKoc
	rvZ4Vw99ux/kGFQWAriFR/6kkNt8iHm+S9bl4BnzJlSdWa2XnRXnjbnSM5ei8qVJzvEfC6lN0UlAn
	rnojMNLgN0ZBocvGlOXUxp1+M3ax9CT6ROF/UNABLrWnCu9iuC1om3SMvINp2xSf3ft2tf852zaqo
	gYplELT27VU3Y+TRTkCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqkJ9-0005ou-5l; Sun, 12 Jan 2020 20:58:03 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqkIz-0005nl-Ka
 for linux-arm-kernel@lists.infradead.org; Sun, 12 Jan 2020 20:57:55 +0000
Received: by mail-lj1-x243.google.com with SMTP id m26so7756951ljc.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 12 Jan 2020 12:57:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ragnatech-se.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=UN4XReRlpltgJU5IYYlZuWIY+d5JPFL7kZ7D18dHO8M=;
 b=SbmE2sI4DDp3iy5iAWsofij8Uy3C8/RwP3ouXjGqlPU7TbByzWAh7b+dGOZY3nGHAz
 I7raA62FrZQKMaBb7qaMxEEvEImdee0Y7lkTj3UoeU28hmpzv1nEPv9tfWrueIZfBqr7
 YhNxcPmUEA4Pm8FRneIOPgVbFtJTO0L40T4/aVuJe6Byy12//OV808neJaNIC9ZM6rxQ
 nkAhVXHpeZfHHXXQ07obcSEUv1Fm/DsyHbjuta4EH/R27573xk0AZ3Y/cZm069ME3dz9
 tpS54FaOp1ac5Pc2T9brt7Dpxp1o6wKXJeyaowqhdq5JPxbQyWC+Ju2jwBEtw/KSBTbL
 RXiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=UN4XReRlpltgJU5IYYlZuWIY+d5JPFL7kZ7D18dHO8M=;
 b=MQ5U/7wnJkLZveJUWnqgEHimUlt1CNQ9rT3PoFAIoecPSYJbXb8YqVzax6xKf41C8A
 5lar7MDQpCdh/N4i5zleeTjh/OjM/PhCEfHbvPk7jxDQBv2XLJENH6VL2FrXl1IpbrMr
 0KfblZMFnp23b1JJZLk97XzOMJm/KqowRRmhhykcJLkiPOONxqpi2K/KGfYJdX8x3IRl
 yLpayovwxTxPCb1ORO664nfk8bUT008ZuJzdX1pA2Y41xEQU3Q7Y3G88N8MXci0mIevl
 zZ/xX4EmQx1xg2sAugOp8rHrnV6pTHOv1Gwotv8p+jZMJ4CEVxRvxv9W0lrDvGpbDdrS
 w9vw==
X-Gm-Message-State: APjAAAUKOuUg/mf9qn5VZtHQoxYC9ViLCXt0Z8a/hbtoKP3KODGbRr+/
 Tqjuei+DD2rfpkKfUEL4IGtqZQ==
X-Google-Smtp-Source: APXvYqzu2xf1jitE7NWQvGX/9YYxnhkYBbfPIGbZMA/npAq9/I499WZuYQbzbxaRTyWO6CVoy66CMw==
X-Received: by 2002:a2e:9ad0:: with SMTP id p16mr8919557ljj.111.1578862670960; 
 Sun, 12 Jan 2020 12:57:50 -0800 (PST)
Received: from localhost (h-93-159.A463.priv.bahnhof.se. [46.59.93.159])
 by smtp.gmail.com with ESMTPSA id s2sm4740936lji.53.2020.01.12.12.57.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 12 Jan 2020 12:57:50 -0800 (PST)
Date: Sun, 12 Jan 2020 21:57:49 +0100
From: Niklas =?iso-8859-1?Q?S=F6derlund?= <niklas.soderlund@ragnatech.se>
To: marek.vasut@gmail.com
Subject: Re: [RFC][PATCH] ARM: dts: renesas: Add missing ethernet PHY reset
 GPIO on Gen2 reference boards
Message-ID: <20200112205749.GB784242@oden.dyn.berto.se>
References: <20200112191315.118831-1-marek.vasut@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200112191315.118831-1-marek.vasut@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200112_125753_728806_F639CC0D 
X-CRM114-Status: GOOD (  16.78  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-renesas-soc@vger.kernel.org,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-arm-kernel@lists.infradead.org,
 Marek Vasut <marek.vasut+renesas@gmail.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marek,

Thanks for your work.

On 2020-01-12 20:13:15 +0100, Marek Vasut wrote:
> From: Marek Vasut <marek.vasut+renesas@gmail.com>
> =

> The ethernet PHY reset GPIO was missing and the kernel was depending
> solely on the bootloader to bring the PHY out of reset. Fix this to
> get rid of the dependency on bootloader.
> =

> Signed-off-by: Marek Vasut <marek.vasut+renesas@gmail.com>
> Cc: Geert Uytterhoeven <geert+renesas@glider.be>
> Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>
> Cc: linux-renesas-soc@vger.kernel.org
> To: linux-arm-kernel@lists.infradead.org
> ---
> NOTE: Thus far tested on R8A7791 Koelsch

I also only have a Koelsch board, but for what it's worth (for Koelsch):

Tested-by: Niklas S=F6derlund <niklas.soderlund+renesas@ragnatech.se>

> ---
>  arch/arm/boot/dts/r8a7790-lager.dts   | 1 +
>  arch/arm/boot/dts/r8a7790-stout.dts   | 1 +
>  arch/arm/boot/dts/r8a7791-koelsch.dts | 1 +
>  arch/arm/boot/dts/r8a7791-porter.dts  | 1 +
>  arch/arm/boot/dts/r8a7793-gose.dts    | 1 +
>  arch/arm/boot/dts/r8a7794-alt.dts     | 1 +
>  arch/arm/boot/dts/r8a7794-silk.dts    | 1 +
>  7 files changed, 7 insertions(+)
> =

> diff --git a/arch/arm/boot/dts/r8a7790-lager.dts b/arch/arm/boot/dts/r8a7=
790-lager.dts
> index 097fd9317c6e..b88d4f4d5d9e 100644
> --- a/arch/arm/boot/dts/r8a7790-lager.dts
> +++ b/arch/arm/boot/dts/r8a7790-lager.dts
> @@ -671,6 +671,7 @@ &ether {
>  =

>  	phy1: ethernet-phy@1 {
>  		reg =3D <1>;
> +		reset-gpios =3D <&gpio5 31 GPIO_ACTIVE_LOW>;
>  		interrupt-parent =3D <&irqc0>;
>  		interrupts =3D <0 IRQ_TYPE_LEVEL_LOW>;
>  		micrel,led-mode =3D <1>;
> diff --git a/arch/arm/boot/dts/r8a7790-stout.dts b/arch/arm/boot/dts/r8a7=
790-stout.dts
> index a315ba749aa4..98dcfcbf0b70 100644
> --- a/arch/arm/boot/dts/r8a7790-stout.dts
> +++ b/arch/arm/boot/dts/r8a7790-stout.dts
> @@ -200,6 +200,7 @@ &ether {
>  =

>  	phy1: ethernet-phy@1 {
>  		reg =3D <1>;
> +		reset-gpios =3D <&gpio3 31 GPIO_ACTIVE_LOW>;
>  		interrupt-parent =3D <&irqc0>;
>  		interrupts =3D <1 IRQ_TYPE_LEVEL_LOW>;
>  		micrel,led-mode =3D <1>;
> diff --git a/arch/arm/boot/dts/r8a7791-koelsch.dts b/arch/arm/boot/dts/r8=
a7791-koelsch.dts
> index 2b096d5e06fb..6619689a17d4 100644
> --- a/arch/arm/boot/dts/r8a7791-koelsch.dts
> +++ b/arch/arm/boot/dts/r8a7791-koelsch.dts
> @@ -630,6 +630,7 @@ &ether {
>  =

>  	phy1: ethernet-phy@1 {
>  		reg =3D <1>;
> +		reset-gpios =3D <&gpio5 22 GPIO_ACTIVE_LOW>;
>  		interrupt-parent =3D <&irqc0>;
>  		interrupts =3D <0 IRQ_TYPE_LEVEL_LOW>;
>  		micrel,led-mode =3D <1>;
> diff --git a/arch/arm/boot/dts/r8a7791-porter.dts b/arch/arm/boot/dts/r8a=
7791-porter.dts
> index f9ece7ab2010..2ba2e8e5f1c3 100644
> --- a/arch/arm/boot/dts/r8a7791-porter.dts
> +++ b/arch/arm/boot/dts/r8a7791-porter.dts
> @@ -304,6 +304,7 @@ &ether {
>  =

>  	phy1: ethernet-phy@1 {
>  		reg =3D <1>;
> +		reset-gpios =3D <&gpio5 22 GPIO_ACTIVE_LOW>;
>  		interrupt-parent =3D <&irqc0>;
>  		interrupts =3D <0 IRQ_TYPE_LEVEL_LOW>;
>  		micrel,led-mode =3D <1>;
> diff --git a/arch/arm/boot/dts/r8a7793-gose.dts b/arch/arm/boot/dts/r8a77=
93-gose.dts
> index 22ca7cd1e7d2..4da82f1e1e94 100644
> --- a/arch/arm/boot/dts/r8a7793-gose.dts
> +++ b/arch/arm/boot/dts/r8a7793-gose.dts
> @@ -588,6 +588,7 @@ &ether {
>  =

>  	phy1: ethernet-phy@1 {
>  		reg =3D <1>;
> +		reset-gpios =3D <&gpio5 22 GPIO_ACTIVE_LOW>;
>  		interrupt-parent =3D <&irqc0>;
>  		interrupts =3D <0 IRQ_TYPE_LEVEL_LOW>;
>  		micrel,led-mode =3D <1>;
> diff --git a/arch/arm/boot/dts/r8a7794-alt.dts b/arch/arm/boot/dts/r8a779=
4-alt.dts
> index f79fce74cd9c..7aa1e8ca808b 100644
> --- a/arch/arm/boot/dts/r8a7794-alt.dts
> +++ b/arch/arm/boot/dts/r8a7794-alt.dts
> @@ -340,6 +340,7 @@ &ether {
>  =

>  	phy1: ethernet-phy@1 {
>  		reg =3D <1>;
> +		reset-gpios =3D <&gpio1 24 GPIO_ACTIVE_LOW>;
>  		interrupt-parent =3D <&irqc0>;
>  		interrupts =3D <8 IRQ_TYPE_LEVEL_LOW>;
>  		micrel,led-mode =3D <1>;
> diff --git a/arch/arm/boot/dts/r8a7794-silk.dts b/arch/arm/boot/dts/r8a77=
94-silk.dts
> index 2c16ad854300..3c0ed684f4a1 100644
> --- a/arch/arm/boot/dts/r8a7794-silk.dts
> +++ b/arch/arm/boot/dts/r8a7794-silk.dts
> @@ -391,6 +391,7 @@ &ether {
>  =

>  	phy1: ethernet-phy@1 {
>  		reg =3D <1>;
> +		reset-gpios =3D <&gpio1 24 GPIO_ACTIVE_LOW>;
>  		interrupt-parent =3D <&irqc0>;
>  		interrupts =3D <8 IRQ_TYPE_LEVEL_LOW>;
>  		micrel,led-mode =3D <1>;
> -- =

> 2.24.1
> =


-- =

Regards,
Niklas S=F6derlund

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
