Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEDD2F539C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 19:35:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AyTMaaxGsphCOc6bs7ATiEvNEiC5qAdH3eSKm/54sRw=; b=j/WbDxtyeOx2Py
	ZvGw6T5hMwnn5hBr+762Hd8M+J4BjcWtQgiHZQbCe85I/+F8drARO+6IB3kqS3UVjUocuMSnukEvH
	NuJIw2m494TC2r3uvm9tClHZsfDsQ/tmKG16esGVFX6uVb7PkS1BSV9VHXAEQeAPzXDOjNeNmAr+x
	pszgxb8luVTKEQjWn/cvFgEiABhxF0VSmfSu2n6KskgD9oPGUj9DV5GW0c+uy2h4ZdiN6rnzqSt5C
	AagKkHxdnHVj1dMi+Pc2TIYCyLUVNhR0/F4bGKULEXdydNkE9jgEMX7BhgWaaWKe9sYMjD1TJY4Va
	kcgTbW3lc3udxjgjantg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT96G-0006X4-Pv; Fri, 08 Nov 2019 18:35:12 +0000
Received: from mo6-p02-ob.smtp.rzone.de ([2a01:238:20a:202:5302::5])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT95x-0006UY-Fr
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 18:34:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1573238091;
 s=strato-dkim-0002; d=goldelico.com;
 h=To:References:Message-Id:Cc:Date:In-Reply-To:From:Subject:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=GnRw42vPtsFekp3j/5R3etXbDUBgSRlx8obp99khaMk=;
 b=pwL1wESl5PRIGkVoJgsAJxRUs/BvxUwfqcLnBjDbvOGsWakqSW09SXaxC2bT3lPzCk
 MnG+XzGlvet4BaMag3LBGNquiN1Mq4w7f6y+uhgTMFyVyaNqRs4zOTaIYpQ9G6OrYqeC
 GjsIMYI2aJl/QcrpiiJ740sYgZcguSZ2+Kpe7xicer+J5ldBqbtIwGhVnIEENgKjDYMH
 4jR2hmthezu0tVBjbt8z1xDoqT7JwuQAWJAHzot0L46hySP/z+FK/t5zNV7B5yg5xucV
 Nomaavz1iTfyP/RrH0qQqnDWDflf7no6EfwYyFUqYA9IlnMi863bI8uEGZ1EtoryAJxI
 7bQQ==
X-RZG-AUTH: ":JGIXVUS7cutRB/49FwqZ7WcJeFKiMgPgp8VKxflSZ1P34KBj5Qpw97WFDleUXAoPgQ=="
X-RZG-CLASS-ID: mo00
Received: from imac.fritz.box by smtp.strato.de (RZmta 44.29.0 DYNA|AUTH)
 with ESMTPSA id L09db3vA8IYomD3
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (curve secp521r1 with 521 ECDH
 bits, eq. 15360 bits RSA)) (Client did not present a certificate);
 Fri, 8 Nov 2019 19:34:50 +0100 (CET)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
Subject: Re: [Letux-kernel] [PATCH 2/2] ARM: dts: add devicetree entry for
 Tolino Shine 3
From: "H. Nikolaus Schaller" <hns@goldelico.com>
In-Reply-To: <20191108111834.18610-3-andreas@kemnade.info>
Date: Fri, 8 Nov 2019 19:34:50 +0100
Message-Id: <F3C4901A-411E-4ED1-B765-AF3EE0FC1CF9@goldelico.com>
References: <20191108111834.18610-1-andreas@kemnade.info>
 <20191108111834.18610-3-andreas@kemnade.info>
To: Andreas Kemnade <andreas@kemnade.info>
X-Mailer: Apple Mail (2.3124)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_103453_699805_28F7E845 
X-CRM114-Status: GOOD (  15.91  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5302:0:0:5 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 devicetree <devicetree@vger.kernel.org>, andrew.smirnov@gmail.com,
 shawnguo@kernel.org, s.hauer@pengutronix.de,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 j.neuschaefer@gmx.net, Rob Herring <robh+dt@kernel.org>, linux-imx@nxp.com,
 kernel@pengutronix.de, manivannan.sadhasivam@linaro.org, festevam@gmail.com,
 arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


> Am 08.11.2019 um 12:18 schrieb Andreas Kemnade <andreas@kemnade.info>:
> 
> The device is almost identical to the Kobo Clara HD. The only
> spotted difference is the SoC. It contains an imx6sl
> instead of an imx6sll.
> 
> Signed-off-by: Andreas Kemnade <andreas@kemnade.info>
> ---
> arch/arm/boot/dts/Makefile                 |   1 +
> arch/arm/boot/dts/imx6sl-tolino-shine3.dts | 326 +++++++++++++++++++++++++++++
> 2 files changed, 327 insertions(+)
> create mode 100644 arch/arm/boot/dts/imx6sl-tolino-shine3.dts
> 
> diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
> index f969c37729d5..1486615470b2 100644
> --- a/arch/arm/boot/dts/Makefile
> +++ b/arch/arm/boot/dts/Makefile
> @@ -550,6 +550,7 @@ dtb-$(CONFIG_SOC_IMX6Q) += \
> 	imx6qp-zii-rdu2.dtb
> dtb-$(CONFIG_SOC_IMX6SL) += \
> 	imx6sl-evk.dtb \
> +	imx6sl-tolino-shine3.dtb \
> 	imx6sl-warp.dtb
> dtb-$(CONFIG_SOC_IMX6SLL) += \
> 	imx6sll-evk.dtb \
> diff --git a/arch/arm/boot/dts/imx6sl-tolino-shine3.dts b/arch/arm/boot/dts/imx6sl-tolino-shine3.dts
> new file mode 100644
> index 000000000000..0ee49258f22c
> --- /dev/null
> +++ b/arch/arm/boot/dts/imx6sl-tolino-shine3.dts
> @@ -0,0 +1,326 @@
> +// SPDX-License-Identifier: (GPL-2.0)
> +/*
> + * Device tree for the Tolino Shine 3 ebook reader
> + *
> + * Name on mainboard is: 37NB-E60K00+4A4
> + * Serials start with: E60K02 (a number also seen in
> + * vendor kernel sources)
> + *
> + * This mainboard seems to be equipped with different SoCs.
> + * In the Toline Shine 3 ebook reader it is a i.MX6SL
> + *
> + * Copyright 2019 Andreas Kemnade
> + * based on works
> + * Copyright 2016 Freescale Semiconductor, Inc.
> + */
> +
> +/dts-v1/;
> +
> +#include <dt-bindings/input/input.h>
> +#include <dt-bindings/gpio/gpio.h>
> +#include "imx6sl.dtsi"
> +#include "e60k02.dtsi"
> +
> +/ {
> +	model = "Tolino Shine 3";
> +	compatible = "kobo,tolino-shine3", "fsl,imx6sl";
> +};
> +
> +&gpio_keys {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_gpio_keys>;
> +};
> +
> +&i2c1 {
> +	pinctrl-names = "default","sleep";
> +	pinctrl-0 = <&pinctrl_i2c1>;
> +	pinctrl-1 = <&pinctrl_i2c1_sleep>;
> +};
> +
> +&i2c2 {
> +	pinctrl-names = "default","sleep";
> +	pinctrl-0 = <&pinctrl_i2c2>;
> +	pinctrl-1 = <&pinctrl_i2c2_sleep>;
> +};
> +
> +&i2c3 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_i2c3>;
> +};
> +
> +&iomuxc {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_hog>;
> +
> +	pinctrl_gpio_keys: gpio-keysgrp {
> +		fsl,pins = <
> +			MX6SL_PAD_SD1_DAT1__GPIO5_IO08	0x17059	/* PWR_SW */
> +			MX6SL_PAD_SD1_DAT4__GPIO5_IO12	0x17059	/* HALL_EN */
> +		>;
> +	};
> +
> +	pinctrl_hog: hoggrp {
> +		fsl,pins = <
> +			MX6SL_PAD_LCD_DAT0__GPIO2_IO20	0x79
> +			MX6SL_PAD_LCD_DAT1__GPIO2_IO21	0x79
> +			MX6SL_PAD_LCD_DAT2__GPIO2_IO22	0x79
> +			MX6SL_PAD_LCD_DAT3__GPIO2_IO23	0x79
> +			MX6SL_PAD_LCD_DAT4__GPIO2_IO24	0x79
> +			MX6SL_PAD_LCD_DAT5__GPIO2_IO25	0x79
> +			MX6SL_PAD_LCD_DAT6__GPIO2_IO26	0x79
> +			MX6SL_PAD_LCD_DAT7__GPIO2_IO27	0x79
> +			MX6SL_PAD_LCD_DAT8__GPIO2_IO28	0x79
> +			MX6SL_PAD_LCD_DAT9__GPIO2_IO29	0x79
> +			MX6SL_PAD_LCD_DAT10__GPIO2_IO30	0x79
> +			MX6SL_PAD_LCD_DAT11__GPIO2_IO31	0x79
> +			MX6SL_PAD_LCD_DAT12__GPIO3_IO00	0x79
> +			MX6SL_PAD_LCD_DAT13__GPIO3_IO01	0x79
> +			MX6SL_PAD_LCD_DAT14__GPIO3_IO02	0x79
> +			MX6SL_PAD_LCD_DAT15__GPIO3_IO03	0x79
> +			MX6SL_PAD_LCD_DAT16__GPIO3_IO04	0x79
> +			MX6SL_PAD_LCD_DAT17__GPIO3_IO05	0x79
> +			MX6SL_PAD_LCD_DAT18__GPIO3_IO06	0x79
> +			MX6SL_PAD_LCD_DAT19__GPIO3_IO07	0x79
> +			MX6SL_PAD_LCD_DAT20__GPIO3_IO08	0x79
> +			MX6SL_PAD_LCD_DAT21__GPIO3_IO09	0x79
> +			MX6SL_PAD_LCD_DAT22__GPIO3_IO10	0x79
> +			MX6SL_PAD_LCD_DAT23__GPIO3_IO11	0x79
> +			MX6SL_PAD_LCD_CLK__GPIO2_IO15		0x79
> +			MX6SL_PAD_LCD_ENABLE__GPIO2_IO16	0x79
> +			MX6SL_PAD_LCD_HSYNC__GPIO2_IO17	0x79
> +			MX6SL_PAD_LCD_VSYNC__GPIO2_IO18	0x79
> +			MX6SL_PAD_LCD_RESET__GPIO2_IO19	0x79
> +			MX6SL_PAD_KEY_COL3__GPIO3_IO30		0x79
> +			MX6SL_PAD_KEY_ROW7__GPIO4_IO07		0x79
> +			MX6SL_PAD_ECSPI2_MOSI__GPIO4_IO13	0x79
> +			MX6SL_PAD_KEY_COL5__GPIO4_IO02		0x79
> +			MX6SL_PAD_KEY_ROW6__GPIO4_IO05		0x79
> +		>;
> +	};
> +
> +	pinctrl_i2c1: i2c1grp {
> +		fsl,pins = <
> +			MX6SL_PAD_I2C1_SCL__I2C1_SCL	 0x4001f8b1
> +			MX6SL_PAD_I2C1_SDA__I2C1_SDA	 0x4001f8b1
> +		>;
> +	};
> +
> +	pinctrl_i2c1_sleep: i2c1grp-sleep {
> +		fsl,pins = <
> +			MX6SL_PAD_I2C1_SCL__I2C1_SCL	 0x400108b1
> +			MX6SL_PAD_I2C1_SDA__I2C1_SDA	 0x400108b1
> +		>;
> +	};
> +
> +	pinctrl_i2c2: i2c2grp {
> +		fsl,pins = <
> +			MX6SL_PAD_I2C2_SCL__I2C2_SCL	 0x4001f8b1
> +			MX6SL_PAD_I2C2_SDA__I2C2_SDA	 0x4001f8b1
> +		>;
> +	};
> +
> +	pinctrl_i2c2_sleep: i2c2grp-sleep {
> +		fsl,pins = <
> +			MX6SL_PAD_I2C2_SCL__I2C2_SCL	 0x400108b1
> +			MX6SL_PAD_I2C2_SDA__I2C2_SDA	 0x400108b1
> +		>;
> +	};
> +
> +	pinctrl_i2c3: i2c3grp {
> +		fsl,pins = <
> +			MX6SL_PAD_REF_CLK_24M__I2C3_SCL  0x4001f8b1
> +			MX6SL_PAD_REF_CLK_32K__I2C3_SDA  0x4001f8b1
> +		>;
> +	};
> +
> +	pinctrl_led: ledgrp {
> +		fsl,pins = <
> +			MX6SL_PAD_SD1_DAT6__GPIO5_IO07 0x17059
> +		>;
> +	};
> +
> +	pinctrl_lm3630a_bl_gpio: lm3630a-bl-gpiogrp {
> +		fsl,pins = <
> +			MX6SL_PAD_EPDC_PWRCTRL3__GPIO2_IO10		0x10059 /* HWEN */
> +		>;
> +	};
> +
> +	pinctrl_ricoh_gpio: ricoh_gpiogrp {
> +		fsl,pins = <
> +			MX6SL_PAD_SD1_CLK__GPIO5_IO15                  0x1b8b1 /* ricoh619 chg */
> +			MX6SL_PAD_SD1_DAT0__GPIO5_IO11        0x1b8b1 /* ricoh619 irq */
> +			MX6SL_PAD_KEY_COL2__GPIO3_IO28                         0x1b8b1 /* ricoh619 bat_low_int */
> +		>;
> +	};
> +
> +	pinctrl_uart1: uart1grp {
> +		fsl,pins = <
> +			MX6SL_PAD_UART1_TXD__UART1_TX_DATA 0x1b0b1
> +			MX6SL_PAD_UART1_RXD__UART1_TX_DATA 0x1b0b1
> +		>;
> +	};
> +
> +	pinctrl_usbotg1: usbotg1grp {
> +		fsl,pins = <
> +			MX6SL_PAD_EPDC_PWRCOM__USB_OTG1_ID 0x17059
> +		>;
> +	};
> +
> +	pinctrl_usdhc2: usdhc2grp {
> +		fsl,pins = <
> +			MX6SL_PAD_SD2_CMD__SD2_CMD		0x17059
> +			MX6SL_PAD_SD2_CLK__SD2_CLK		0x13059
> +			MX6SL_PAD_SD2_DAT0__SD2_DATA0		0x17059
> +			MX6SL_PAD_SD2_DAT1__SD2_DATA1		0x17059
> +			MX6SL_PAD_SD2_DAT2__SD2_DATA2		0x17059
> +			MX6SL_PAD_SD2_DAT3__SD2_DATA3		0x17059
> +		>;
> +	};
> +
> +	pinctrl_usdhc2_100mhz: usdhc2grp-100mhz {
> +		fsl,pins = <
> +			MX6SL_PAD_SD2_CMD__SD2_CMD		0x170b9
> +			MX6SL_PAD_SD2_CLK__SD2_CLK		0x130b9
> +			MX6SL_PAD_SD2_DAT0__SD2_DATA0		0x170b9
> +			MX6SL_PAD_SD2_DAT1__SD2_DATA1		0x170b9
> +			MX6SL_PAD_SD2_DAT2__SD2_DATA2		0x170b9
> +			MX6SL_PAD_SD2_DAT3__SD2_DATA3		0x170b9
> +		>;
> +	};
> +
> +	pinctrl_usdhc2_200mhz: usdhc2grp-200mhz {
> +		fsl,pins = <
> +			MX6SL_PAD_SD2_CMD__SD2_CMD		0x170f9
> +			MX6SL_PAD_SD2_CLK__SD2_CLK		0x130f9
> +			MX6SL_PAD_SD2_DAT0__SD2_DATA0		0x170f9
> +			MX6SL_PAD_SD2_DAT1__SD2_DATA1		0x170f9
> +			MX6SL_PAD_SD2_DAT2__SD2_DATA2		0x170f9
> +			MX6SL_PAD_SD2_DAT3__SD2_DATA3		0x170f9
> +		>;
> +	};
> +
> +	pinctrl_usdhc2_sleep: usdhc2grp-sleep {
> +		fsl,pins = <
> +			MX6SL_PAD_SD2_CMD__GPIO5_IO04		0x100f9
> +			MX6SL_PAD_SD2_CLK__GPIO5_IO05		0x100f9
> +			MX6SL_PAD_SD2_DAT0__GPIO5_IO01		0x100f9
> +			MX6SL_PAD_SD2_DAT1__GPIO4_IO30		0x100f9
> +			MX6SL_PAD_SD2_DAT2__GPIO5_IO03		0x100f9
> +			MX6SL_PAD_SD2_DAT3__GPIO4_IO28		0x100f9
> +		>;
> +	};
> +
> +	pinctrl_usdhc3: usdhc3grp {
> +		fsl,pins = <
> +			MX6SL_PAD_SD3_CMD__SD3_CMD	0x11059
> +			MX6SL_PAD_SD3_CLK__SD3_CLK	0x11059
> +			MX6SL_PAD_SD3_DAT0__SD3_DATA0	0x11059
> +			MX6SL_PAD_SD3_DAT1__SD3_DATA1	0x11059
> +			MX6SL_PAD_SD3_DAT2__SD3_DATA2	0x11059
> +			MX6SL_PAD_SD3_DAT3__SD3_DATA3	0x11059
> +		>;
> +	};
> +
> +	pinctrl_usdhc3_100mhz: usdhc3grp-100mhz {
> +		fsl,pins = <
> +			MX6SL_PAD_SD3_CMD__SD3_CMD	0x170b9
> +			MX6SL_PAD_SD3_CLK__SD3_CLK	0x170b9
> +			MX6SL_PAD_SD3_DAT0__SD3_DATA0	0x170b9
> +			MX6SL_PAD_SD3_DAT1__SD3_DATA1	0x170b9
> +			MX6SL_PAD_SD3_DAT2__SD3_DATA2	0x170b9
> +			MX6SL_PAD_SD3_DAT3__SD3_DATA3	0x170b9
> +		>;
> +	};
> +
> +	pinctrl_usdhc3_200mhz: usdhc3grp-200mhz {
> +		fsl,pins = <
> +			MX6SL_PAD_SD3_CMD__SD3_CMD	0x170f9
> +			MX6SL_PAD_SD3_CLK__SD3_CLK	0x170f9
> +			MX6SL_PAD_SD3_DAT0__SD3_DATA0	0x170f9
> +			MX6SL_PAD_SD3_DAT1__SD3_DATA1	0x170f9
> +			MX6SL_PAD_SD3_DAT2__SD3_DATA2	0x170f9
> +			MX6SL_PAD_SD3_DAT3__SD3_DATA3	0x170f9
> +		>;
> +	};
> +
> +	pinctrl_usdhc3_sleep: usdhc3grp-sleep {
> +		fsl,pins = <
> +			MX6SL_PAD_SD3_CMD__GPIO5_IO21	0x100c1
> +			MX6SL_PAD_SD3_CLK__GPIO5_IO18	0x100c1
> +			MX6SL_PAD_SD3_DAT0__GPIO5_IO19	0x100c1
> +			MX6SL_PAD_SD3_DAT1__GPIO5_IO20	0x100c1
> +			MX6SL_PAD_SD3_DAT2__GPIO5_IO16	0x100c1
> +			MX6SL_PAD_SD3_DAT3__GPIO5_IO17	0x100c1
> +		>;
> +	};
> +
> +	pinctrl_wifi_power: wifi-powergrp {
> +		fsl,pins = <
> +			MX6SL_PAD_SD2_DAT6__GPIO4_IO29	0x10059	/* WIFI_3V3_ON */
> +		>;
> +	};
> +
> +	pinctrl_wifi_reset: wifi-resetgrp {
> +		fsl,pins = <
> +			MX6SL_PAD_SD2_DAT7__GPIO5_IO00	0x10059	/* WIFI_RST */
> +		>;
> +	};
> +};
> +
> +&leds {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_led>;
> +};
> +
> +&lm3630a {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_lm3630a_bl_gpio>;
> +};
> +
> +&reg_wifi {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_wifi_power>;
> +};
> +
> +&reg_vdd1p1 {
> +	vin-supply = <&dcdc2_reg>;
> +};
> +
> +&reg_vdd2p5 {
> +	vin-supply = <&dcdc2_reg>;
> +};
> +
> +&reg_vdd3p0 {
> +	vin-supply = <&dcdc2_reg>;
> +};
> +
> +&ricoh619 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_ricoh_gpio>;
> +};
> +
> +&uart1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_uart1>;
> +};
> +
> +&usdhc2 {
> +	pinctrl-names = "default", "state_100mhz", "state_200mhz", "sleep";
> +	pinctrl-0 = <&pinctrl_usdhc2>;
> +	pinctrl-1 = <&pinctrl_usdhc2_100mhz>;
> +	pinctrl-2 = <&pinctrl_usdhc2_200mhz>;
> +	pinctrl-3 = <&pinctrl_usdhc2_sleep>;
> +};
> +
> +&usdhc3 {
> +	pinctrl-names = "default", "state_100mhz", "state_200mhz", "sleep";
> +	pinctrl-0 = <&pinctrl_usdhc3>;
> +	pinctrl-1 = <&pinctrl_usdhc3_100mhz>;
> +	pinctrl-2 = <&pinctrl_usdhc3_200mhz>;
> +	pinctrl-3 = <&pinctrl_usdhc3_sleep>;
> +};
> +
> +&wifi_pwrseq {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_wifi_reset>;
> +};
> -- 
> 2.11.0

Tested-by: H. Nikolaus Schaller <hns@goldelico.com> # Tolino Shine3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
