Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3D88CCF6D
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  6 Oct 2019 10:24:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8MWv2H2M+WKdCIZ5lSlP9b6WGyZdDTBM0iZcxq8nXTM=; b=QucKePSLVhPbxA
	2L/sui4FGGB6g1Ozyk4EdLGgVmfdrYcC4+9sdJoVzvwoKdDSDBYYbIScNpp9DZDHIUN8PgXl+r90w
	5db82ENiDvbUS8GDGk2DH03T/Md2qHJS2jamaQPVvrScyF7i9kdOwS4y8IU13xPeyWbS0J8BrzglX
	BL5puZVp+2ZSWZzfcd4aOzu1XfaKm3bjp9eAcmK/mAfGtPuQDXxR7zQY7wICElcs3IcJbN4wQ3X1X
	wIU4cHwMoGHBrwu/QJIzUvmMKpKUWykD2hfdEm0OksVkaPGlH5bs4DPnmZ++ztyxDZnejfhG5BYlA
	ea2Ywq/3PunCtCAl00hQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iH1q2-0004qQ-4Z; Sun, 06 Oct 2019 08:24:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iH1pu-0004q2-CO
 for linux-arm-kernel@lists.infradead.org; Sun, 06 Oct 2019 08:24:15 +0000
Received: from dragon (li937-157.members.linode.com [45.56.119.157])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 38D1820835;
 Sun,  6 Oct 2019 08:24:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570350253;
 bh=2iGl1rQrR/BnAzbATpIyfQDG/xC97wAOefdDXaS7h3M=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=n6L2pAop/2yu0puRY0cFdFS8zCdwPJMyiXqlEncUQYokhet0EREnCAewdHBEbB3yS
 QgY+U//qBuyd4mpoKmvxA3+0HQdrT0U/uYFkvqIgVW69/VZ7kP45mQhBNrRkk37UlI
 t7fim8yGMh6VmmMQ+Ji5HHpxBP7Cx79VmaGdWWgU=
Date: Sun, 6 Oct 2019 16:23:52 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Parthiban Nallathambi <pn@denx.de>
Subject: Re: [PATCH] ARM: dts: imx6: Extend support for Phytec phycore
 i.MX6ULL SoM
Message-ID: <20191006082349.GA7150@dragon>
References: <20190912202928.946200-1-pn@denx.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190912202928.946200-1-pn@denx.de>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_012414_466732_5A6B6E68 
X-CRM114-Status: GOOD (  17.77  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Sep 12, 2019 at 10:29:28PM +0200, Parthiban Nallathambi wrote:
> Extend Phycore i.MX6UL SoM for i.MX6ULL with on board eMMC. Phycore
> i.MX6ULL is deployed with same carrier board Segin as the pins are
> compatible with UL version.
> 
> Signed-off-by: Parthiban Nallathambi <pn@denx.de>

What is the base that the patch was generated from?  It doesn't apply to
my tree.

Shawn

> ---
>  arch/arm/boot/dts/imx6ul-phytec-pcl063.dtsi   | 26 +++++++++++++++++--
>  .../dts/imx6ul-phytec-phyboard-segin-full.dts |  5 ++++
>  arch/arm/boot/dts/imx6ull-phytec-pcl063.dtsi  | 24 +++++++++++++++++
>  3 files changed, 53 insertions(+), 2 deletions(-)
>  create mode 100644 arch/arm/boot/dts/imx6ull-phytec-pcl063.dtsi
> 
> diff --git a/arch/arm/boot/dts/imx6ul-phytec-pcl063.dtsi b/arch/arm/boot/dts/imx6ul-phytec-pcl063.dtsi
> index fc2997449b49..822a178ce438 100644
> --- a/arch/arm/boot/dts/imx6ul-phytec-pcl063.dtsi
> +++ b/arch/arm/boot/dts/imx6ul-phytec-pcl063.dtsi
> @@ -7,7 +7,6 @@
>  #include <dt-bindings/gpio/gpio.h>
>  #include <dt-bindings/interrupt-controller/irq.h>
>  #include <dt-bindings/pwm/pwm.h>
> -#include "imx6ul.dtsi"
>  
>  / {
>  	model = "Phytec phyCORE i.MX6 UltraLite";
> @@ -65,7 +64,7 @@
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pinctrl_gpmi_nand>;
>  	nand-on-flash-bbt;
> -	status = "okay";
> +	status = "disabled";
>  };
>  
>  &i2c1 {
> @@ -90,6 +89,15 @@
>  	status = "okay";
>  };
>  
> +&usdhc2 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_usdhc2>;
> +	bus-width = <8>;
> +	no-1-8-v;
> +	non-removable;
> +	status = "disabled";
> +};
> +
>  &iomuxc {
>  	pinctrl_enet1: enet1grp {
>  		fsl,pins = <
> @@ -145,4 +153,18 @@
>  		>;
>  	};
>  
> +	pinctrl_usdhc2: usdhc2grp {
> +		fsl,pins = <
> +			MX6UL_PAD_NAND_WE_B__USDHC2_CMD		0x170f9
> +			MX6UL_PAD_NAND_RE_B__USDHC2_CLK		0x100f9
> +			MX6UL_PAD_NAND_DATA00__USDHC2_DATA0	0x170f9
> +			MX6UL_PAD_NAND_DATA01__USDHC2_DATA1	0x170f9
> +			MX6UL_PAD_NAND_DATA02__USDHC2_DATA2	0x170f9
> +			MX6UL_PAD_NAND_DATA03__USDHC2_DATA3	0x170f9
> +			MX6UL_PAD_NAND_DATA04__USDHC2_DATA4	0x170f9
> +			MX6UL_PAD_NAND_DATA05__USDHC2_DATA5	0x170f9
> +			MX6UL_PAD_NAND_DATA06__USDHC2_DATA6	0x170f9
> +			MX6UL_PAD_NAND_DATA07__USDHC2_DATA7	0x170f9
> +		>;
> +	};
>  };
> diff --git a/arch/arm/boot/dts/imx6ul-phytec-phyboard-segin-full.dts b/arch/arm/boot/dts/imx6ul-phytec-phyboard-segin-full.dts
> index b6a1407a9d44..76f2447f2657 100644
> --- a/arch/arm/boot/dts/imx6ul-phytec-phyboard-segin-full.dts
> +++ b/arch/arm/boot/dts/imx6ul-phytec-phyboard-segin-full.dts
> @@ -5,6 +5,7 @@
>   */
>  
>  /dts-v1/;
> +#include "imx6ul.dtsi"
>  #include "imx6ul-phytec-pcl063.dtsi"
>  #include "imx6ul-phytec-phyboard-segin.dtsi"
>  #include "imx6ul-phytec-peb-eval-01.dtsi"
> @@ -37,6 +38,10 @@
>  	status = "okay";
>  };
>  
> +&gpmi {
> +	status = "okay";
> +};
> +
>  &i2c_rtc {
>  	status = "okay";
>  };
> diff --git a/arch/arm/boot/dts/imx6ull-phytec-pcl063.dtsi b/arch/arm/boot/dts/imx6ull-phytec-pcl063.dtsi
> new file mode 100644
> index 000000000000..3f749d9f09a5
> --- /dev/null
> +++ b/arch/arm/boot/dts/imx6ull-phytec-pcl063.dtsi
> @@ -0,0 +1,24 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (C) 2018 PHYTEC Messtechnik GmbH
> + * Author: Stefan Riedmueller <s.riedmueller@phytec.de>
> + */
> +
> +#include "imx6ul-phytec-pcl063.dtsi"
> +
> +/ {
> +	model = "PHYTEC phyCORE-i.MX 6ULL";
> +	compatible = "phytec,imx6ull-pcl063", "fsl,imx6ull";
> +};
> +
> +&iomuxc {
> +	/delete-node/ gpioledssomgrp;
> +};
> +
> +&iomuxc_snvs {
> +	pinctrl_gpioleds_som: gpioledssomgrp {
> +		fsl,pins = <
> +			MX6ULL_PAD_SNVS_TAMPER4__GPIO5_IO04	0x0b0b0
> +		>;
> +	};
> +};
> -- 
> 2.21.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
