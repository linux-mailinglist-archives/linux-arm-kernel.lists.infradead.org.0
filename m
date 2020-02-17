Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1962716096A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 05:02:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dovUMQzDgmqZrp0O0ri7Pjm6KQ8BAaQKUYmOmP8qV0k=; b=O+40K6BgLFbuhy
	z/yraTuvQV2qf00TACvKHZYLS9Wok8cZP5DqnSWXXZY2a19ZawLacuwSAvoymUswj6JwngHFR4QTN
	PBMlrRIZ1aUe9ctWAhmRLLlcKqAL/qBFwifMk4x2D9wqf18LkS0bHmPVvvXKOv7WRaJ+kzD55qPp0
	QRvOCVjHo6gqVqIbGPAx4Uo76KoyA8DdwCYJjwXFKG5yqWpDBNiBa4l6ZoHAcYxjSrq7BHh8O7dOF
	2Sp4GqgXNxyYk8RbHgsJarx7XV4KFNOrDRAl1MgKHISJfV16ttfPkT9LW+28sn+oWF+PjyEXETSSh
	LqVBvwTJephRrMsfadOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3XcH-0002N8-BC; Mon, 17 Feb 2020 04:02:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3Xc3-0002Lf-6V
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 04:02:28 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 38D9020726;
 Mon, 17 Feb 2020 04:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581912146;
 bh=XQOujdjrFUN4YnehuiyzCYCn7bsdy4tjBnZOyqleE4Q=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=nTXTxTvIL6ZEDXx7KAe7ydIxNsxkLHOOXEfj+RpLf/d3uxiAko6HxUi7ilWRVHPPr
 TtjmLOxI8MkfFHFjcGF4bEIlGO/QL3e9qF95w9caYwnLT5FnXwXVFdZyjXPmXHyWfa
 kYG9AedJRjrajjd05pwy1ZuvqA/xTZNTSITOkDh0=
Date: Mon, 17 Feb 2020 12:02:17 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Martin Kepplinger <martin.kepplinger@puri.sm>
Subject: Re: [PATCH v1 03/12] arm64: dts: librem5-devkit: allow modem to wake
 the system from suspend
Message-ID: <20200217040216.GD5395@dragon>
References: <20200205143003.28408-1-martin.kepplinger@puri.sm>
 <20200205143003.28408-4-martin.kepplinger@puri.sm>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200205143003.28408-4-martin.kepplinger@puri.sm>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_200227_267615_D5906133 
X-CRM114-Status: GOOD (  16.69  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, robh@kernel.org, kernel@puri.sm, Anson.Huang@nxp.com,
 devicetree@vger.kernel.org, s.hauer@pengutronix.de,
 "Angus Ainslie \(Purism\)" <angus@akkea.ca>, linux-kernel@vger.kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 05, 2020 at 03:29:54PM +0100, Martin Kepplinger wrote:
> From: "Angus Ainslie (Purism)" <angus@akkea.ca>
> 
> Connect the WoWWAN signal to a gpio key to wake up the system from suspend.
> 
> Signed-off-by: Angus Ainslie (Purism) <angus@akkea.ca>
> ---
>  .../dts/freescale/imx8mq-librem5-devkit.dts   | 27 +++++++++++++++----
>  1 file changed, 22 insertions(+), 5 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts b/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
> index 8162576e8f3d..ac6ba227e1da 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
> @@ -33,7 +33,7 @@
>  	gpio-keys {
>  		compatible = "gpio-keys";
>  		pinctrl-names = "default";
> -		pinctrl-0 = <&pinctrl_gpio_keys>;
> +		pinctrl-0 = <&pinctrl_gpio_keys>, <&pinctrl_wwan_in>;
>  
>  		btn1 {
>  			label = "VOL_UP";
> @@ -55,6 +55,15 @@
>  			wakeup-source;
>  			linux,code = <KEY_HP>;
>  		};
> +
> +		wwan_wake {
> +			label = "WWAN_WAKE";
> +			gpios = <&gpio3 8 GPIO_ACTIVE_LOW>;
> +			interrupt-parent = <&gpio3>;
> +			interrupts = <8 GPIO_ACTIVE_LOW>;
> +			wakeup-source;
> +			linux,code = <KEY_PHONE>;
> +		};
>  	};
>  
>  	leds {
> @@ -767,11 +776,19 @@
>  		>;
>  	};
>  
> -	pinctrl_wwan: wwangrp {
> +	pinctrl_wwan_in: wwaningrp {
> +		fsl,pins = <
> +		/* nWoWWAN */
> +		MX8MQ_IOMUXC_NAND_DATA02_GPIO3_IO8	0x80

Why not just add it to pinctrl_gpio_keys to make the change minimal.

> +		>;
> +	};
> +
> +	pinctrl_wwan_out: wwanoutgrp {
>  		fsl,pins = <
> -			MX8MQ_IOMUXC_NAND_CE3_B_GPIO3_IO4	0x09 /* nWWAN_DISABLE */
> -			MX8MQ_IOMUXC_NAND_DATA02_GPIO3_IO8	0x80 /* nWoWWAN */
> -			MX8MQ_IOMUXC_NAND_DATA03_GPIO3_IO9	0x19 /* WWAN_RESET */
> +		/* nWWAN_DISABLE */
> +		MX8MQ_IOMUXC_NAND_CE3_B_GPIO3_IO4	0x09
> +		/* WWAN_RESET */
> +		MX8MQ_IOMUXC_NAND_DATA03_GPIO3_IO9	0x19

Unnecessary changes.

Shawn

>  		>;
>  	};
>  };
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
