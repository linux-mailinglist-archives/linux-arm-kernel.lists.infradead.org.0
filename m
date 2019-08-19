Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 564A092266
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 13:31:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eth/nKfDWGWcx0pq60rYIiT8IoRDC6tHXmBGYysX4Os=; b=CxBFxQPB2Bn9s3
	MXrXNYUfBWhUO9cVGNkBtuTwhxFQMMRZPnxGUqlL47mMfJiY/tr0pEp9RoEbRJXgYnpAZmgMBCBbY
	bScWzoKrmxxRxlRhPh8UE/1Hu+ixTK5GkPbHHLcqSnu8iuPdktdlq/aTO4V2/MIcTL4UXSFXUEZ4h
	96zfdaLuhPtJpwNKJAWHlitMMzKhqJMoeh0xwuxmELqvPyWTiuqUGxkpQn2oA7hMT4H0+/fZvRIsg
	EnTfsZHAXL4bIdviofK/oEfhXF2FQ1d41/K7F61iI5npqiQagIXA1rV7OfA2/VCgMiMmtPJoL24ds
	ccxcm8JK9dGC1Jxh297g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzfsQ-0002O6-K9; Mon, 19 Aug 2019 11:31:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzfsG-0002N2-V8
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 11:30:58 +0000
Received: from X250 (37.80-203-192.nextgentel.com [80.203.192.37])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 10E7620851;
 Mon, 19 Aug 2019 11:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566214256;
 bh=FQV5Xq+K1NWQNMFPHHsWUc0BPzvLcSph101rqifwyH4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=oHRaYVkEPNlPMj4BCnrKc6YmDgIsFLRpJHkQpRy9IGiFzivMTPza12JJcCziPko5C
 hOczRt3zVCJZxnfE9sBOX+Hiku+dpIFSqB6GgFTLUf5u1rcuGJMgD1p5A6pmwLOb1o
 F+2BGNF1E7E0R4t60gtXvdfpE3U/GP7q+n2pfIZQ=
Date: Mon, 19 Aug 2019 13:30:44 +0200
From: Shawn Guo <shawnguo@kernel.org>
To: Philippe Schenker <philippe.schenker@toradex.com>
Subject: Re: [PATCH v4 12/21] ARM: dts: imx6-apalis: Add touchscreens used on
 Toradex eval boards
Message-ID: <20190819113042.GV5999@X250>
References: <20190812142105.1995-1-philippe.schenker@toradex.com>
 <20190812142105.1995-13-philippe.schenker@toradex.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190812142105.1995-13-philippe.schenker@toradex.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_043057_049361_DCBC85C8 
X-CRM114-Status: GOOD (  20.23  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Michal =?utf-8?B?Vm9rw6HEjQ==?= <michal.vokac@ysoft.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stefan@agner.ch" <stefan@agner.ch>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Max Krummenacher <max.krummenacher@toradex.com>,
 Fabio Estevam <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 12, 2019 at 02:21:33PM +0000, Philippe Schenker wrote:
> This commit adds the touchscreens from Toradex so one can enable it.
> 
> Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>
> Acked-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>
> 
> ---
> 
> Changes in v4:
> - Add Marcel Ziswiler's Ack
> 
> Changes in v3:
> - Fix commit title to "...imx6-apalis:..."
> 
> Changes in v2:
> - Deleted touchrevolution downstream stuff
> - Use generic node name
> - Put a better comment in there
> 
>  arch/arm/boot/dts/imx6dl-colibri-eval-v3.dts  | 31 +++++++++++++++++++
>  arch/arm/boot/dts/imx6q-apalis-eval.dts       | 13 ++++++++
>  arch/arm/boot/dts/imx6q-apalis-ixora-v1.1.dts | 13 ++++++++
>  arch/arm/boot/dts/imx6q-apalis-ixora.dts      | 13 ++++++++
>  4 files changed, 70 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/imx6dl-colibri-eval-v3.dts b/arch/arm/boot/dts/imx6dl-colibri-eval-v3.dts
> index 9a5d6c94cca4..763fb5e90bd3 100644
> --- a/arch/arm/boot/dts/imx6dl-colibri-eval-v3.dts
> +++ b/arch/arm/boot/dts/imx6dl-colibri-eval-v3.dts
> @@ -168,6 +168,21 @@
>  &i2c3 {
>  	status = "okay";
>  
> +	/*
> +	 * Touchscreen is using SODIMM 28/30, also used for PWM<B>, PWM<C>,
> +	 * aka pwm2, pwm3. so if you enable touchscreen, disable the pwms
> +	 */
> +	touchscreen@4a {
> +		compatible = "atmel,maxtouch";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_pcap_1>;
> +		reg = <0x4a>;
> +		interrupt-parent = <&gpio1>;
> +		interrupts = <9 IRQ_TYPE_EDGE_FALLING>;		/* SODIMM 28 */
> +		reset-gpios = <&gpio2 10 GPIO_ACTIVE_HIGH>;	/* SODIMM 30 */
> +		status = "disabled";

If you have a reason to keep this disabled, please comment or state in
the commit log.

> +	};
> +
>  	/* M41T0M6 real time clock on carrier board */
>  	rtc_i2c: rtc@68 {
>  		compatible = "st,m41t0";
> @@ -175,6 +190,22 @@
>  	};
>  };
>  
> +&iomuxc {
> +	pinctrl_pcap_1: pcap-1 {

Name pinctrl node more consistently like pinctrl_xxx: xxxgrp.

Shawn

> +		fsl,pins = <
> +			MX6QDL_PAD_GPIO_9__GPIO1_IO09	0x1b0b0 /* SODIMM 28 */
> +			MX6QDL_PAD_SD4_DAT2__GPIO2_IO10	0x1b0b0 /* SODIMM 30 */
> +		>;
> +	};
> +
> +	pinctrl_mxt_ts: mxt-ts {
> +		fsl,pins = <
> +			MX6QDL_PAD_EIM_CS1__GPIO2_IO24	0x130b0 /* SODIMM 107 */
> +			MX6QDL_PAD_SD2_DAT1__GPIO1_IO14	0x130b0 /* SODIMM 106 */
> +		>;
> +	};
> +};
> +
>  &ipu1_di0_disp0 {
>  	remote-endpoint = <&lcd_display_in>;
>  };
> diff --git a/arch/arm/boot/dts/imx6q-apalis-eval.dts b/arch/arm/boot/dts/imx6q-apalis-eval.dts
> index 0edd3043d9c1..4665e15b196d 100644
> --- a/arch/arm/boot/dts/imx6q-apalis-eval.dts
> +++ b/arch/arm/boot/dts/imx6q-apalis-eval.dts
> @@ -167,6 +167,19 @@
>  &i2c1 {
>  	status = "okay";
>  
> +	/*
> +	 * Touchscreen is using SODIMM 28/30, also used for PWM<B>, PWM<C>,
> +	 * aka pwm2, pwm3. so if you enable touchscreen, disable the pwms
> +	 */
> +	touchscreen@4a {
> +		compatible = "atmel,maxtouch";
> +		reg = <0x4a>;
> +		interrupt-parent = <&gpio6>;
> +		interrupts = <10 IRQ_TYPE_EDGE_FALLING>;
> +		reset-gpios = <&gpio6 9 GPIO_ACTIVE_HIGH>; /* SODIMM 13 */
> +		status = "disabled";
> +	};
> +
>  	pcie-switch@58 {
>  		compatible = "plx,pex8605";
>  		reg = <0x58>;
> diff --git a/arch/arm/boot/dts/imx6q-apalis-ixora-v1.1.dts b/arch/arm/boot/dts/imx6q-apalis-ixora-v1.1.dts
> index b94bb687be6b..a3fa04a97d81 100644
> --- a/arch/arm/boot/dts/imx6q-apalis-ixora-v1.1.dts
> +++ b/arch/arm/boot/dts/imx6q-apalis-ixora-v1.1.dts
> @@ -172,6 +172,19 @@
>  &i2c1 {
>  	status = "okay";
>  
> +	/*
> +	 * Touchscreen is using SODIMM 28/30, also used for PWM<B>, PWM<C>,
> +	 * aka pwm2, pwm3. so if you enable touchscreen, disable the pwms
> +	 */
> +	touchscreen@4a {
> +		compatible = "atmel,maxtouch";
> +		reg = <0x4a>;
> +		interrupt-parent = <&gpio6>;
> +		interrupts = <10 IRQ_TYPE_EDGE_FALLING>;
> +		reset-gpios = <&gpio6 9 GPIO_ACTIVE_HIGH>; /* SODIMM 13 */
> +		status = "disabled";
> +	};
> +
>  	/* M41T0M6 real time clock on carrier board */
>  	rtc_i2c: rtc@68 {
>  		compatible = "st,m41t0";
> diff --git a/arch/arm/boot/dts/imx6q-apalis-ixora.dts b/arch/arm/boot/dts/imx6q-apalis-ixora.dts
> index 302fd6adc8a7..5ba49d0f4880 100644
> --- a/arch/arm/boot/dts/imx6q-apalis-ixora.dts
> +++ b/arch/arm/boot/dts/imx6q-apalis-ixora.dts
> @@ -171,6 +171,19 @@
>  &i2c1 {
>  	status = "okay";
>  
> +	/*
> +	 * Touchscreen is using SODIMM 28/30, also used for PWM<B>, PWM<C>,
> +	 * aka pwm2, pwm3. so if you enable touchscreen, disable the pwms
> +	 */
> +	touchscreen@4a {
> +		compatible = "atmel,maxtouch";
> +		reg = <0x4a>;
> +		interrupt-parent = <&gpio6>;
> +		interrupts = <10 IRQ_TYPE_EDGE_FALLING>;
> +		reset-gpios = <&gpio6 9 GPIO_ACTIVE_HIGH>; /* SODIMM 13 */
> +		status = "disabled";
> +	};
> +
>  	eeprom@50 {
>  		compatible = "atmel,24c02";
>  		reg = <0x50>;
> -- 
> 2.22.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
