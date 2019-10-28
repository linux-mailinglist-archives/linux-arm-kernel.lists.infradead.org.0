Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 616E7E6B48
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 04:08:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kYwkdhlANezdOsXjtlRDCFyyU4IegXnedkjxKCJ3pr8=; b=bh9Lbzaq6JWiKx
	mVidnRfyHcaKCT69P1LuSWf6RK4t+w1D5+lNiurYw46RNPOo2XTWyFcCAbgS5KVMTa+kSISmbrmlj
	XxmDJ/lfudt/Ix/FRlo954+oGcr6OZO33QXcdLDgSAh8VMtqetfLj432oed2f/cWalgA+cpsmubsv
	jU8m3KTkW8HDZAg4F98toZvnPRIdFlIs+Y19Ti2a5/a6X1VZwb1d6w5p9lWHs6fOzqM0SxTre74IN
	9K8w8UO5xTXI3AwB8xTfQkQaXfZ0vQUhRYBuMicfX8FHKash+IZtcqncyGV0ab1ZnFhw6FTUAw32P
	Yy55jlpuliVNSLgMwhsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOvOf-0002en-Bp; Mon, 28 Oct 2019 03:08:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOvOS-0002eU-58
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 03:08:33 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EDC1D20873;
 Mon, 28 Oct 2019 03:08:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572232111;
 bh=9pHjVHBWzzO8as/GlxtW409f8OPgE/yFlPmLQPZ/F7o=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hIns11PAGhGhvvwvm97UvqGlArw66VuIrxzIJAikWoo53Yl05QBJA9iaAxz3/w+vg
 M0NXEsdUxfN1JRX9mK9xZ+YJMnTfk7rd7EpIwOTg+7sRmcJvDtRAf+bwqMos6BqPU1
 O816SZI5wlfoZsMZPhvKtcOvUBZ0ePvZyY5pqD3k=
Date: Mon, 28 Oct 2019 11:08:12 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Philippe Schenker <philippe.schenker@toradex.com>
Subject: Re: [PATCH v2 1/2] arm: dts: imx*(colibri|apalis): add missing
 recovery modes to i2c
Message-ID: <20191028030810.GH16985@dragon>
References: <20191016170332.2013-1-philippe.schenker@toradex.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191016170332.2013-1-philippe.schenker@toradex.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191027_200832_232226_910D17AA 
X-CRM114-Status: GOOD (  16.88  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Max Krummenacher <max.krummenacher@toradex.com>,
 Stefan Agner <stefan.agner@toradex.com>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Luka Pivk <luka.pivk@toradex.com>, Fabio Estevam <festevam@gmail.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 16, 2019 at 05:03:41PM +0000, Philippe Schenker wrote:
> This patch adds missing i2c recovery modes and corrects wrongly named
> ones.
> 
> Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>

As a practise, we use 'ARM: ' to prefix i.MX arch/arm/ patches.

I fixed it up and applied both patches.

Shawn

> 
> ---
> 
> Changes in v2:
> - Added scl/sda gpio
> - Added missing recovery mode to i2c2 on imx6qdl-colibri
> 
>  arch/arm/boot/dts/imx6qdl-apalis.dtsi  | 30 +++++++++++++++++++++-----
>  arch/arm/boot/dts/imx6qdl-colibri.dtsi | 18 ++++++++++++----
>  2 files changed, 39 insertions(+), 9 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/imx6qdl-apalis.dtsi b/arch/arm/boot/dts/imx6qdl-apalis.dtsi
> index 7c4ad541c3f5..86cad6c9f0f9 100644
> --- a/arch/arm/boot/dts/imx6qdl-apalis.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-apalis.dtsi
> @@ -205,8 +205,11 @@
>  /* I2C1_SDA/SCL on MXM3 209/211 (e.g. RTC on carrier board) */
>  &i2c1 {
>  	clock-frequency = <100000>;
> -	pinctrl-names = "default";
> +	pinctrl-names = "default", "gpio";
>  	pinctrl-0 = <&pinctrl_i2c1>;
> +	pinctrl-1 = <&pinctrl_i2c1_gpio>;
> +	scl-gpios = <&gpio5 27 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
> +	sda-gpios = <&gpio5 26 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
>  	status = "disabled";
>  };
>  
> @@ -216,8 +219,11 @@
>   */
>  &i2c2 {
>  	clock-frequency = <100000>;
> -	pinctrl-names = "default";
> +	pinctrl-names = "default", "gpio";
>  	pinctrl-0 = <&pinctrl_i2c2>;
> +	pinctrl-1 = <&pinctrl_i2c2_gpio>;
> +	scl-gpios = <&gpio4 12 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
> +	sda-gpios = <&gpio4 13 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
>  	status = "okay";
>  
>  	pmic: pfuze100@8 {
> @@ -372,9 +378,9 @@
>   */
>  &i2c3 {
>  	clock-frequency = <100000>;
> -	pinctrl-names = "default", "recovery";
> +	pinctrl-names = "default", "gpio";
>  	pinctrl-0 = <&pinctrl_i2c3>;
> -	pinctrl-1 = <&pinctrl_i2c3_recovery>;
> +	pinctrl-1 = <&pinctrl_i2c3_gpio>;
>  	scl-gpios = <&gpio3 17 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
>  	sda-gpios = <&gpio3 18 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
>  	status = "disabled";
> @@ -646,6 +652,13 @@
>  		>;
>  	};
>  
> +	pinctrl_i2c1_gpio: i2c1gpiogrp {
> +		fsl,pins = <
> +			MX6QDL_PAD_CSI0_DAT8__GPIO5_IO26 0x4001b8b1
> +			MX6QDL_PAD_CSI0_DAT9__GPIO5_IO27 0x4001b8b1
> +		>;
> +	};
> +
>  	pinctrl_i2c2: i2c2grp {
>  		fsl,pins = <
>  			MX6QDL_PAD_KEY_COL3__I2C2_SCL 0x4001b8b1
> @@ -653,6 +666,13 @@
>  		>;
>  	};
>  
> +	pinctrl_i2c2_gpio: i2c2gpiogrp {
> +		fsl,pins = <
> +			MX6QDL_PAD_KEY_COL3__GPIO4_IO12 0x4001b8b1
> +			MX6QDL_PAD_KEY_ROW3__GPIO4_IO13 0x4001b8b1
> +		>;
> +	};
> +
>  	pinctrl_i2c3: i2c3grp {
>  		fsl,pins = <
>  			MX6QDL_PAD_EIM_D17__I2C3_SCL 0x4001b8b1
> @@ -660,7 +680,7 @@
>  		>;
>  	};
>  
> -	pinctrl_i2c3_recovery: i2c3recoverygrp {
> +	pinctrl_i2c3_gpio: i2c3gpiogrp {
>  		fsl,pins = <
>  			MX6QDL_PAD_EIM_D17__GPIO3_IO17 0x4001b8b1
>  			MX6QDL_PAD_EIM_D18__GPIO3_IO18 0x4001b8b1
> diff --git a/arch/arm/boot/dts/imx6qdl-colibri.dtsi b/arch/arm/boot/dts/imx6qdl-colibri.dtsi
> index 019dda6b88ad..8ab9960fc15d 100644
> --- a/arch/arm/boot/dts/imx6qdl-colibri.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-colibri.dtsi
> @@ -166,8 +166,11 @@
>   */
>  &i2c2 {
>  	clock-frequency = <100000>;
> -	pinctrl-names = "default";
> +	pinctrl-names = "default", "gpio";
>  	pinctrl-0 = <&pinctrl_i2c2>;
> +	pinctrl-0 = <&pinctrl_i2c2_gpio>;
> +	scl-gpios = <&gpio2 30 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
> +	sda-gpios = <&gpio3 16 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
>  	status = "okay";
>  
>  	pmic: pfuze100@8 {
> @@ -312,9 +315,9 @@
>   */
>  &i2c3 {
>  	clock-frequency = <100000>;
> -	pinctrl-names = "default", "recovery";
> +	pinctrl-names = "default", "gpio";
>  	pinctrl-0 = <&pinctrl_i2c3>;
> -	pinctrl-1 = <&pinctrl_i2c3_recovery>;
> +	pinctrl-1 = <&pinctrl_i2c3_gpio>;
>  	scl-gpios = <&gpio1 3 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
>  	sda-gpios = <&gpio1 6 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
>  	status = "disabled";
> @@ -509,6 +512,13 @@
>  		>;
>  	};
>  
> +	pinctrl_i2c2_gpio: i2c2grp {
> +		fsl,pins = <
> +			MX6QDL_PAD_EIM_EB2__GPIO2_IO30 0x4001b8b1
> +			MX6QDL_PAD_EIM_D16__GPIO3_IO16 0x4001b8b1
> +		>;
> +	};
> +
>  	pinctrl_i2c3: i2c3grp {
>  		fsl,pins = <
>  			MX6QDL_PAD_GPIO_3__I2C3_SCL 0x4001b8b1
> @@ -516,7 +526,7 @@
>  		>;
>  	};
>  
> -	pinctrl_i2c3_recovery: i2c3recoverygrp {
> +	pinctrl_i2c3_gpio: i2c3gpiogrp {
>  		fsl,pins = <
>  			MX6QDL_PAD_GPIO_3__GPIO1_IO03 0x4001b8b1
>  			MX6QDL_PAD_GPIO_6__GPIO1_IO06 0x4001b8b1
> -- 
> 2.23.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
