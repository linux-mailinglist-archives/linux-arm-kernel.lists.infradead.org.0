Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D47522A11
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 04:54:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=++pmI/gP6daKJhlyPVxuA/pLYaDgB40GhD5c7AG//WI=; b=BNpg/39eu9ABD0
	xH0HvqHmmYN/Tv0iN7rr74b+zF2vK1Lf+o9k2c9IPkbLEubZxni+31CjUyb6Tu3unl+xhmzIM28pO
	2m38gcXtCD293Ls8FCSaSFRkao8xjS9ZTV1vTR84GiPuMN2ZGHDoXY8uftqXB7LAjQlVWa5DYqX80
	Tm+9QXXglPLkJ4bQxQecGsKObzImIrCWUgEIGZefxzI01iGULDaiUFuHTgxYZ1SuFksiqN7Appdui
	uXpmN+YpDLoYVUFFOUxZPB1sQK4l5C+QqWf3fBi/jqaL3jEM91ak9951FFbK84MDdclUp8+whZkAN
	Hx8oZJff7WtAIUJGnm4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSYRP-0003pU-2e; Mon, 20 May 2019 02:54:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSYRH-0003p9-N8
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 02:54:13 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B5DE620644;
 Mon, 20 May 2019 02:54:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558320851;
 bh=+g4e3b9eEUCN0L+u953TbAQRbNQcFr58iPoiy/FcfxQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=V05ZVw2Vl7FzAsocbUrTF0YIaxJr6PFjmbgjR7GS4tMvPliBoYP5WRInjHKnqNPrB
 4jkEWypFuiyKne2/BrJsbMBvv4Clu3rXVwWZSRjHcDpTPrScTOwwTZ58xuc/+YlO+H
 RFYn6su8hExdGV8Vf1qG6AY4FegxrQJANaKbFhI0=
Date: Mon, 20 May 2019 10:53:21 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Pramod Kumar <pramod.kumar_1@nxp.com>
Subject: Re: [PATCH v2 2/3] arm64: dts: nxp: add ls1046a-frwy board support
Message-ID: <20190520025319.GJ15856@dragon>
References: <20190510130207.14330-1-pramod.kumar_1@nxp.com>
 <20190510130207.14330-3-pramod.kumar_1@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190510130207.14330-3-pramod.kumar_1@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190519_195411_794903_A891DF2E 
X-CRM114-Status: GOOD (  16.49  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 Aisheng Dong <aisheng.dong@nxp.com>,
 "Michal.Vokac@ysoft.com" <Michal.Vokac@ysoft.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 Vabhav Sharma <vabhav.sharma@nxp.com>,
 "manivannan.sadhasivam@linaro.org" <manivannan.sadhasivam@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 10, 2019 at 01:00:20PM +0000, Pramod Kumar wrote:
> ls1046afrwy board is based on nxp ls1046a SoC.
> Board support's 4GB ddr memory, i2c, microSD card,
> serial console,qspi nor flash,ifc nand flash,qsgmii network interface,
> usb 3.0 and serdes interface to support two x1gen3 pcie interface.
> 
> Signed-off-by: Vabhav Sharma <vabhav.sharma@nxp.com>
> Signed-off-by: Pramod Kumar <pramod.kumar_1@nxp.com>
> ---
>  arch/arm64/boot/dts/freescale/Makefile        |   1 +
>  .../boot/dts/freescale/fsl-ls1046a-frwy.dts   | 156 ++++++++++++++++++
>  2 files changed, 157 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/freescale/fsl-ls1046a-frwy.dts
> 
> diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
> index 13604e558dc1..84ff6995b41e 100644
> --- a/arch/arm64/boot/dts/freescale/Makefile
> +++ b/arch/arm64/boot/dts/freescale/Makefile
> @@ -8,6 +8,7 @@ dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1028a-qds.dtb
>  dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1028a-rdb.dtb
>  dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1043a-qds.dtb
>  dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1043a-rdb.dtb
> +dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1046a-frwy.dtb
>  dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1046a-qds.dtb
>  dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1046a-rdb.dtb
>  dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1088a-qds.dtb
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1046a-frwy.dts b/arch/arm64/boot/dts/freescale/fsl-ls1046a-frwy.dts
> new file mode 100644
> index 000000000000..de0d19c02944
> --- /dev/null
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1046a-frwy.dts
> @@ -0,0 +1,156 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Device Tree Include file for Freescale Layerscape-1046A family SoC.
> + *
> + * Copyright 2019 NXP.
> + *
> + */
> +
> +/dts-v1/;
> +
> +#include "fsl-ls1046a.dtsi"
> +
> +/ {
> +	model = "LS1046A FRWY Board";
> +	compatible = "fsl,ls1046a-frwy", "fsl,ls1046a";
> +
> +	aliases {
> +		serial0 = &duart0;
> +		serial1 = &duart1;
> +		serial2 = &duart2;
> +		serial3 = &duart3;
> +	};
> +
> +	chosen {
> +		stdout-path = "serial0:115200n8";
> +	};
> +
> +	sb_3v3: regulator-sb3v3 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "LT8642SEV-3.3V";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		regulator-boot-on;
> +		regulator-always-on;
> +	};
> +};
> +
> +&duart0 {
> +	status = "okay";
> +};
> +
> +&duart1 {
> +	status = "okay";
> +};
> +
> +&duart2 {
> +	status = "okay";
> +};
> +
> +&duart3 {
> +	status = "okay";
> +};
> +
> +&i2c0 {
> +	status = "okay";
> +
> +	i2c-mux@77 {
> +		compatible = "nxp,pca9546";
> +		reg = <0x77>;
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		i2c-mux-never-disable;

Undocumented property?

> +
> +		i2c@0 {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			reg = <0>;
> +
> +			eeprom@52 {
> +				compatible = "atmel,24c512";
> +				reg = <0x52>;
> +			};
> +
> +			eeprom@53 {
> +				compatible = "atmel,24c512";
> +				reg = <0x53>;
> +			};
> +
> +			power-monitor@40 {

Sort the nodes in unit-address.

Shawn

> +				compatible = "ti,ina220";
> +				reg = <0x40>;
> +				shunt-resistor = <1000>;
> +			};
> +
> +			rtc@51 {
> +				compatible = "nxp,pcf2129";
> +				reg = <0x51>;
> +			};
> +
> +			temperature-sensor@4c {
> +				compatible = "nxp,sa56004";
> +				reg = <0x4c>;
> +				vcc-supply = <&sb_3v3>;
> +			};
> +
> +		};
> +	};
> +};
> +
> +&ifc {
> +	#address-cells = <2>;
> +	#size-cells = <1>;
> +	/* NAND Flash */
> +	ranges = <0x0 0x0 0x0 0x7e800000 0x00010000>;
> +	status = "okay";
> +
> +	nand@0,0 {
> +		compatible = "fsl,ifc-nand";
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		reg = <0x0 0x0 0x10000>;
> +	};
> +
> +};
> +
> +#include "fsl-ls1046-post.dtsi"
> +
> +&fman0 {
> +	ethernet@e0000 {
> +		phy-handle = <&qsgmii_phy4>;
> +		phy-connection-type = "qsgmii";
> +	};
> +
> +	ethernet@e8000 {
> +		phy-handle = <&qsgmii_phy2>;
> +		phy-connection-type = "qsgmii";
> +	};
> +
> +	ethernet@ea000 {
> +		phy-handle = <&qsgmii_phy1>;
> +		phy-connection-type = "qsgmii";
> +	};
> +
> +	ethernet@f2000 {
> +		phy-handle = <&qsgmii_phy3>;
> +		phy-connection-type = "qsgmii";
> +	};
> +
> +	mdio@fd000 {
> +		qsgmii_phy1: ethernet-phy@1c {
> +			reg = <0x1c>;
> +		};
> +
> +		qsgmii_phy2: ethernet-phy@1d {
> +			reg = <0x1d>;
> +		};
> +
> +		qsgmii_phy3: ethernet-phy@1e {
> +			reg = <0x1e>;
> +		};
> +
> +		qsgmii_phy4: ethernet-phy@1f {
> +			reg = <0x1f>;
> +		};
> +	};
> +};
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
