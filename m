Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24E3A49B90
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 09:56:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zH95jLJsztyeQtqEpd1qyWs46I2tQFImoA1dQh2ysco=; b=Wl4Mf9bFjl+jVj
	3ZhsAVajVVHKOeSfhpwrgXtvqSgqIDU98hbSTBp6ahgesDkve4RsbsXeeeOZJgGSBNSnDAtGYf7Y0
	JjAzv47noUI4C8Mn2Gx0YT303XjNOt+b5FZDRsPW5ZcFaRzC40F341VyXu0tynhl/tdZZ+kPzcODK
	YIER9kNQRxnR1J9sNTsWnVG3PRn86KV2GKbpxA3MC2p1/wekL+SVyg8xJMJzvVOPI3HZzRPVVoNUm
	0gT/NfXt7DO0KRHolBBuoejFWBQnME1kdFId7qc27WOSw/p94LK5PqpGRLfNyyLEsCrgsAaETpvkh
	nwNWt9XU1oZAtrimCGbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hd8yv-0003jX-HE; Tue, 18 Jun 2019 07:56:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hd8yj-0003iY-OP
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 07:56:31 +0000
Received: from dragon (li1322-146.members.linode.com [45.79.223.146])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 321CD20B1F;
 Tue, 18 Jun 2019 07:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560844588;
 bh=XIE2Hjz7qxyhCE1ax8Z4bhoYlN9BRc2odviako0LTrk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=f7XJWm8ZlhiiyWS1I4UaU1VfpwZo2sqNCqKS3nbUgX2Ey4LdpNe/KqZ1HK/pxyvpi
 1LmUZie0HKiL/6PPPnxYOPaMwsYaQis06gWMkOSKi8zOutdgGFwVW9CJMe/Gy3oMiT
 amNgcEJ6dyX6pB2Nct7GZmWS2AkkUbGeIIrCXgxA=
Date: Tue, 18 Jun 2019 15:55:36 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: Re: [PATCH v2 2/2] ARM: dts: Add support for 96Boards Meerkat96 board
Message-ID: <20190618075534.GI29881@dragon>
References: <20190613132705.5150-1-manivannan.sadhasivam@linaro.org>
 <20190613132705.5150-3-manivannan.sadhasivam@linaro.org>
 <20190614114433.GA24166@Mani-XPS-13-9360>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190614114433.GA24166@Mani-XPS-13-9360>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_005629_837138_39B1903B 
X-CRM114-Status: GOOD (  19.17  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, yossi@novtech.com, robh+dt@kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org, pbrobinson@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 14, 2019 at 05:14:33PM +0530, Manivannan Sadhasivam wrote:
> Hi Shawn,
> 
> On Thu, Jun 13, 2019 at 06:57:05PM +0530, Manivannan Sadhasivam wrote:
> > Add devicetree support for 96Boards Meerkat96 board from Novtech. This
> > board is one of the Consumer Edition boards of the 96Boards family based
> > on i.MX7D SoC. Following are the currently supported features of the
> > board:
> > 
> > * uSD
> > * WiFi/BT
> > * USB
> > 
> > More information about this board can be found in 96Boards product page:
> > https://www.96boards.org/product/imx7-96/
> > 
> > Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > ---
> >  arch/arm/boot/dts/Makefile            |   1 +
> >  arch/arm/boot/dts/imx7d-meerkat96.dts | 389 ++++++++++++++++++++++++++
> >  2 files changed, 390 insertions(+)
> >  create mode 100644 arch/arm/boot/dts/imx7d-meerkat96.dts
> > 
> > diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
> > index f4f5aeaf3298..3018a763dbd1 100644
> > --- a/arch/arm/boot/dts/Makefile
> > +++ b/arch/arm/boot/dts/Makefile
> > @@ -579,6 +579,7 @@ dtb-$(CONFIG_SOC_IMX7D) += \
> >  	imx7d-cl-som-imx7.dtb \
> >  	imx7d-colibri-emmc-eval-v3.dtb \
> >  	imx7d-colibri-eval-v3.dtb \
> > +	imx7d-meerkat96.dtb \
> >  	imx7d-nitrogen7.dtb \
> >  	imx7d-pico-hobbit.dtb \
> >  	imx7d-pico-pi.dtb \
> > diff --git a/arch/arm/boot/dts/imx7d-meerkat96.dts b/arch/arm/boot/dts/imx7d-meerkat96.dts
> > new file mode 100644
> > index 000000000000..a86dc4878e44
> > --- /dev/null
> > +++ b/arch/arm/boot/dts/imx7d-meerkat96.dts
> > @@ -0,0 +1,389 @@
> > +// SPDX-License-Identifier: GPL-2.0+ OR MIT
> > +/*
> > + * Copyright (C) 2019 Linaro Ltd.
> > + */
> > +
> > +/dts-v1/;
> > +
> > +#include "imx7d.dtsi"
> > +
> > +/ {
> > +	model = "96Boards Meerkat96 Board";
> > +	compatible = "novtech,imx7d-meerkat96", "fsl,imx7d";
> > +
> > +	chosen {
> > +		stdout-path = &uart6;
> > +	};
> > +
> > +	memory@80000000 {
> > +		device_type = "memory";
> > +		reg = <0x80000000 0x20000000>; /* 512MB */
> > +	};
> > +
> > +	reg_wlreg_on: regulator-wlreg-on {
> > +		compatible = "regulator-fixed";
> > +		pinctrl-names = "default";
> > +		pinctrl-0 = <&pinctrl_wlreg_on>;
> > +		regulator-name = "wlreg_on";
> > +		regulator-min-microvolt = <3300000>;
> > +		regulator-max-microvolt = <3300000>;
> > +		startup-delay-us = <100>;
> > +		gpio = <&gpio6 15 GPIO_ACTIVE_HIGH>;
> > +		enable-active-high;
> > +		regulator-always-on;
> > +	};
> > +
> > +	reg_3p3v: regulator-3p3v {
> > +		compatible = "regulator-fixed";
> > +		regulator-name = "3P3V";
> > +		regulator-min-microvolt = <3300000>;
> > +		regulator-max-microvolt = <3300000>;
> > +		regulator-always-on;
> > +	};
> > +
> > +	reg_usb_otg1_vbus: regulator-usb-otg1-vbus {
> > +		compatible = "regulator-fixed";
> > +		regulator-name = "usb_otg1_vbus";
> > +		regulator-min-microvolt = <5000000>;
> > +		regulator-max-microvolt = <5000000>;
> > +	};
> > +
> > +	reg_usb_otg2_vbus: regulator-usb-otg2-vbus {
> > +		compatible = "regulator-fixed";
> > +		regulator-name = "usb_otg2_vbus";
> > +		regulator-min-microvolt = <5000000>;
> > +		regulator-max-microvolt = <5000000>;
> > +		gpio = <&gpio1 2 GPIO_ACTIVE_HIGH>;
> > +		enable-active-high;
> > +	};
> > +
> > +	sw1a_reg: sw1a {
> > +		compatible = "regulator-fixed";
> 
> Actually I was wrong here. This is not a fixed regulator node as the voltage
> level varies. Since there is no PMIC support exist now, can I remove this node?
> Or I should make it as fixed 0.7v?

I dropped it (&cpu0 as well) and applied both patches.  You can add it
later when you have the right information about it.

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
