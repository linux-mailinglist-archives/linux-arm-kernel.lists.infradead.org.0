Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BA7E5195A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 19:12:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lYhi4K4MYxUQ7c3e9dXIsRIRaNdwrUJ9TrviK4+veG8=; b=O1HmV3MlngJ/UL
	BNETFmD8zzDn4QQpYX00MCxG7zR5wmEC9sSJ3zFPLKNhSGUhtd1pvOzG/dMJ6zIrnF8EaVp4m6Y+T
	/iFBjFtUjRggSrgYTLzB3N3U9lIJu5UbCfkm+qlvb+LvX1KJlyLXlM0t4i81oQRzz5eVwdzuRKxpK
	p9SZxZiIDeKEkb+lt+jKodjOcBR3rHiIRylGj3VkAYsbsEpQIgJ3HN2iRISqJyPSaVY4l0Bo9nY7f
	sITwSZwgoVw4PMqaY4U9DOPKA4XW6MbN4FBd1IC9kVVkvnvqmGtzzpDjPhYrVTNayjQubSy4WU9Pu
	GqJ9r7KIAipDh2Ef2+ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfSW2-0003CP-D0; Mon, 24 Jun 2019 17:12:26 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfSVq-0003Bn-73
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 17:12:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=p7sQ79R8JaxIKbqr/Gc0orIA07ItCj3ggsuU+qyqs8Y=; b=WhPmmRa3OvUx3DEGJJUWX2qJZV
 q5Qec0GyRgC6O+2BE/mOJd3b7x8f230C4k4REm9JRi0z7+JIoxvs9+7FO4dcGE0jZTNw1wzb94SF6
 mIBMCki45D6GShTDxHSftosAGLelVKSdtTypxrfvfXcFwpsuMahm0N/+TbEWsAufaPlU=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1hfSVm-0007Cn-R9; Mon, 24 Jun 2019 19:12:10 +0200
Date: Mon, 24 Jun 2019 19:12:10 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: claudio@databyte.ch
Subject: Re: [Patch] support for new board
Message-ID: <20190624171210.GA31306@lunn.ch>
References: <004601d52a7d$8ee52c40$acaf84c0$@databyte.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <004601d52a7d$8ee52c40$acaf84c0$@databyte.ch>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_101214_406017_29A14B30 
X-CRM114-Status: GOOD (  22.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: shawnguo@kernel.org, s.hauer@pengutronix.de, linux-imx@nxp.com,
 kernel@pengutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 24, 2019 at 01:11:20PM +0200, claudio@databyte.ch wrote:
> Hi there
> 
> I would like to add support for a new board. 
> Below is the Patch. 

Hi Claudio

Please take a read of

https://www.kernel.org/doc/html/latest/process/submitting-patches.html

Your email has the wrong format. You a missing a Signed-off-by, etc.

> ---------------------------------------
> 
> >From 84ee8bc7b927ca9f88870a6a2f73906bb9492698 Mon Sep 17 00:00:00 2001
> From: Claudio Hediger <claudio@databyte.ch>
> Date: Mon, 24 Jun 2019 12:39:51 +0200
> Subject: [PATCH] added eval1a board
> 
> ---
>  arch/arm/boot/dts/Makefile               |   4 +-
>  arch/arm/boot/dts/imx6ull-dtb-eval1a.dts | 168 +++++++++++++++
>  arch/arm/configs/eval1a_defconfig        | 259 +++++++++++++++++++++++
>  3 files changed, 430 insertions(+), 1 deletion(-)
>  create mode 100644 arch/arm/boot/dts/imx6ull-dtb-eval1a.dts
>  create mode 100644 arch/arm/configs/eval1a_defconfig
> 
> diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
> index dab2914fa293..5561881358ba 100644
> --- a/arch/arm/boot/dts/Makefile
> +++ b/arch/arm/boot/dts/Makefile
> @@ -580,7 +580,9 @@ dtb-$(CONFIG_SOC_IMX6UL) += \
>  	imx6ull-14x14-evk.dtb \
>  	imx6ull-colibri-eval-v3.dtb \
>  	imx6ull-colibri-wifi-eval-v3.dtb \
> -	imx6ulz-14x14-evk.dtb
> +	imx6ulz-14x14-evk.dtb \
> +        imx6ull-dtb-eval1a.dtb

These files are listed in alphabetical order.  There is also a
space/tab problem.  The -dtb- also looks a bit odd. I can see it
getting mixed up with Device Tree Binary. Maybe -databyte- would be
better?

> +	
>  dtb-$(CONFIG_SOC_IMX7D) += \
>  	imx7d-cl-som-imx7.dtb \
>  	imx7d-colibri-emmc-eval-v3.dtb \
> diff --git a/arch/arm/boot/dts/imx6ull-dtb-eval1a.dts
> b/arch/arm/boot/dts/imx6ull-dtb-eval1a.dts
> new file mode 100644
> index 000000000000..e549ef90816f
> --- /dev/null
> +++ b/arch/arm/boot/dts/imx6ull-dtb-eval1a.dts
> @@ -0,0 +1,168 @@
> +/*
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License version 2 as
> + * published by the Free Software Foundation.
> + */

Please add an SPDX line, and skip this text.

> +
> +/dts-v1/;
> +
> +#include "imx6ull.dtsi"
> +
> +/ {
> +	model = "Databyte imx6 Evalboard 1A";
> +	compatible = "databyte,eval1a", "fsl,imx6ull";

databyte needs adding to Documentation/devicetree/bindings/vendor-prefixes.yaml 

> +&fec1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_enet1>;
> +	phy-mode = "rmii";
> +	phy-handle = <&ethphy0>;
> +	status = "okay";
> +
> +	mdio {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		ethphy0: ethernet-phy@2 {
> +			compatible = "ethernet-phy-ieee802.3-c22";

This compatible is not required.

> +			reg = <2>;
> +		};
> +	};
> +};
> +
> +
> +
> +&iomuxc {
> +	pinctrl-names = "default";
> +	//pinctrl-0 = <&pinctrl_hog_1>;

Please avoid commented out code.

> +	eval1a {
> +
> +		pinctrl_enet1: enet1grp {
> +			fsl,pins = <
> +				MX6UL_PAD_ENET1_RX_EN__ENET1_RX_EN
> 0x1b0b0
> +				MX6UL_PAD_ENET1_RX_ER__ENET1_RX_ER
> 0x1b0b0

It looks like your mailer has corrupted this patch. Try using 'git
send-email'

> diff --git a/arch/arm/configs/eval1a_defconfig
> b/arch/arm/configs/eval1a_defconfig

defconfig's have not been added for years.

	    Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
