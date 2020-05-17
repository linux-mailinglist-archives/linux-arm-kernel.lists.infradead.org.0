Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AFB71D68BD
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 17 May 2020 18:03:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FBPvSeYzrxEVDI9uNHfDKXn7eKr6qRkihQfMASdvAyA=; b=BYQUsLkIBGqKLe
	tdIKaez97bB0XxKgEdgK63gknPQdrJ2ZcCnrIscOCcXiN/4t+c98cuXxaSRdzaQM6Xye+cdas4V26
	9PjGLaKAh7esQZNoPuWCJE4ctakNE/dhbsP6o+25JpzPludErEU+B51SH72oO4Nf2EtkVT/bE4MNd
	6nu/QSlZcilhyTjBZ6LmcrENMeqcV/rrZJTfWguYiRDzVy6JxQaRPk5zbDRinAfInU3LYD+pbPqP7
	AzItKD1LvST7wkARS0Q65TkFQGoWSDLbBaNwDDtJAjVD6ZLvYQbAancQeP/WLxbpOPJ+RQ7EVgv2u
	WbMcQMhZwr4uWumiAh3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaLkq-00064w-1G; Sun, 17 May 2020 16:03:08 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaLkb-0005yS-AQ
 for linux-arm-kernel@lists.infradead.org; Sun, 17 May 2020 16:02:55 +0000
X-Originating-IP: 91.175.115.186
Received: from localhost (91-175-115-186.subs.proxad.net [91.175.115.186])
 (Authenticated sender: gregory.clement@bootlin.com)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 32EFF1BF208;
 Sun, 17 May 2020 16:02:46 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Baruch Siach <baruch@tkos.co.il>, Jason Cooper <jason@lakedaemon.net>,
 Andrew Lunn <andrew@lunn.ch>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Subject: Re: [PATCH 1/2] ARM: dts: marvell: drop i2c timeout-ms property
In-Reply-To: <21ba4c9abd5e411ba936ead8f043c5a7e490d530.1588134636.git.baruch@tkos.co.il>
References: <21ba4c9abd5e411ba936ead8f043c5a7e490d530.1588134636.git.baruch@tkos.co.il>
Date: Sun, 17 May 2020 18:02:46 +0200
Message-ID: <87k11ah7mh.fsf@FE-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200517_090253_649577_F5951575 
X-CRM114-Status: UNSURE (   9.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.201 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Baruch Siach <baruch@tkos.co.il>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Baruch,

> The timeout-ms property for i2c master nodes is undocumented, and as
> never been supported. Drop it.
>
> Signed-off-by: Baruch Siach <baruch@tkos.co.il>

Applied on mvebu/dt

Thanks,

Gregory

> ---
>  arch/arm/boot/dts/armada-370-xp.dtsi | 2 --
>  arch/arm/boot/dts/armada-375.dtsi    | 2 --
>  arch/arm/boot/dts/armada-38x.dtsi    | 2 --
>  arch/arm/boot/dts/armada-39x.dtsi    | 4 ----
>  arch/arm/boot/dts/dove.dtsi          | 1 -
>  5 files changed, 11 deletions(-)
>
> diff --git a/arch/arm/boot/dts/armada-370-xp.dtsi b/arch/arm/boot/dts/armada-370-xp.dtsi
> index c15f5e92f97f..0b8c2a64b36f 100644
> --- a/arch/arm/boot/dts/armada-370-xp.dtsi
> +++ b/arch/arm/boot/dts/armada-370-xp.dtsi
> @@ -114,7 +114,6 @@ i2c0: i2c@11000 {
>  				#address-cells = <1>;
>  				#size-cells = <0>;
>  				interrupts = <31>;
> -				timeout-ms = <1000>;
>  				clocks = <&coreclk 0>;
>  				status = "disabled";
>  			};
> @@ -124,7 +123,6 @@ i2c1: i2c@11100 {
>  				#address-cells = <1>;
>  				#size-cells = <0>;
>  				interrupts = <32>;
> -				timeout-ms = <1000>;
>  				clocks = <&coreclk 0>;
>  				status = "disabled";
>  			};
> diff --git a/arch/arm/boot/dts/armada-375.dtsi b/arch/arm/boot/dts/armada-375.dtsi
> index 2932a29ae272..9805e507c695 100644
> --- a/arch/arm/boot/dts/armada-375.dtsi
> +++ b/arch/arm/boot/dts/armada-375.dtsi
> @@ -236,7 +236,6 @@ i2c0: i2c@11000 {
>  				#address-cells = <1>;
>  				#size-cells = <0>;
>  				interrupts = <GIC_SPI 2 IRQ_TYPE_LEVEL_HIGH>;
> -				timeout-ms = <1000>;
>  				clocks = <&coreclk 0>;
>  				status = "disabled";
>  			};
> @@ -247,7 +246,6 @@ i2c1: i2c@11100 {
>  				#address-cells = <1>;
>  				#size-cells = <0>;
>  				interrupts = <GIC_SPI 3 IRQ_TYPE_LEVEL_HIGH>;
> -				timeout-ms = <1000>;
>  				clocks = <&coreclk 0>;
>  				status = "disabled";
>  			};
> diff --git a/arch/arm/boot/dts/armada-38x.dtsi b/arch/arm/boot/dts/armada-38x.dtsi
> index e038abc0c6b4..348116501aa2 100644
> --- a/arch/arm/boot/dts/armada-38x.dtsi
> +++ b/arch/arm/boot/dts/armada-38x.dtsi
> @@ -153,7 +153,6 @@ i2c0: i2c@11000 {
>  				#address-cells = <1>;
>  				#size-cells = <0>;
>  				interrupts = <GIC_SPI 2 IRQ_TYPE_LEVEL_HIGH>;
> -				timeout-ms = <1000>;
>  				clocks = <&coreclk 0>;
>  				status = "disabled";
>  			};
> @@ -164,7 +163,6 @@ i2c1: i2c@11100 {
>  				#address-cells = <1>;
>  				#size-cells = <0>;
>  				interrupts = <GIC_SPI 3 IRQ_TYPE_LEVEL_HIGH>;
> -				timeout-ms = <1000>;
>  				clocks = <&coreclk 0>;
>  				status = "disabled";
>  			};
> diff --git a/arch/arm/boot/dts/armada-39x.dtsi b/arch/arm/boot/dts/armada-39x.dtsi
> index b1b86934c688..e0b7c2099831 100644
> --- a/arch/arm/boot/dts/armada-39x.dtsi
> +++ b/arch/arm/boot/dts/armada-39x.dtsi
> @@ -108,7 +108,6 @@ i2c0: i2c@11000 {
>  				#address-cells = <1>;
>  				#size-cells = <0>;
>  				interrupts = <GIC_SPI 2 IRQ_TYPE_LEVEL_HIGH>;
> -				timeout-ms = <1000>;
>  				clocks = <&coreclk 0>;
>  				status = "disabled";
>  			};
> @@ -119,7 +118,6 @@ i2c1: i2c@11100 {
>  				#address-cells = <1>;
>  				#size-cells = <0>;
>  				interrupts = <GIC_SPI 3 IRQ_TYPE_LEVEL_HIGH>;
> -				timeout-ms = <1000>;
>  				clocks = <&coreclk 0>;
>  				status = "disabled";
>  			};
> @@ -130,7 +128,6 @@ i2c2: i2c@11200 {
>  				#address-cells = <1>;
>  				#size-cells = <0>;
>  				interrupts = <GIC_SPI 4 IRQ_TYPE_LEVEL_HIGH>;
> -				timeout-ms = <1000>;
>  				clocks = <&coreclk 0>;
>  				status = "disabled";
>  			};
> @@ -141,7 +138,6 @@ i2c3: i2c@11300 {
>  				#address-cells = <1>;
>  				#size-cells = <0>;
>  				interrupts = <GIC_SPI 5 IRQ_TYPE_LEVEL_HIGH>;
> -				timeout-ms = <1000>;
>  				clocks = <&coreclk 0>;
>  				status = "disabled";
>  			};
> diff --git a/arch/arm/boot/dts/dove.dtsi b/arch/arm/boot/dts/dove.dtsi
> index 3081b04e8c08..a551fabae851 100644
> --- a/arch/arm/boot/dts/dove.dtsi
> +++ b/arch/arm/boot/dts/dove.dtsi
> @@ -175,7 +175,6 @@ i2c: i2c@11000 {
>  				#size-cells = <0>;
>  				interrupts = <11>;
>  				clock-frequency = <400000>;
> -				timeout-ms = <1000>;
>  				clocks = <&core_clk 0>;
>  				status = "okay";
>  			};
> -- 
> 2.26.2
>

-- 
Gregory Clement, Bootlin
Embedded Linux and Kernel engineering
http://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
