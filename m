Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 077D323B62
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 16:59:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9utfiuvvDcj+T0pftZARiXqQc+GuAVyO8fleqyACWeM=; b=WBqyJvt7x10dmt
	1zXCvlwCIuhkjCkclC0YUtxnfFu7LpSynQRAZ4n8NIUySv/gMafHngo/m2fHz9xbX/oh/w5eT0SOo
	RuKOU2HQJbdhxJc0u1XgqavuncGn0h2XhtLXchHfoGx2zzRaaD2xDuud+8LpD6jV+dpOxOsL/xtyh
	9wHeTRGz7y8fo26+iuZC1S6wXjsDat84LiHjWm5ROA2ULgUTNlcmhPXO2BHcwQnppiON9iDXJdRAU
	rtF+y8vWF2fq+dtsU1oFYk6qF7GfeBsz+mrghvvyMqRtW0kLjamYZOiaVcTi7jFa/PtTCUbZnooWa
	meHDeju4P2mjV8x5Pemw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSjki-00077Z-UU; Mon, 20 May 2019 14:59:00 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSjkb-000771-D6
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 14:58:55 +0000
X-Originating-IP: 90.66.53.80
Received: from localhost (lfbn-1-3034-80.w90-66.abo.wanadoo.fr [90.66.53.80])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 51DB540017;
 Mon, 20 May 2019 14:58:37 +0000 (UTC)
Date: Mon, 20 May 2019 16:58:30 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH] ARM: dts: at91: Avoid colliding 'display' node and
 property names
Message-ID: <20190520145830.GE3274@piout.net>
References: <20190516225614.1458-1-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190516225614.1458-1-robh@kernel.org>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_075853_589703_A73AFAB7 
X-CRM114-Status: GOOD (  17.54  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 16/05/2019 17:56:14-0500, Rob Herring wrote:
> While properties and child nodes with the same name are valid DT, the
> practice is not encouraged.

I don't see anything mentioning that in the devicetree specification. I
think this is something you should add if you don't want that to happen
again.

> Furthermore, the collision is problematic for
> YAML encoded DT. Let's just avoid the issue and rename the nodes.
> 

Or maybe you should fix the tool ;)

Do you plan to enforce it at some point? How close are you?

> Cc: Nicolas Ferre <nicolas.ferre@microchip.com>
> Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>
> Cc: Ludovic Desroches <ludovic.desroches@microchip.com>
> Cc: linux-arm-kernel@lists.infradead.org
> Signed-off-by: Rob Herring <robh@kernel.org>

Acked-by: Alexandre Belloni <alexandre.belloni@bootlin.com>

> ---
>  arch/arm/boot/dts/at91sam9261ek.dts    | 2 +-
>  arch/arm/boot/dts/at91sam9263ek.dts    | 2 +-
>  arch/arm/boot/dts/at91sam9m10g45ek.dts | 2 +-
>  arch/arm/boot/dts/at91sam9rlek.dts     | 2 +-
>  4 files changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/at91sam9261ek.dts b/arch/arm/boot/dts/at91sam9261ek.dts
> index f681cd727010..02b116b48c3b 100644
> --- a/arch/arm/boot/dts/at91sam9261ek.dts
> +++ b/arch/arm/boot/dts/at91sam9261ek.dts
> @@ -49,7 +49,7 @@
>  			atmel,power-control-gpio = <&pioA 12 GPIO_ACTIVE_LOW>;
>  			status = "okay";
>  
> -			display0: display {
> +			display0: panel {
>  				bits-per-pixel = <16>;
>  				atmel,lcdcon-backlight;
>  				atmel,dmacon = <0x1>;
> diff --git a/arch/arm/boot/dts/at91sam9263ek.dts b/arch/arm/boot/dts/at91sam9263ek.dts
> index 13d415c22a69..924fe563f6fa 100644
> --- a/arch/arm/boot/dts/at91sam9263ek.dts
> +++ b/arch/arm/boot/dts/at91sam9263ek.dts
> @@ -111,7 +111,7 @@
>  			display = <&display0>;
>  			status = "okay";
>  
> -			display0: display {
> +			display0: panel {
>  				bits-per-pixel = <16>;
>  				atmel,lcdcon-backlight;
>  				atmel,dmacon = <0x1>;
> diff --git a/arch/arm/boot/dts/at91sam9m10g45ek.dts b/arch/arm/boot/dts/at91sam9m10g45ek.dts
> index 46107c2f1ab9..5226e952a729 100644
> --- a/arch/arm/boot/dts/at91sam9m10g45ek.dts
> +++ b/arch/arm/boot/dts/at91sam9m10g45ek.dts
> @@ -236,7 +236,7 @@
>  			display = <&display0>;
>  			status = "okay";
>  
> -			display0: display {
> +			display0: panel {
>  				bits-per-pixel = <32>;
>  				atmel,lcdcon-backlight;
>  				atmel,dmacon = <0x1>;
> diff --git a/arch/arm/boot/dts/at91sam9rlek.dts b/arch/arm/boot/dts/at91sam9rlek.dts
> index 27d8a1f44233..a000a459f17b 100644
> --- a/arch/arm/boot/dts/at91sam9rlek.dts
> +++ b/arch/arm/boot/dts/at91sam9rlek.dts
> @@ -37,7 +37,7 @@
>  			display = <&display0>;
>  			status = "okay";
>  
> -			display0: display {
> +			display0: panel {
>  				bits-per-pixel = <16>;
>  				atmel,lcdcon-backlight;
>  				atmel,dmacon = <0x1>;
> -- 
> 2.20.1
> 

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
