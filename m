Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C944C7139F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 10:11:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iFB/1+I8wQLe5dsf83+g1DXJPMRg4YCOeAdxIGXwKUw=; b=ADtr5bCS2oKmd4
	F2jCGh11/ItWXZSXn8zXgxpHSTWW1ryKW3T3CjQPfthJm2lTEn9hZC3nVVcPNhY9W+regDVh7REVi
	962pwcLilRJ+FkMxPFwgUgu5fgDgVFJmAKiO1OW6JBZOTOyMdnva4T7nShe3TeFwSQ5JghZAF/JfH
	ud/Y3/bnifRY/WDZw6xvZtqNArYmy1AAnHnoLQW/2UNYdGu4KIiDbWe3euUZELJkWCu5Eo5qWm0Vr
	ofAc6PVWEoP+kGgY0sjIKDUEx6NoD1q1oj9PrVQTW2mYeo2PXcIjStcJmcy5U2ydDY34K+zpd1ph7
	Drpqd5xrpbR+n5Nso+cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hppta-0007lP-AP; Tue, 23 Jul 2019 08:11:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hppt8-0007iH-4z
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 08:11:13 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6FAF7223A1;
 Tue, 23 Jul 2019 08:11:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563869469;
 bh=XypaNXay2tTTbtNscbMIAumjIpd8jWSti5cXmrhr/Ro=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KAVwBz2/Cftj1c+ZRjzOwwPdamj4JFzkst4ciNpDxVvbiWmkrbdKMQ6ZTiVP0Gfhh
 ZnWo/ESrKUtJ0Bat68W3UxVVPDR2W2kDTq3noGuhs5FgGj/5w+SaN+Lrf03BWCyAnY
 IYLoDmw4V2rwKc6LRvlzkeZcTbe9hkMH8WHjaO1M=
Date: Tue, 23 Jul 2019 16:10:38 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: Re: [PATCH v2 3/3] arm64: dts: freescale: Add support for i.MX8QXP
 AI_ML board
Message-ID: <20190723081035.GP15632@dragon>
References: <20190719070926.29114-1-manivannan.sadhasivam@linaro.org>
 <20190719070926.29114-4-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190719070926.29114-4-manivannan.sadhasivam@linaro.org>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_011111_136522_2372E06B 
X-CRM114-Status: GOOD (  19.18  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, kinjan.patel@einfochips.com,
 s.hauer@pengutronix.de, linux-kernel@vger.kernel.org,
 Darshak.Patel@einfochips.com, robh+dt@kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org, prajose.john@einfochips.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jul 19, 2019 at 12:39:26PM +0530, Manivannan Sadhasivam wrote:
> Add support for i.MX8QXP AI_ML board from Einfochips. This board is one
> of the Consumer Edition boards of the 96Boards family based on i.MX8QXP
> SoC from NXP/Freescale.
> 
> The initial support includes following peripherals which are tested and
> known to be working:
> 
> 1. Debug serial via UART2
> 2. uSD
> 3. WiFi
> 4. Ethernet
> 
> More information about this board can be found in Arrow website:
> https://www.arrow.com/en/products/imx8-ai-ml/arrow-development-tools
> 
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>
> ---
>  arch/arm64/boot/dts/freescale/Makefile        |   1 +
>  .../boot/dts/freescale/imx8qxp-ai_ml.dts      | 249 ++++++++++++++++++
>  2 files changed, 250 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/freescale/imx8qxp-ai_ml.dts
> 
> diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
> index 0bd122f60549..bd8460549d1a 100644
> --- a/arch/arm64/boot/dts/freescale/Makefile
> +++ b/arch/arm64/boot/dts/freescale/Makefile
> @@ -24,4 +24,5 @@ dtb-$(CONFIG_ARCH_MXC) += imx8mm-evk.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mq-evk.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mq-zii-ultra-rmb3.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mq-zii-ultra-zest.dtb
> +dtb-$(CONFIG_ARCH_MXC) += imx8qxp-ai_ml.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8qxp-mek.dtb
> diff --git a/arch/arm64/boot/dts/freescale/imx8qxp-ai_ml.dts b/arch/arm64/boot/dts/freescale/imx8qxp-ai_ml.dts
> new file mode 100644
> index 000000000000..3dc8757d9c42
> --- /dev/null
> +++ b/arch/arm64/boot/dts/freescale/imx8qxp-ai_ml.dts
> @@ -0,0 +1,249 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Copyright 2018 Einfochips
> + * Copyright 2019 Linaro Ltd.
> + */
> +
> +/dts-v1/;
> +
> +#include "imx8qxp.dtsi"
> +
> +/ {
> +	model = "Einfochips i.MX8QXP AI_ML";
> +	compatible = "einfochips,imx8qxp-ai_ml", "fsl,imx8qxp";
> +
> +	aliases {
> +		serial1 = &adma_lpuart1;
> +		serial2 = &adma_lpuart2;
> +		serial3 = &adma_lpuart3;
> +	};
> +
> +	chosen {
> +		stdout-path = &adma_lpuart2;
> +	};
> +
> +	memory@80000000 {
> +		device_type = "memory";
> +		reg = <0x00000000 0x80000000 0 0x80000000>;
> +	};
> +
> +	leds {
> +		compatible = "gpio-leds";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_leds>;
> +
> +		user_led1 {
> +			label = "green:user1";
> +			gpios = <&lsio_gpio4 16 GPIO_ACTIVE_HIGH>;
> +			linux,default-trigger = "heartbeat";
> +		};
> +
> +		user_led2 {
> +			label = "green:user2";
> +			gpios = <&lsio_gpio0 6 GPIO_ACTIVE_HIGH>;
> +			linux,default-trigger = "none";
> +		};
> +
> +		user_led3 {
> +			label = "green:user3";
> +			gpios = <&lsio_gpio0 7 GPIO_ACTIVE_HIGH>;
> +			linux,default-trigger = "mmc1";
> +			default-state = "off";
> +		};
> +
> +		user_led4 {
> +			label = "green:user4";
> +			gpios = <&lsio_gpio4 21 GPIO_ACTIVE_HIGH>;
> +			panic-indicator;
> +			linux,default-trigger = "none";
> +		};
> +
> +		wlan_active_led {
> +			label = "yellow:wlan";
> +			gpios = <&lsio_gpio4 17 GPIO_ACTIVE_HIGH>;
> +			linux,default-trigger = "phy0tx";
> +			default-state = "off";
> +		};
> +
> +		bt_active_led {

We prefer to use hyphen over underscore in node names.  I fixed them up
and applied the series.

Shawn

> +			label = "blue:bt";
> +			gpios = <&lsio_gpio4 18 GPIO_ACTIVE_HIGH>;
> +			linux,default-trigger = "hci0-power";
> +			default-state = "off";
> +		};
> +	};
> +
> +	sdio_pwrseq: sdio-pwrseq {
> +		compatible = "mmc-pwrseq-simple";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_wifi_reg_on>;
> +		reset-gpios = <&lsio_gpio3 24 GPIO_ACTIVE_LOW>;
> +	};
> +};
> +
> +/* BT */
> +&adma_lpuart0 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_lpuart0>;
> +	uart-has-rtscts;
> +	status = "okay";
> +};
> +
> +/* LS-UART0 */
> +&adma_lpuart1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_lpuart1>;
> +	status = "okay";
> +};
> +
> +/* Debug */
> +&adma_lpuart2 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_lpuart2>;
> +	status = "okay";
> +};
> +
> +/* PCI-E UART */
> +&adma_lpuart3 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_lpuart3>;
> +	status = "okay";
> +};
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
> +		ethphy0: ethernet-phy@0 {
> +			compatible = "ethernet-phy-ieee802.3-c22";
> +			reg = <0>;
> +		};
> +	};
> +};
> +
> +/* WiFi */
> +&usdhc1 {
> +	#address-cells = <1>;
> +	#size-cells = <0>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_usdhc1>;
> +	bus-width = <4>;
> +	no-sd;
> +	non-removable;
> +	mmc-pwrseq = <&sdio_pwrseq>;
> +	status = "okay";
> +
> +	brcmf: wifi@1 {
> +		reg = <1>;
> +		compatible = "brcm,bcm4329-fmac";
> +	};
> +};
> +
> +/* SD */
> +&usdhc2 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_usdhc2>;
> +	bus-width = <4>;
> +	cd-gpios = <&lsio_gpio4 22 GPIO_ACTIVE_LOW>;
> +	status = "okay";
> +};
> +
> +&iomuxc {
> +	pinctrl_fec1: fec1grp {
> +		fsl,pins = <
> +			IMX8QXP_ENET0_MDC_CONN_ENET0_MDC			0x06000020
> +			IMX8QXP_ENET0_MDIO_CONN_ENET0_MDIO			0x06000020
> +			IMX8QXP_ENET0_RGMII_TX_CTL_CONN_ENET0_RGMII_TX_CTL	0x06000020
> +			IMX8QXP_ENET0_RGMII_TXC_CONN_ENET0_RGMII_TXC		0x06000020
> +			IMX8QXP_ENET0_RGMII_TXD0_CONN_ENET0_RGMII_TXD0		0x06000020
> +			IMX8QXP_ENET0_RGMII_TXD1_CONN_ENET0_RGMII_TXD1		0x06000020
> +			IMX8QXP_ENET0_RGMII_TXD2_CONN_ENET0_RGMII_TXD2		0x06000020
> +			IMX8QXP_ENET0_RGMII_TXD3_CONN_ENET0_RGMII_TXD3		0x06000020
> +			IMX8QXP_ENET0_RGMII_RXC_CONN_ENET0_RGMII_RXC		0x06000020
> +			IMX8QXP_ENET0_RGMII_RX_CTL_CONN_ENET0_RGMII_RX_CTL	0x06000020
> +			IMX8QXP_ENET0_RGMII_RXD0_CONN_ENET0_RGMII_RXD0		0x06000020
> +			IMX8QXP_ENET0_RGMII_RXD1_CONN_ENET0_RGMII_RXD1		0x06000020
> +			IMX8QXP_ENET0_RGMII_RXD2_CONN_ENET0_RGMII_RXD2		0x06000020
> +			IMX8QXP_ENET0_RGMII_RXD3_CONN_ENET0_RGMII_RXD3		0x06000020
> +		>;
> +	};
> +
> +	pinctrl_leds: ledsgrp{
> +		fsl,pins = <
> +			IMX8QXP_ESAI0_TX2_RX3_LSIO_GPIO0_IO06			0x00000021
> +			IMX8QXP_ESAI0_TX3_RX2_LSIO_GPIO0_IO07			0x00000021
> +			IMX8QXP_EMMC0_DATA7_LSIO_GPIO4_IO16			0x00000021
> +			IMX8QXP_USDHC1_WP_LSIO_GPIO4_IO21			0x00000021
> +			IMX8QXP_EMMC0_STROBE_LSIO_GPIO4_IO17			0x00000021
> +			IMX8QXP_EMMC0_RESET_B_LSIO_GPIO4_IO18			0x00000021
> +		>;
> +	};
> +
> +	pinctrl_lpuart0: lpuart0grp {
> +		fsl,pins = <
> +			IMX8QXP_UART0_RX_ADMA_UART0_RX				0X06000020
> +			IMX8QXP_UART0_TX_ADMA_UART0_TX				0X06000020
> +			IMX8QXP_FLEXCAN0_TX_ADMA_UART0_CTS_B 			0x06000020
> +			IMX8QXP_FLEXCAN0_RX_ADMA_UART0_RTS_B			0x06000020
> +		>;
> +	};
> +
> +	pinctrl_lpuart1: lpuart1grp {
> +		fsl,pins = <
> +			IMX8QXP_UART1_RX_ADMA_UART1_RX				0X06000020
> +			IMX8QXP_UART1_TX_ADMA_UART1_TX				0X06000020
> +		>;
> +	};
> +
> +	pinctrl_lpuart2: lpuart2grp {
> +		fsl,pins = <
> +			IMX8QXP_UART2_RX_ADMA_UART2_RX				0X06000020
> +			IMX8QXP_UART2_TX_ADMA_UART2_TX				0X06000020
> +		>;
> +	};
> +
> +	pinctrl_lpuart3: lpuart3grp {
> +		fsl,pins = <
> +			IMX8QXP_FLEXCAN2_RX_ADMA_UART3_RX			0X06000020
> +			IMX8QXP_FLEXCAN2_TX_ADMA_UART3_TX			0X06000020
> +		>;
> +	};
> +
> +	pinctrl_usdhc1: usdhc1grp {
> +		fsl,pins = <
> +			IMX8QXP_EMMC0_CLK_CONN_EMMC0_CLK			0x06000041
> +			IMX8QXP_EMMC0_CMD_CONN_EMMC0_CMD			0x00000021
> +			IMX8QXP_EMMC0_DATA0_CONN_EMMC0_DATA0			0x00000021
> +			IMX8QXP_EMMC0_DATA1_CONN_EMMC0_DATA1			0x00000021
> +			IMX8QXP_EMMC0_DATA2_CONN_EMMC0_DATA2			0x00000021
> +			IMX8QXP_EMMC0_DATA3_CONN_EMMC0_DATA3			0x00000021
> +		>;
> +	};
> +
> +	pinctrl_usdhc2: usdhc2grp {
> +		fsl,pins = <
> +			IMX8QXP_USDHC1_CLK_CONN_USDHC1_CLK			0x06000041
> +			IMX8QXP_USDHC1_CMD_CONN_USDHC1_CMD			0x00000021
> +			IMX8QXP_USDHC1_DATA0_CONN_USDHC1_DATA0			0x00000021
> +			IMX8QXP_USDHC1_DATA1_CONN_USDHC1_DATA1			0x00000021
> +			IMX8QXP_USDHC1_DATA2_CONN_USDHC1_DATA2			0x00000021
> +			IMX8QXP_USDHC1_DATA3_CONN_USDHC1_DATA3			0x00000021
> +			IMX8QXP_USDHC1_VSELECT_CONN_USDHC1_VSELECT		0x00000021
> +			IMX8QXP_USDHC1_CD_B_LSIO_GPIO4_IO22			0x00000021
> +		>;
> +	};
> +
> +	pinctrl_wifi_reg_on: wifiregongrp {
> +		fsl,pins = <
> +			IMX8QXP_QSPI0B_SS1_B_LSIO_GPIO3_IO24			0x00000021
> +		>;
> +	};
> +};
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
