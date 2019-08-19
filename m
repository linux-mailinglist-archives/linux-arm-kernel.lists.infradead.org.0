Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE969922BB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 13:50:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YRmnNSC+b35MochIkfOpWG5leRwE0Klq6IBkScQUblM=; b=MauS3LOW1cqEeP
	s54yPZ8bRgpnuu2ORbfIyanwRddZ0XW+kaXWqSQZZDFtshRiPA2Qig2DDy/Obpv0dj2gF9Kxxj4jL
	+oc/AzlE6VRVPVGKziUwVeUBHHrJXS8J7zrRwXnllwRzjrz5MlJpwhcqgYWqO6PeN/NWcAZ1iugWb
	He7HQab26GKOLSlClBX57M6aUBwRTdlMwvm74aTbpdJX5xeOw4fKz7lYOcDQEj8o/maaH0NVTS/j5
	XLwBXb+v3nE9oE8693MxszZoEn+yNV56+EyG6sADzJ+qv0CNF92mDWsmRTnu3pOrlJ53Xf5T6HgQe
	II9y1EkeA7JQvpDi1Ncw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzgAy-0002jk-Nw; Mon, 19 Aug 2019 11:50:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzgAr-0002jN-0e
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 11:50:10 +0000
Received: from X250 (37.80-203-192.nextgentel.com [80.203.192.37])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D4A1120843;
 Mon, 19 Aug 2019 11:50:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566215408;
 bh=DBshXL+FVBDtR6sVX5R3+IgNqM2ZCQo/P27+427V8LI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=wbrA5JpnUBAqnebPLhN4YFPn2xuloFqJThFPz2FfRx1KA3Kk8nJGaP4Wm0/kU60VN
 MnEiK6besQkY5Bmrio4JswDcpIspP/ffJ9GvCLkFeN545x0DHHmQftmEabFBp7D4VE
 Y6PSUZvGgqzXVG8l83rPLcTcjia68F5eTWfH2G8Q=
Date: Mon, 19 Aug 2019 13:49:56 +0200
From: Shawn Guo <shawnguo@kernel.org>
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: Re: [PATCH v3 2/2] arm64: dts: imx: Add i.mx8mq nitrogen8m basic dts
 support
Message-ID: <20190819114955.GY5999@X250>
References: <20190813125147.29605-1-dafna.hirschfeld@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190813125147.29605-1-dafna.hirschfeld@collabora.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_045009_108421_4E211CDD 
X-CRM114-Status: GOOD (  19.11  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, Troy Kisky <troy.kisky@boundarydevices.com>,
 Gary Bisson <gary.bisson@boundarydevices.com>, robh+dt@kernel.org,
 kernel@pengutronix.de, kernel@collabora.com, ezequiel@collabora.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 13, 2019 at 02:51:46PM +0200, Dafna Hirschfeld wrote:
> From: Gary Bisson <gary.bisson@boundarydevices.com>
> 
> Add basic dts support for i.MX8MQ NITROGEN8M.
> 
> Signed-off-by: Gary Bisson <gary.bisson@boundarydevices.com>
> Signed-off-by: Troy Kisky <troy.kisky@boundarydevices.com>
> [Dafna: porting vendor's code to mainline]
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> ---
>  arch/arm64/boot/dts/freescale/Makefile        |   1 +
>  .../boot/dts/freescale/imx8mq-nitrogen.dts    | 400 ++++++++++++++++++
>  2 files changed, 401 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/freescale/imx8mq-nitrogen.dts
> 
> diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
> index 8c0c4343e586..e2c6c93f47b6 100644
> --- a/arch/arm64/boot/dts/freescale/Makefile
> +++ b/arch/arm64/boot/dts/freescale/Makefile
> @@ -25,6 +25,7 @@ dtb-$(CONFIG_ARCH_MXC) += imx8mm-evk.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mn-ddr4-evk.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mq-evk.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mq-librem5-devkit.dtb
> +dtb-$(CONFIG_ARCH_MXC) += imx8mq-nitrogen.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mq-pico-pi.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mq-zii-ultra-rmb3.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mq-zii-ultra-zest.dtb
> diff --git a/arch/arm64/boot/dts/freescale/imx8mq-nitrogen.dts b/arch/arm64/boot/dts/freescale/imx8mq-nitrogen.dts
> new file mode 100644
> index 000000000000..da25ea9055cd
> --- /dev/null
> +++ b/arch/arm64/boot/dts/freescale/imx8mq-nitrogen.dts
> @@ -0,0 +1,400 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright 2018 Boundary Devices
> + */
> +
> +/dts-v1/;
> +
> +#include <dt-bindings/input/input.h>
> +#include "imx8mq.dtsi"
> +
> +/ {
> +	model = "Boundary Devices i.MX8MQ Nitrogen8M";
> +	compatible = "boundary,imx8mq-nitrogen8m", "fsl,imx8mq";
> +
> +	chosen {
> +		stdout-path = "serial0:115200n8";
> +	};
> +
> +	memory@40000000 {
> +		device_type = "memory";
> +		reg = <0x00000000 0x40000000 0 0x80000000>;
> +	};
> +
> +	gpio-keys {
> +		compatible = "gpio-keys";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_gpio_keys>;
> +
> +		power {
> +			label = "Power Button";
> +			gpios = <&gpio1 7 GPIO_ACTIVE_LOW>;
> +			linux,code = <KEY_POWER>;
> +			gpio-key,wakeup;

Please check Documentation/devicetree/bindings/power/wakeup-source.txt.

> +		};
> +	};
> +
> +	reg_vref_0v9: regulator-vref-0v9 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vref-0v9";
> +		regulator-min-microvolt = <900000>;
> +		regulator-max-microvolt = <900000>;
> +	};
> +
> +	reg_vref_1v8: regulator-vref-1v8 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vref-1v8";
> +		regulator-min-microvolt = <1800000>;
> +		regulator-max-microvolt = <1800000>;
> +	};
> +
> +	reg_vref_2v5: regulator-vref-2v5 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vref-2v5";
> +		regulator-min-microvolt = <2500000>;
> +		regulator-max-microvolt = <2500000>;
> +	};
> +
> +	reg_vref_3v3: regulator-vref-3v3 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vref-3v3";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +	};
> +
> +	reg_vref_5v: regulator-vref-5v {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vref-5v";
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +	};
> +};
> +
> +
> +&fec1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_fec1>;
> +	phy-mode = "rgmii-id";
> +	phy-handle = <&ethphy0>;
> +	fsl,magic-packet;
> +	status = "okay";
> +
> +	mdio {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		ethphy0: ethernet-phy@4 {
> +			compatible = "ethernet-phy-ieee802.3-c22";
> +			reg = <4>;
> +			interrupts-extended = <&gpio1 11 IRQ_TYPE_LEVEL_LOW>;
> +		};
> +	};
> +};
> +
> +&i2c1 {
> +	clock-frequency = <400000>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_i2c1>;
> +	status = "okay";
> +
> +	i2cmux@70 {
> +		compatible = "nxp,pca9546";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_i2c1_pca9546>;
> +		reg = <0x70>;
> +		reset-gpios = <&gpio1 8 GPIO_ACTIVE_LOW>;
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		i2c1a: i2c1@0 {
> +			reg = <0>;
> +			#address-cells = <1>;
> +			#size-cells = <0>;

Please have a newline between property list and child node.

> +			reg_arm_dram: regulator@60 {
> +				compatible = "fcs,fan53555";
> +				pinctrl-names = "default";
> +				pinctrl-0 = <&pinctrl_reg_arm_dram>;
> +				reg = <0x60>;
> +				regulator-min-microvolt =  <900000>;
> +				regulator-max-microvolt = <1000000>;
> +				regulator-always-on;
> +				vsel-gpios = <&gpio3 24 GPIO_ACTIVE_HIGH>;
> +			};
> +		};
> +
> +		i2c1b: i2c1@1 {
> +			reg = <1>;
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			reg_dram_1p1v: regulator@60 {
> +				compatible = "fcs,fan53555";
> +				pinctrl-names = "default";
> +				pinctrl-0 = <&pinctrl_reg_dram_1p1v>;
> +				reg = <0x60>;
> +				regulator-min-microvolt = <1100000>;
> +				regulator-max-microvolt = <1100000>;
> +				regulator-always-on;
> +				vsel-gpios = <&gpio2 11 GPIO_ACTIVE_HIGH>;
> +			};
> +		};
> +
> +		i2c1c: i2c1@2 {
> +			reg = <2>;
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			reg_soc_gpu_vpu: regulator@60 {
> +				compatible = "fcs,fan53555";
> +				pinctrl-names = "default";
> +				pinctrl-0 = <&pinctrl_reg_soc_gpu_vpu>;
> +				reg = <0x60>;
> +				regulator-min-microvolt =  <900000>;
> +				regulator-max-microvolt = <1000000>;
> +				regulator-always-on;
> +				vsel-gpios = <&gpio2 20 GPIO_ACTIVE_HIGH>;
> +			};
> +		};
> +
> +		i2c1d: i2c1@3 {
> +			reg = <3>;
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			rtc@68 {
> +				compatible = "microcrystal,rv4162";
> +				pinctrl-names = "default";
> +				pinctrl-0 = <&pinctrl_i2c1d_rv4162>;
> +				reg = <0x68>;
> +				interrupts-extended = <&gpio1 6 IRQ_TYPE_LEVEL_LOW>;
> +				wakeup-source;
> +			};
> +		};
> +	};
> +};
> +
> +&uart1 { /* console */
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_uart1>;
> +	assigned-clocks = <&clk IMX8MQ_CLK_UART1>;
> +	assigned-clock-parents = <&clk IMX8MQ_CLK_25M>;
> +	status = "okay";
> +};
> +
> +&uart2 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_uart2>;
> +	assigned-clocks = <&clk IMX8MQ_CLK_UART2>;
> +	assigned-clock-parents = <&clk IMX8MQ_CLK_25M>;
> +	status = "okay";
> +};
> +
> +&usdhc1 {
> +	bus-width = <8>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_usdhc1>;
> +	non-removable;
> +	vmmc-supply = <&reg_vref_1v8>;
> +	status = "okay";
> +};
> +
> +&wdog1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_wdog>;
> +	fsl,ext-reset-output;
> +	status = "okay";
> +};
> +
> +&iomuxc {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_hog>;

Have a newline.

> +	pinctrl_hog: hoggrp {
> +		fsl,pins = <
> +			/* J17 connector, odd */
> +			MX8MQ_IOMUXC_SAI1_RXFS_GPIO4_IO0		0x19	/* Pin 19 */
> +			MX8MQ_IOMUXC_SAI1_RXC_GPIO4_IO1			0x19	/* Pin 21 */
> +			MX8MQ_IOMUXC_SAI1_RXD1_GPIO4_IO3		0x19	/* Pin 23 */
> +			MX8MQ_IOMUXC_SAI1_RXD2_GPIO4_IO4		0x19	/* Pin 25 */
> +			MX8MQ_IOMUXC_SAI1_RXD3_GPIO4_IO5		0x19	/* Pin 27 */
> +			MX8MQ_IOMUXC_SAI1_RXD4_GPIO4_IO6		0x19	/* Pin 29 */
> +			MX8MQ_IOMUXC_SAI1_RXD5_GPIO4_IO7		0x19	/* Pin 31 */
> +			MX8MQ_IOMUXC_SAI1_RXD6_GPIO4_IO8		0x19	/* Pin 33 */
> +			MX8MQ_IOMUXC_SAI1_RXD7_GPIO4_IO9		0x19	/* Pin 35 */
> +			MX8MQ_IOMUXC_SAI1_TXD1_GPIO4_IO13		0x19	/* Pin 39 */
> +			MX8MQ_IOMUXC_SAI1_TXD2_GPIO4_IO14		0x19	/* Pin 41 */
> +			MX8MQ_IOMUXC_SAI1_TXD3_GPIO4_IO15		0x19	/* Pin 43 */
> +			MX8MQ_IOMUXC_SAI1_TXD4_GPIO4_IO16		0x19	/* Pin 45 */
> +			MX8MQ_IOMUXC_SAI1_TXD5_GPIO4_IO17		0x19	/* Pin 47 */
> +			MX8MQ_IOMUXC_SAI1_TXD6_GPIO4_IO18		0x19	/* Pin 49 */
> +			MX8MQ_IOMUXC_SAI1_TXD7_GPIO4_IO19		0x19	/* Pin 51 */
> +
> +			/* J17 connector, even */
> +			MX8MQ_IOMUXC_SAI3_RXFS_GPIO4_IO28		0x19	/* Pin 44 */
> +			MX8MQ_IOMUXC_SAI3_RXC_GPIO4_IO29		0x19	/* Pin 48 */
> +			MX8MQ_IOMUXC_GPIO1_IO10_GPIO1_IO10		0x19	/* Pin 50 */
> +			MX8MQ_IOMUXC_GPIO1_IO03_GPIO1_IO3		0x19	/* Pin 54 */
> +			MX8MQ_IOMUXC_GPIO1_IO05_GPIO1_IO5		0x19	/* Pin 56 */
> +
> +			/* J18 connector, odd */
> +			MX8MQ_IOMUXC_NAND_CE3_B_GPIO3_IO4		0x19	/* Pin 41 */
> +			MX8MQ_IOMUXC_NAND_CLE_GPIO3_IO5			0x19	/* Pin 43 */
> +			MX8MQ_IOMUXC_NAND_READY_B_GPIO3_IO16		0x19	/* Pin 45 */
> +			MX8MQ_IOMUXC_NAND_DATA05_GPIO3_IO11		0x19	/* Pin 47 */
> +			MX8MQ_IOMUXC_NAND_WP_B_GPIO3_IO18		0x19	/* Pin 49 */
> +			MX8MQ_IOMUXC_NAND_DQS_GPIO3_IO14		0x19	/* Pin 53 */
> +
> +			/* J18 connector, even */
> +			MX8MQ_IOMUXC_NAND_ALE_GPIO3_IO0			0x19	/* Pin 32 */
> +			MX8MQ_IOMUXC_NAND_CE0_B_GPIO3_IO1		0x19	/* Pin 36 */
> +			MX8MQ_IOMUXC_NAND_DATA00_GPIO3_IO6		0x19	/* Pin 38 */
> +			MX8MQ_IOMUXC_NAND_DATA01_GPIO3_IO7		0x19	/* Pin 40 */
> +			MX8MQ_IOMUXC_NAND_DATA02_GPIO3_IO8		0x19	/* Pin 42 */
> +			MX8MQ_IOMUXC_NAND_DATA03_GPIO3_IO9		0x19	/* Pin 44 */
> +			MX8MQ_IOMUXC_NAND_DATA04_GPIO3_IO10		0x19	/* Pin 46 */
> +
> +			/* J13 Pin 2, WL_WAKE */
> +			MX8MQ_IOMUXC_SAI5_RXD2_GPIO3_IO23		0xd6
> +			/* J13 Pin 4, WL_IRQ, not needed for Silex */
> +			MX8MQ_IOMUXC_SAI5_RXD0_GPIO3_IO21		0xd6
> +			/* J13 pin 9, unused */
> +			MX8MQ_IOMUXC_SD2_CD_B_GPIO2_IO12		0x19
> +			/* J13 Pin 41, BT_CLK_REQ */
> +			MX8MQ_IOMUXC_SAI5_RXD1_GPIO3_IO22		0xd6
> +			/* J13 Pin 42, BT_HOST_WAKE */
> +			MX8MQ_IOMUXC_SAI5_MCLK_GPIO3_IO25		0xd6
> +
> +			/* Clock for both CSI1 and CSI2 */
> +			MX8MQ_IOMUXC_GPIO1_IO15_CCMSRCGPCMIX_CLKO2	0x07
> +			/* test points */
> +			MX8MQ_IOMUXC_GPIO1_IO04_GPIO1_IO4		0xc1	/* TP87 */
> +		>;
> +	};
> +
> +	pinctrl_fec1: fec1grp {
> +		fsl,pins = <
> +			MX8MQ_IOMUXC_ENET_MDC_ENET1_MDC			0x3
> +			MX8MQ_IOMUXC_ENET_MDIO_ENET1_MDIO		0x23
> +			MX8MQ_IOMUXC_ENET_TX_CTL_ENET1_RGMII_TX_CTL	0x1f
> +			MX8MQ_IOMUXC_ENET_TXC_ENET1_RGMII_TXC		0x1f
> +			MX8MQ_IOMUXC_ENET_TD0_ENET1_RGMII_TD0		0x1f
> +			MX8MQ_IOMUXC_ENET_TD1_ENET1_RGMII_TD1		0x1f
> +			MX8MQ_IOMUXC_ENET_TD2_ENET1_RGMII_TD2		0x1f
> +			MX8MQ_IOMUXC_ENET_TD3_ENET1_RGMII_TD3		0x1f
> +			MX8MQ_IOMUXC_ENET_RX_CTL_ENET1_RGMII_RX_CTL	0x91
> +			MX8MQ_IOMUXC_ENET_RXC_ENET1_RGMII_RXC		0x91
> +			MX8MQ_IOMUXC_ENET_RD0_ENET1_RGMII_RD0		0x91
> +			MX8MQ_IOMUXC_ENET_RD1_ENET1_RGMII_RD1		0x91
> +			MX8MQ_IOMUXC_ENET_RD2_ENET1_RGMII_RD2		0x91
> +			MX8MQ_IOMUXC_ENET_RD3_ENET1_RGMII_RD3		0x91
> +			MX8MQ_IOMUXC_GPIO1_IO09_GPIO1_IO9		0x19
> +			MX8MQ_IOMUXC_GPIO1_IO11_GPIO1_IO11		0x59
> +		>;
> +	};
> +
> +	pinctrl_gpio_keys: gpio-keysgrp {
> +		fsl,pins = <
> +			MX8MQ_IOMUXC_GPIO1_IO07_GPIO1_IO7		0x19
> +		>;
> +	};
> +
> +
> +	pinctrl_i2c1: i2c1grp {
> +		fsl,pins = <
> +			MX8MQ_IOMUXC_I2C1_SCL_I2C1_SCL			0x4000007f
> +			MX8MQ_IOMUXC_I2C1_SDA_I2C1_SDA			0x4000007f
> +		>;
> +	};
> +
> +	pinctrl_i2c1_pca9546: i2c1-pca9546grp {
> +		fsl,pins = <
> +			MX8MQ_IOMUXC_GPIO1_IO08_GPIO1_IO8		0x49
> +		>;
> +	};
> +
> +	pinctrl_i2c1d_rv4162: i2c1d-rv4162grp {
> +		fsl,pins = <
> +			MX8MQ_IOMUXC_GPIO1_IO06_GPIO1_IO6		0x49
> +		>;
> +	};
> +
> +	pinctrl_reg_arm_dram: reg-arm-dram {

Please consistently name pinctrl nodes like:

	pinctrl_xxx: xxxgrp {
		...
	};

Shawn

> +		fsl,pins = <
> +			MX8MQ_IOMUXC_SAI5_RXD3_GPIO3_IO24	0x16
> +		>;
> +	};
> +
> +	pinctrl_reg_dram_1p1v: reg-dram-1p1v {
> +		fsl,pins = <
> +			MX8MQ_IOMUXC_SD1_STROBE_GPIO2_IO11	0x16
> +		>;
> +	};
> +
> +	pinctrl_reg_soc_gpu_vpu: reg-soc-gpu-vpu {
> +		fsl,pins = <
> +			MX8MQ_IOMUXC_SD2_WP_GPIO2_IO20		0x16
> +		>;
> +	};
> +
> +	pinctrl_uart1: uart1grp {
> +		fsl,pins = <
> +			MX8MQ_IOMUXC_UART1_RXD_UART1_DCE_RX		0x45
> +			MX8MQ_IOMUXC_UART1_TXD_UART1_DCE_TX		0x45
> +		>;
> +	};
> +
> +	pinctrl_uart2: uart2grp {
> +		fsl,pins = <
> +			MX8MQ_IOMUXC_UART2_RXD_UART2_DCE_RX		0x45
> +			MX8MQ_IOMUXC_UART2_TXD_UART2_DCE_TX		0x45
> +		>;
> +	};
> +
> +	pinctrl_usdhc1: usdhc1grp {
> +		fsl,pins = <
> +			MX8MQ_IOMUXC_SD1_CLK_USDHC1_CLK			0x83
> +			MX8MQ_IOMUXC_SD1_CMD_USDHC1_CMD			0xc3
> +			MX8MQ_IOMUXC_SD1_DATA0_USDHC1_DATA0		0xc3
> +			MX8MQ_IOMUXC_SD1_DATA1_USDHC1_DATA1		0xc3
> +			MX8MQ_IOMUXC_SD1_DATA2_USDHC1_DATA2		0xc3
> +			MX8MQ_IOMUXC_SD1_DATA3_USDHC1_DATA3		0xc3
> +			MX8MQ_IOMUXC_SD1_DATA4_USDHC1_DATA4		0xc3
> +			MX8MQ_IOMUXC_SD1_DATA5_USDHC1_DATA5		0xc3
> +			MX8MQ_IOMUXC_SD1_DATA6_USDHC1_DATA6		0xc3
> +			MX8MQ_IOMUXC_SD1_DATA7_USDHC1_DATA7		0xc3
> +			MX8MQ_IOMUXC_SD1_RESET_B_GPIO2_IO10		0x41
> +		>;
> +	};
> +
> +	pinctrl_usdhc1_100mhz: usdhc1grp100mhz {
> +		fsl,pins = <
> +			MX8MQ_IOMUXC_SD1_CLK_USDHC1_CLK			0x8d
> +			MX8MQ_IOMUXC_SD1_CMD_USDHC1_CMD			0xcd
> +			MX8MQ_IOMUXC_SD1_DATA0_USDHC1_DATA0		0xcd
> +			MX8MQ_IOMUXC_SD1_DATA1_USDHC1_DATA1		0xcd
> +			MX8MQ_IOMUXC_SD1_DATA2_USDHC1_DATA2		0xcd
> +			MX8MQ_IOMUXC_SD1_DATA3_USDHC1_DATA3		0xcd
> +			MX8MQ_IOMUXC_SD1_DATA4_USDHC1_DATA4		0xcd
> +			MX8MQ_IOMUXC_SD1_DATA5_USDHC1_DATA5		0xcd
> +			MX8MQ_IOMUXC_SD1_DATA6_USDHC1_DATA6		0xcd
> +			MX8MQ_IOMUXC_SD1_DATA7_USDHC1_DATA7		0xcd
> +		>;
> +	};
> +
> +	pinctrl_usdhc1_200mhz: usdhc1grp200mhz {
> +		fsl,pins = <
> +			MX8MQ_IOMUXC_SD1_CLK_USDHC1_CLK			0x9f
> +			MX8MQ_IOMUXC_SD1_CMD_USDHC1_CMD			0xdf
> +			MX8MQ_IOMUXC_SD1_DATA0_USDHC1_DATA0		0xdf
> +			MX8MQ_IOMUXC_SD1_DATA1_USDHC1_DATA1		0xdf
> +			MX8MQ_IOMUXC_SD1_DATA2_USDHC1_DATA2		0xdf
> +			MX8MQ_IOMUXC_SD1_DATA3_USDHC1_DATA3		0xdf
> +			MX8MQ_IOMUXC_SD1_DATA4_USDHC1_DATA4		0xdf
> +			MX8MQ_IOMUXC_SD1_DATA5_USDHC1_DATA5		0xdf
> +			MX8MQ_IOMUXC_SD1_DATA6_USDHC1_DATA6		0xdf
> +			MX8MQ_IOMUXC_SD1_DATA7_USDHC1_DATA7		0xdf
> +		>;
> +	};
> +
> +	pinctrl_wdog: wdoggrp {
> +		fsl,pins = <
> +		MX8MQ_IOMUXC_GPIO1_IO02_WDOG1_WDOG_B	0xc6
> +		>;
> +	};
> +};
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
