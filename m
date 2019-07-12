Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2D926723A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 17:22:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VVt63Ezzo07/O6jY9cqZJ8EphUOCFlgtavMCSotJaDU=; b=fvBwIOQVk/i/We
	+gl7Myj9/a5thYCyJv9FIgxVoiBtH4vkXbImhj/dA1aV9H9Qdr4u8yAHwsZWZci11zSh+rwvLzDCj
	x/V0fATpplAcEr5mLDCVRLjOsJcsZhEBKk4bNR2lLPPp5WXuTgsTE2/HtZuRHAdqQFvePMr1S6wWG
	PrFCmrUN9NVr+U06/6GgQcQilJTTb8pi7RyU2AzviEeWYuht7xs7oxVZAqjEcd6sS1QjLvCkv8687
	PThfKBAfTeT05oq5vs6tJ1QlDuN+yqx5v8Z+RjLQZ66RKVCB3RIZlkDZ3EJp4UWVF5N9IsYpQJMAG
	YPCrF0s05G+/VXzdVZ5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlxN6-0002Jc-Dp; Fri, 12 Jul 2019 15:22:04 +0000
Received: from skedge03.snt-world.com ([91.208.41.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlxMt-0002IN-JC
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 15:21:54 +0000
Received: from sntmail12r.snt-is.com (unknown [10.203.32.182])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by skedge03.snt-world.com (Postfix) with ESMTPS id CC9A067A6FE;
 Fri, 12 Jul 2019 17:21:43 +0200 (CEST)
Received: from sntmail12r.snt-is.com (10.203.32.182) by sntmail12r.snt-is.com
 (10.203.32.182) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Fri, 12 Jul
 2019 17:21:43 +0200
Received: from sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305]) by
 sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305%3]) with mapi id
 15.01.1713.004; Fri, 12 Jul 2019 17:21:43 +0200
From: Schrempf Frieder <frieder.schrempf@kontron.de>
To: Krzysztof Kozlowski <krzk@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team
 <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, NXP Linux Team
 <linux-imx@nxp.com>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH] ARM: dts: imx6ul-kontron-ul2: Add Exceet/Kontron iMX6-UL2
 SoM
Thread-Topic: [PATCH] ARM: dts: imx6ul-kontron-ul2: Add Exceet/Kontron
 iMX6-UL2 SoM
Thread-Index: AQHVOL1dBqnDgiFo/UyQBjMEMaNniabG+AIA
Date: Fri, 12 Jul 2019 15:21:43 +0000
Message-ID: <5cbd8bb2-6ecb-7e55-1580-e580e2c340dd@kontron.de>
References: <20190712141242.4915-1-krzk@kernel.org>
In-Reply-To: <20190712141242.4915-1-krzk@kernel.org>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.25.9.193]
x-c2processedorg: 51b406b7-48a2-4d03-b652-521f56ac89f3
Content-ID: <9EABA688A261044E86714FBBCC49DE08@snt-world.com>
MIME-Version: 1.0
X-SnT-MailScanner-Information: Please contact the ISP for more information
X-SnT-MailScanner-ID: CC9A067A6FE.A42A1
X-SnT-MailScanner: Not scanned: please contact your Internet E-Mail Service
 Provider for details
X-SnT-MailScanner-SpamCheck: 
X-SnT-MailScanner-From: frieder.schrempf@kontron.de
X-SnT-MailScanner-To: devicetree@vger.kernel.org, festevam@gmail.com,
 kernel@pengutronix.de, krzk@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com,
 linux-kernel@vger.kernel.org, s.hauer@pengutronix.de,
 shawnguo@kernel.org
X-Spam-Status: No
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_082151_967251_EFD18936 
X-CRM114-Status: GOOD (  26.69  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [91.208.41.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Krzysztof,

On 12.07.19 16:12, Krzysztof Kozlowski wrote:
> Add support for iMX6-UL2 modules from Kontron Electronics GmbH (before
> acquisition: Exceet Electronics) and evalkit boards based on it:
> 
> 1. i.MX6 UL System-on-Module, a 25x25 mm solderable module (LGA pads and
>     pin castellations) with 256 MB RAM, 1 MB NOR-Flash, 256 MB NAND and
>     other interfaces,
> 1. UL2 evalkit, w/wo eMMC, without display,
> 2. UL2 evalkit with 4.3" display,
> 3. UL2 evalkit with 5.0" display.
> 
> This includes device nodes for unsupported displays (Admatec
> T043C004800272T2A and T070P133T0S301).
> 
> The work is based on Exceet source code (GPLv2) with numerous changes:
> 1. Reorganize files,
> 2. Rename Exceet -> Kontron,
> 3. Fix coding style errors,
> 4. Fix DTC warnings,
> 5. Extend compatibles so eval boards inherit the SoM compatible,
> 6. Use defines instead of GPIO flag values,
> 7. Adjust operating points of CPU0,
> 8. Sort nodes alphabetically.
> 
> In downstream BSP the Exceet name still appears in multiple places
> therefore I left it in the model names.

First, thanks for your work. I planned to upstream these boards myself 
after the FSL QSPI spi-mem driver was merged in 5.1, but didn't have 
time to finalize and send the patches.

Meanwhile we came up with a new naming scheme for our boards, that 
hasn't been implemented yet. But I would like to take this chance to 
implement the new scheme.

Also there are some more flavors of the SoM (with i.MX6ULL instead of 
i.MX6UL, with 512MiB instead of 256MiB flash/RAM), that I would like to 
add and for which common parts of the SoM dtsi would need to be factored 
out to a separate file.

I would prefer to at least apply the naming changes before merging. The 
additional board flavors could be added before merging or I could send 
them as follow-up patches. What do you think?

Thanks,
Frieder

> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> ---
>   arch/arm/boot/dts/Makefile                    |   3 +
>   arch/arm/boot/dts/imx6ul-kontron-ul2-43.dts   | 123 +++++
>   arch/arm/boot/dts/imx6ul-kontron-ul2-50.dts   | 123 +++++
>   arch/arm/boot/dts/imx6ul-kontron-ul2-som.dtsi | 152 ++++++
>   arch/arm/boot/dts/imx6ul-kontron-ul2.dts      | 435 ++++++++++++++++++
>   5 files changed, 836 insertions(+)
>   create mode 100644 arch/arm/boot/dts/imx6ul-kontron-ul2-43.dts
>   create mode 100644 arch/arm/boot/dts/imx6ul-kontron-ul2-50.dts
>   create mode 100644 arch/arm/boot/dts/imx6ul-kontron-ul2-som.dtsi
>   create mode 100644 arch/arm/boot/dts/imx6ul-kontron-ul2.dts
> 
> diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
> index 9159fa2cea90..3431bb44fb5d 100644
> --- a/arch/arm/boot/dts/Makefile
> +++ b/arch/arm/boot/dts/Makefile
> @@ -569,6 +569,9 @@ dtb-$(CONFIG_SOC_IMX6UL) += \
>   	imx6ul-geam.dtb \
>   	imx6ul-isiot-emmc.dtb \
>   	imx6ul-isiot-nand.dtb \
> +	imx6ul-kontron-ul2.dtb \
> +	imx6ul-kontron-ul2-43.dtb \
> +	imx6ul-kontron-ul2-50.dtb \
>   	imx6ul-liteboard.dtb \
>   	imx6ul-opos6uldev.dtb \
>   	imx6ul-pico-hobbit.dtb \
> diff --git a/arch/arm/boot/dts/imx6ul-kontron-ul2-43.dts b/arch/arm/boot/dts/imx6ul-kontron-ul2-43.dts
> new file mode 100644
> index 000000000000..a2b68ba14765
> --- /dev/null
> +++ b/arch/arm/boot/dts/imx6ul-kontron-ul2-43.dts
> @@ -0,0 +1,123 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (C) 2017 exceet electronics GmbH
> + * Copyright (c) 2019 Krzysztof Kozlowski <krzk@kernel.org>
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License version 2 as
> + * published by the Free Software Foundation.
> + */
> +
> +#include "imx6ul-kontron-ul2.dts"
> +
> +/ {
> +	model = "Exceet/Kontron iMX6 UL-2 S 43";
> +	compatible = "kontron,imx6ul-ul2-s-43", "kontron,imx6ul-ul2-s",
> +		     "kontron,imx6ul-ul2-som", "fsl,imx6ul";
> +
> +	backlight: backlight {
> +		compatible = "pwm-backlight";
> +		pwms = <&pwm7 0 5000000>;
> +		brightness-levels = <0 4 8 16 32 64 128 255>;
> +		default-brightness-level = <6>;
> +		status = "okay";
> +	};
> +
> +	panel {
> +		compatible = "admatec,t043c004800272t2a";
> +		backlight = <&backlight>;
> +
> +		port {
> +			panel_in: endpoint {
> +				remote-endpoint = <&display_out>;
> +			};
> +		};
> +	};
> +};
> +
> +&i2c4 {
> +	gt911@5d {
> +		compatible = "goodix,gt928";
> +		reg = <0x5d>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_cap_touch>;
> +		interrupt-parent = <&gpio5>;
> +		interrupts = <6 8>;
> +		reset-gpios = <&gpio5 8 GPIO_ACTIVE_HIGH>;
> +		irq-gpios = <&gpio5 6 GPIO_ACTIVE_HIGH>;
> +	};
> +};
> +
> +&iomuxc {
> +	pinctrl_lcdif_dat: lcdifdatgrp {
> +		fsl,pins = <
> +			MX6UL_PAD_LCD_DATA00__LCDIF_DATA00	0x79
> +			MX6UL_PAD_LCD_DATA01__LCDIF_DATA01	0x79
> +			MX6UL_PAD_LCD_DATA02__LCDIF_DATA02	0x79
> +			MX6UL_PAD_LCD_DATA03__LCDIF_DATA03	0x79
> +			MX6UL_PAD_LCD_DATA04__LCDIF_DATA04	0x79
> +			MX6UL_PAD_LCD_DATA05__LCDIF_DATA05	0x79
> +			MX6UL_PAD_LCD_DATA06__LCDIF_DATA06	0x79
> +			MX6UL_PAD_LCD_DATA07__LCDIF_DATA07	0x79
> +			MX6UL_PAD_LCD_DATA08__LCDIF_DATA08	0x79
> +			MX6UL_PAD_LCD_DATA09__LCDIF_DATA09	0x79
> +			MX6UL_PAD_LCD_DATA10__LCDIF_DATA10	0x79
> +			MX6UL_PAD_LCD_DATA11__LCDIF_DATA11	0x79
> +			MX6UL_PAD_LCD_DATA12__LCDIF_DATA12	0x79
> +			MX6UL_PAD_LCD_DATA13__LCDIF_DATA13	0x79
> +			MX6UL_PAD_LCD_DATA14__LCDIF_DATA14	0x79
> +			MX6UL_PAD_LCD_DATA15__LCDIF_DATA15	0x79
> +			MX6UL_PAD_LCD_DATA16__LCDIF_DATA16	0x79
> +			MX6UL_PAD_LCD_DATA17__LCDIF_DATA17	0x79
> +			MX6UL_PAD_LCD_DATA18__LCDIF_DATA18	0x79
> +			MX6UL_PAD_LCD_DATA19__LCDIF_DATA19	0x79
> +			MX6UL_PAD_LCD_DATA20__LCDIF_DATA20	0x79
> +			MX6UL_PAD_LCD_DATA21__LCDIF_DATA21	0x79
> +			MX6UL_PAD_LCD_DATA22__LCDIF_DATA22	0x79
> +			MX6UL_PAD_LCD_DATA23__LCDIF_DATA23	0x79
> +		>;
> +	};
> +
> +	pinctrl_lcdif_ctrl: lcdifctrlgrp {
> +		fsl,pins = <
> +			MX6UL_PAD_LCD_CLK__LCDIF_CLK		0x79
> +			MX6UL_PAD_LCD_ENABLE__LCDIF_ENABLE	0x79
> +			MX6UL_PAD_LCD_HSYNC__LCDIF_HSYNC	0x79
> +			MX6UL_PAD_LCD_VSYNC__LCDIF_VSYNC	0x79
> +			MX6UL_PAD_LCD_RESET__LCDIF_RESET	0x79
> +		>;
> +	};
> +
> +	pinctrl_cap_touch: captouchgrp {
> +		fsl,pins = <
> +			MX6UL_PAD_SNVS_TAMPER6__GPIO5_IO06	0x1b0b0 /* Touch Interrupt */
> +			MX6UL_PAD_SNVS_TAMPER7__GPIO5_IO07	0x1b0b0 /* Touch Reset */
> +			MX6UL_PAD_SNVS_TAMPER8__GPIO5_IO08	0x1b0b0 /* Touch Wake */
> +		>;
> +	};
> +
> +	pinctrl_pwm7: pwm7grp {
> +		fsl,pins = <
> +			MX6UL_PAD_CSI_VSYNC__PWM7_OUT		0x110b0
> +		>;
> +	};
> +};
> +
> +&lcdif {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_lcdif_dat
> +		     &pinctrl_lcdif_ctrl>;
> +	status = "okay";
> +
> +	port {
> +		display_out: endpoint {
> +			remote-endpoint = <&panel_in>;
> +		};
> +	};
> +};
> +
> +&pwm7 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_pwm7>;
> +	status = "okay";
> +};
> diff --git a/arch/arm/boot/dts/imx6ul-kontron-ul2-50.dts b/arch/arm/boot/dts/imx6ul-kontron-ul2-50.dts
> new file mode 100644
> index 000000000000..61017020e02f
> --- /dev/null
> +++ b/arch/arm/boot/dts/imx6ul-kontron-ul2-50.dts
> @@ -0,0 +1,123 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (C) 2017 exceet electronics GmbH
> + * Copyright (c) 2019 Krzysztof Kozlowski <krzk@kernel.org>
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License version 2 as
> + * published by the Free Software Foundation.
> + */
> +
> +#include "imx6ul-kontron-ul2.dts"
> +
> +/ {
> +	model = "Exceet/Kontron iMX6 UL-2 S 50";
> +	compatible = "kontron,imx6ul-ul2-s-50", "kontron,imx6ul-ul2-s",
> +		     "kontron,imx6ul-ul2-som", "fsl,imx6ul";
> +
> +	backlight: backlight {
> +		compatible = "pwm-backlight";
> +		pwms = <&pwm7 0 5000000>;
> +		brightness-levels = <0 4 8 16 32 64 128 255>;
> +		default-brightness-level = <6>;
> +		status = "okay";
> +	};
> +
> +	panel {
> +		compatible = "admatec,t070p133t0s301";
> +		backlight = <&backlight>;
> +
> +		port {
> +			panel_in: endpoint {
> +				remote-endpoint = <&display_out>;
> +			};
> +		};
> +	};
> +};
> +
> +&i2c4 {
> +	gt911@5d {
> +		compatible = "goodix,gt928";
> +		reg = <0x5d>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_cap_touch>;
> +		interrupt-parent = <&gpio5>;
> +		interrupts = <6 8>;
> +		reset-gpios = <&gpio5 8 GPIO_ACTIVE_HIGH>;
> +		irq-gpios = <&gpio5 6 GPIO_ACTIVE_HIGH>;
> +	};
> +};
> +
> +&iomuxc {
> +	pinctrl_lcdif_dat: lcdifdatgrp {
> +		fsl,pins = <
> +			MX6UL_PAD_LCD_DATA00__LCDIF_DATA00	0x79
> +			MX6UL_PAD_LCD_DATA01__LCDIF_DATA01	0x79
> +			MX6UL_PAD_LCD_DATA02__LCDIF_DATA02	0x79
> +			MX6UL_PAD_LCD_DATA03__LCDIF_DATA03	0x79
> +			MX6UL_PAD_LCD_DATA04__LCDIF_DATA04	0x79
> +			MX6UL_PAD_LCD_DATA05__LCDIF_DATA05	0x79
> +			MX6UL_PAD_LCD_DATA06__LCDIF_DATA06	0x79
> +			MX6UL_PAD_LCD_DATA07__LCDIF_DATA07	0x79
> +			MX6UL_PAD_LCD_DATA08__LCDIF_DATA08	0x79
> +			MX6UL_PAD_LCD_DATA09__LCDIF_DATA09	0x79
> +			MX6UL_PAD_LCD_DATA10__LCDIF_DATA10	0x79
> +			MX6UL_PAD_LCD_DATA11__LCDIF_DATA11	0x79
> +			MX6UL_PAD_LCD_DATA12__LCDIF_DATA12	0x79
> +			MX6UL_PAD_LCD_DATA13__LCDIF_DATA13	0x79
> +			MX6UL_PAD_LCD_DATA14__LCDIF_DATA14	0x79
> +			MX6UL_PAD_LCD_DATA15__LCDIF_DATA15	0x79
> +			MX6UL_PAD_LCD_DATA16__LCDIF_DATA16	0x79
> +			MX6UL_PAD_LCD_DATA17__LCDIF_DATA17	0x79
> +			MX6UL_PAD_LCD_DATA18__LCDIF_DATA18	0x79
> +			MX6UL_PAD_LCD_DATA19__LCDIF_DATA19	0x79
> +			MX6UL_PAD_LCD_DATA20__LCDIF_DATA20	0x79
> +			MX6UL_PAD_LCD_DATA21__LCDIF_DATA21	0x79
> +			MX6UL_PAD_LCD_DATA22__LCDIF_DATA22	0x79
> +			MX6UL_PAD_LCD_DATA23__LCDIF_DATA23	0x79
> +		>;
> +	};
> +
> +	pinctrl_lcdif_ctrl: lcdifctrlgrp {
> +		fsl,pins = <
> +			MX6UL_PAD_LCD_CLK__LCDIF_CLK		0x79
> +			MX6UL_PAD_LCD_ENABLE__LCDIF_ENABLE	0x79
> +			MX6UL_PAD_LCD_HSYNC__LCDIF_HSYNC	0x79
> +			MX6UL_PAD_LCD_VSYNC__LCDIF_VSYNC	0x79
> +			MX6UL_PAD_LCD_RESET__LCDIF_RESET	0x79
> +		>;
> +	};
> +
> +	pinctrl_cap_touch: captouchgrp {
> +		fsl,pins = <
> +			MX6UL_PAD_SNVS_TAMPER6__GPIO5_IO06	0x1b0b0 /* Touch Interrupt */
> +			MX6UL_PAD_SNVS_TAMPER7__GPIO5_IO07	0x1b0b0 /* Touch Reset */
> +			MX6UL_PAD_SNVS_TAMPER8__GPIO5_IO08	0x1b0b0 /* Touch Wake */
> +		>;
> +	};
> +
> +	pinctrl_pwm7: pwm7grp {
> +		fsl,pins = <
> +			MX6UL_PAD_CSI_VSYNC__PWM7_OUT		0x110b0
> +		>;
> +	};
> +};
> +
> +&lcdif {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_lcdif_dat
> +		     &pinctrl_lcdif_ctrl>;
> +	status = "okay";
> +
> +	port {
> +		display_out: endpoint {
> +			remote-endpoint = <&panel_in>;
> +		};
> +	};
> +};
> +
> +&pwm7 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_pwm7>;
> +	status = "okay";
> +};
> diff --git a/arch/arm/boot/dts/imx6ul-kontron-ul2-som.dtsi b/arch/arm/boot/dts/imx6ul-kontron-ul2-som.dtsi
> new file mode 100644
> index 000000000000..26b6615cf839
> --- /dev/null
> +++ b/arch/arm/boot/dts/imx6ul-kontron-ul2-som.dtsi
> @@ -0,0 +1,152 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (C) 2017 exceet electronics GmbH
> + * Copyright (c) 2019 Krzysztof Kozlowski <krzk@kernel.org>
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License version 2 as
> + * published by the Free Software Foundation.
> + */
> +
> +#include "imx6ul.dtsi"
> +#include <dt-bindings/gpio/gpio.h>
> +
> +/ {
> +	model = "Exceet/Kontron iMX6 UL-2 SOM";
> +	compatible = "kontron,imx6ul-ul2-som", "fsl,imx6ul";
> +
> +	memory@80000000 {
> +		reg = <0x80000000 0x10000000>;
> +	};
> +};
> +
> +&cpu0 {
> +	clock-frequency = <528000000>;
> +	operating-points = <
> +		/* kHz	uV */
> +		528000	1175000
> +		396000	1025000
> +		198000	950000
> +	>;
> +	fsl,soc-operating-points = <
> +		/* KHz	uV */
> +		528000	1175000
> +		396000	1175000
> +		198000	1175000
> +	>;
> +};
> +
> +&ecspi2 {
> +	cs-gpios = <&gpio4 22 GPIO_ACTIVE_HIGH>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_ecspi2>;
> +	status = "okay";
> +
> +	flash: mx25v80@0 {
> +		compatible = "macronix,mx25v8035f", "jedec,spi-nor";
> +		spi-max-frequency = <50000000>;
> +		reg = <0>;
> +	};
> +};
> +
> +&fec1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_enet1 &pinctrl_enet1_mdio>;
> +	phy-mode = "rmii";
> +	phy-handle = <&ethphy1>;
> +	status = "okay";
> +
> +	mdio {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		ethphy1: ethernet-phy@1 {
> +			reg = <1>;
> +			micrel,led-mode = <0>;
> +			clocks = <&clks IMX6UL_CLK_ENET_REF>;
> +			clock-names = "rmii-ref";
> +		};
> +	};
> +};
> +
> +&fec2 {
> +	phy-mode = "rmii";
> +	status = "disabled";
> +};
> +
> +&iomuxc {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_reset_out>;
> +
> +	pinctrl_reset_out: rstoutgrp {
> +		fsl,pins = <
> +			MX6UL_PAD_SNVS_TAMPER9__GPIO5_IO09      0x1b0b0
> +		>;
> +	};
> +
> +	pinctrl_ecspi2: ecspi2grp {
> +		fsl,pins = <
> +			MX6UL_PAD_CSI_DATA03__ECSPI2_MISO      0x100b1
> +			MX6UL_PAD_CSI_DATA02__ECSPI2_MOSI      0x100b1
> +			MX6UL_PAD_CSI_DATA00__ECSPI2_SCLK      0x100b1
> +			MX6UL_PAD_CSI_DATA01__GPIO4_IO22       0x100b1
> +		>;
> +	};
> +
> +	pinctrl_enet1: enet1grp {
> +		fsl,pins = <
> +			MX6UL_PAD_ENET1_RX_EN__ENET1_RX_EN      0x1b0b0
> +			MX6UL_PAD_ENET1_RX_ER__ENET1_RX_ER      0x1b0b0
> +			MX6UL_PAD_ENET1_RX_DATA0__ENET1_RDATA00 0x1b0b0
> +			MX6UL_PAD_ENET1_RX_DATA1__ENET1_RDATA01 0x1b0b0
> +			MX6UL_PAD_ENET1_TX_EN__ENET1_TX_EN      0x1b0b0
> +			MX6UL_PAD_ENET1_TX_DATA0__ENET1_TDATA00 0x1b0b0
> +			MX6UL_PAD_ENET1_TX_DATA1__ENET1_TDATA01 0x1b0b0
> +			MX6UL_PAD_ENET1_TX_CLK__ENET1_REF_CLK1  0x4001b009
> +		>;
> +	};
> +
> +	pinctrl_enet1_mdio: enet1mdiogrp {
> +		fsl,pins = <
> +			MX6UL_PAD_GPIO1_IO07__ENET1_MDC         0x1b0b0
> +			MX6UL_PAD_GPIO1_IO06__ENET1_MDIO        0x1b0b0
> +		>;
> +	};
> +
> +	pinctrl_qspi: qspigrp {
> +		fsl,pins = <
> +			MX6UL_PAD_NAND_WP_B__QSPI_A_SCLK        0x70a1
> +			MX6UL_PAD_NAND_READY_B__QSPI_A_DATA00   0x70a1
> +			MX6UL_PAD_NAND_CE0_B__QSPI_A_DATA01     0x70a1
> +			MX6UL_PAD_NAND_CE1_B__QSPI_A_DATA02     0x70a1
> +			MX6UL_PAD_NAND_CLE__QSPI_A_DATA03       0x70a1
> +			MX6UL_PAD_NAND_DQS__QSPI_A_SS0_B        0x70a1
> +		>;
> +	};
> +};
> +
> +&qspi {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_qspi>;
> +	status = "okay";
> +
> +	flash0: w25m02gv@0 {
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		compatible = "spi-nand";
> +		spi-max-frequency = <108000000>;
> +		spi-tx-bus-width = <4>;
> +		spi-rx-bus-width = <4>;
> +		reg = <0>;
> +
> +		partition@0 {
> +			label = "ubi1";
> +			reg = <0x00000000 0x08000000>;
> +		};
> +
> +		partition@8000000 {
> +			label = "ubi2";
> +			reg = <0x08000000 0x08000000>;
> +		};
> +	};
> +};
> diff --git a/arch/arm/boot/dts/imx6ul-kontron-ul2.dts b/arch/arm/boot/dts/imx6ul-kontron-ul2.dts
> new file mode 100644
> index 000000000000..6d394a97712b
> --- /dev/null
> +++ b/arch/arm/boot/dts/imx6ul-kontron-ul2.dts
> @@ -0,0 +1,435 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (C) 2017 exceet electronics GmbH
> + * Copyright (c) 2019 Krzysztof Kozlowski <krzk@kernel.org>
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License version 2 as
> + * published by the Free Software Foundation.
> + */
> +
> +/dts-v1/;
> +
> +#include "imx6ul-kontron-ul2-som.dtsi"
> +
> +/ {
> +	model = "Exceet/Kontron iMX6 UL-2 S";
> +	compatible = "kontron,imx6ul-ul2-s", "kontron,imx6ul-ul2-som",
> +		     "fsl,imx6ul";
> +
> +	pwm-beeper {
> +		compatible = "pwm-beeper";
> +		pwms = <&pwm8 0 5000>;
> +	};
> +
> +	gpio-leds {
> +		compatible = "gpio-leds";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_gpio_leds>;
> +
> +		led1 {
> +			label = "debug-led1";
> +			gpios = <&gpio1 30 GPIO_ACTIVE_LOW>;
> +			default-state = "off";
> +			linux,default-trigger = "heartbeat";
> +		};
> +
> +		led2 {
> +			label = "debug-led2";
> +			gpios = <&gpio5 3 GPIO_ACTIVE_LOW>;
> +			default-state = "off";
> +		};
> +
> +		led3 {
> +			label = "debug-led3";
> +			gpios = <&gpio5 2 GPIO_ACTIVE_LOW>;
> +			default-state = "off";
> +		};
> +	};
> +
> +	regulators {
> +		compatible = "simple-bus";
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		reg_3v3: regulator@0 {
> +			compatible = "regulator-fixed";
> +			reg = <0>;
> +			regulator-name = "3v3";
> +			regulator-min-microvolt = <3300000>;
> +			regulator-max-microvolt = <3300000>;
> +		};
> +
> +		reg_vref_adc: regulator@1 {
> +			compatible = "regulator-fixed";
> +			reg = <1>;
> +			regulator-name = "vref-adc";
> +			regulator-min-microvolt = <3300000>;
> +			regulator-max-microvolt = <3300000>;
> +		};
> +
> +		reg_usb_otg1_vbus: regulator@2 {
> +			compatible = "regulator-fixed";
> +			reg = <2>;
> +			regulator-name = "usb_otg1_vbus";
> +			regulator-min-microvolt = <5000000>;
> +			regulator-max-microvolt = <5000000>;
> +			gpio = <&gpio1 4 GPIO_ACTIVE_HIGH>;
> +			enable-active-high;
> +		};
> +	};
> +
> +};
> +
> +&adc1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_adc1>;
> +	num-channels = <3>;
> +	vref-supply = <&reg_vref_adc>;
> +	status = "okay";
> +};
> +
> +&can2 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_flexcan2>;
> +	status = "okay";
> +};
> +
> +&ecspi1 {
> +	fsl,spi-num-chipselects = <1>;
> +	cs-gpios = <&gpio4 26 GPIO_ACTIVE_HIGH>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_ecspi1>;
> +	status = "okay";
> +
> +	fram@0 {
> +		compatible = "atmel,at25";
> +		reg = <0>;
> +		spi-max-frequency = <20000000>;
> +		spi-cpha;
> +		spi-cpol;
> +		pagesize = <1>;
> +		size = <8192>;
> +		address-width = <16>;
> +	};
> +};
> +
> +&fec1 {
> +	pinctrl-0 = <&pinctrl_enet1>;
> +	/delete-node/ mdio;
> +};
> +
> +&fec2 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_enet2 &pinctrl_enet2_mdio>;
> +	phy-mode = "rmii";
> +	phy-handle = <&ethphy2>;
> +	status = "okay";
> +
> +	mdio {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		ethphy1: ethernet-phy@1 {
> +			reg = <1>;
> +			micrel,led-mode = <0>;
> +			clocks = <&clks IMX6UL_CLK_ENET_REF>;
> +			clock-names = "rmii-ref";
> +		};
> +
> +		ethphy2: ethernet-phy@2 {
> +			reg = <2>;
> +			micrel,led-mode = <0>;
> +			clocks = <&clks IMX6UL_CLK_ENET2_REF>;
> +			clock-names = "rmii-ref";
> +		};
> +	};
> +};
> +
> +&i2c1 {
> +	clock-frequency = <100000>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_i2c1>;
> +	status = "okay";
> +};
> +
> +&i2c4 {
> +	clock-frequency = <100000>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_i2c4>;
> +	status = "okay";
> +
> +	rtc@32 {
> +		compatible = "epson,rx8900";
> +		reg = <0x32>;
> +	};
> +};
> +
> +&iomuxc {
> +	pinctrl-0 = <&pinctrl_reset_out &pinctrl_gpio>;
> +
> +	pinctrl_wdog: wdoggrp {
> +		fsl,pins = <
> +			MX6UL_PAD_GPIO1_IO09__WDOG1_WDOG_ANY	0x30b0
> +		>;
> +	};
> +
> +	pinctrl_gpio: gpio {
> +		fsl,pins = <
> +			MX6UL_PAD_SNVS_TAMPER5__GPIO5_IO05	0x1b0b0 /* DOUT1 */
> +			MX6UL_PAD_SNVS_TAMPER4__GPIO5_IO04	0x1b0b0 /* DIN1 */
> +			MX6UL_PAD_SNVS_TAMPER1__GPIO5_IO01	0x1b0b0 /* DOUT2 */
> +			MX6UL_PAD_SNVS_TAMPER0__GPIO5_IO00	0x1b0b0 /* DIN2 */
> +		>;
> +	};
> +
> +	pinctrl_usbotg1: usbotg1 {
> +		fsl,pins = <
> +			MX6UL_PAD_GPIO1_IO04__GPIO1_IO04	0x1b0b0
> +		>;
> +	};
> +
> +	pinctrl_gpio_leds: gpio_leds {
> +		fsl,pins = <
> +			MX6UL_PAD_UART5_TX_DATA__GPIO1_IO30	0x1b0b0	/* LED H14 */
> +			MX6UL_PAD_SNVS_TAMPER3__GPIO5_IO03	0x1b0b0	/* LED H15 */
> +			MX6UL_PAD_SNVS_TAMPER2__GPIO5_IO02	0x1b0b0	/* LED H16 */
> +		>;
> +	};
> +
> +	/* FRAM */
> +	pinctrl_ecspi1: ecspi1grp-1 {
> +		fsl,pins = <
> +			MX6UL_PAD_CSI_DATA07__ECSPI1_MISO	0x100b1
> +			MX6UL_PAD_CSI_DATA06__ECSPI1_MOSI	0x100b1
> +			MX6UL_PAD_CSI_DATA04__ECSPI1_SCLK	0x100b1
> +			MX6UL_PAD_CSI_DATA05__GPIO4_IO26	0x100b1	/* ECSPI1-CS1 */
> +		>;
> +	};
> +
> +	pinctrl_enet2: enet2grp {
> +		fsl,pins = <
> +			MX6UL_PAD_ENET2_RX_EN__ENET2_RX_EN	0x1b0b0
> +			MX6UL_PAD_ENET2_RX_ER__ENET2_RX_ER	0x1b0b0
> +			MX6UL_PAD_ENET2_RX_DATA0__ENET2_RDATA00	0x1b0b0
> +			MX6UL_PAD_ENET2_RX_DATA1__ENET2_RDATA01	0x1b0b0
> +			MX6UL_PAD_ENET2_TX_EN__ENET2_TX_EN	0x1b0b0
> +			MX6UL_PAD_ENET2_TX_DATA0__ENET2_TDATA00	0x1b0b0
> +			MX6UL_PAD_ENET2_TX_DATA1__ENET2_TDATA01	0x1b0b0
> +			MX6UL_PAD_ENET2_TX_CLK__ENET2_REF_CLK2	0x4001b009
> +		>;
> +	};
> +
> +	pinctrl_enet2_mdio: enet2mdiogrp {
> +		fsl,pins = <
> +			MX6UL_PAD_GPIO1_IO07__ENET2_MDC         0x1b0b0
> +			MX6UL_PAD_GPIO1_IO06__ENET2_MDIO        0x1b0b0
> +		>;
> +	};
> +
> +	pinctrl_flexcan2: flexcan2grp{
> +		fsl,pins = <
> +			MX6UL_PAD_UART2_RTS_B__FLEXCAN2_RX	0x1b020
> +			MX6UL_PAD_UART2_CTS_B__FLEXCAN2_TX	0x1b020
> +		>;
> +	};
> +
> +	pinctrl_pwm8: pwm8grp {
> +		fsl,pins = <
> +			MX6UL_PAD_CSI_HSYNC__PWM8_OUT		0x110b0
> +		>;
> +	};
> +
> +	pinctrl_uart1: uart1grp {
> +		fsl,pins = <
> +			MX6UL_PAD_UART1_TX_DATA__UART1_DCE_TX	0x1b0b1
> +			MX6UL_PAD_UART1_RX_DATA__UART1_DCE_RX	0x1b0b1
> +		>;
> +	};
> +
> +	pinctrl_uart2: uart2grp {
> +		fsl,pins = <
> +			MX6UL_PAD_NAND_DATA04__UART2_DCE_TX	0x1b0b1
> +			MX6UL_PAD_NAND_DATA05__UART2_DCE_RX	0x1b0b1
> +			MX6UL_PAD_NAND_DATA06__UART2_DCE_CTS	0x1b0b1
> +			/*
> +			 * mux unused RTS to make sure it doesn't cause
> +			 * any interrupts when it is undefined
> +			 */
> +			MX6UL_PAD_NAND_DATA07__UART2_DCE_RTS	0x1b0b1
> +		>;
> +	};
> +
> +	pinctrl_uart3: uart3grp {
> +		fsl,pins = <
> +			MX6UL_PAD_UART3_TX_DATA__UART3_DCE_TX	0x1b0b1
> +			MX6UL_PAD_UART3_RX_DATA__UART3_DCE_RX	0x1b0b1
> +			MX6UL_PAD_UART3_CTS_B__UART3_DCE_CTS	0x1b0b1
> +			MX6UL_PAD_UART3_RTS_B__UART3_DCE_RTS	0x1b0b1
> +		>;
> +	};
> +
> +	pinctrl_uart4: uart4grp {
> +		fsl,pins = <
> +			MX6UL_PAD_UART4_TX_DATA__UART4_DCE_TX	0x1b0b1
> +			MX6UL_PAD_UART4_RX_DATA__UART4_DCE_RX	0x1b0b1
> +		>;
> +	};
> +
> +	pinctrl_usdhc1: usdhc1grp {
> +		fsl,pins = <
> +			MX6UL_PAD_SD1_CMD__USDHC1_CMD		0x17059
> +			MX6UL_PAD_SD1_CLK__USDHC1_CLK		0x10059
> +			MX6UL_PAD_SD1_DATA0__USDHC1_DATA0	0x17059
> +			MX6UL_PAD_SD1_DATA1__USDHC1_DATA1	0x17059
> +			MX6UL_PAD_SD1_DATA2__USDHC1_DATA2	0x17059
> +			MX6UL_PAD_SD1_DATA3__USDHC1_DATA3	0x17059
> +			MX6UL_PAD_UART1_RTS_B__GPIO1_IO19	0x100b1	/* SD1_CD */
> +		>;
> +	};
> +
> +	pinctrl_usdhc2: usdhc2grp {
> +		fsl,pins = <
> +			MX6UL_PAD_NAND_RE_B__USDHC2_CLK		0x10059
> +			MX6UL_PAD_NAND_WE_B__USDHC2_CMD		0x17059
> +			MX6UL_PAD_NAND_DATA00__USDHC2_DATA0	0x17059
> +			MX6UL_PAD_NAND_DATA01__USDHC2_DATA1	0x17059
> +			MX6UL_PAD_NAND_DATA02__USDHC2_DATA2	0x17059
> +			MX6UL_PAD_NAND_DATA03__USDHC2_DATA3	0x17059
> +		>;
> +	};
> +
> +	pinctrl_usdhc2_100mhz: usdhc2grp100mhz {
> +		fsl,pins = <
> +			MX6UL_PAD_NAND_RE_B__USDHC2_CLK		0x100b9
> +			MX6UL_PAD_NAND_WE_B__USDHC2_CMD		0x170b9
> +			MX6UL_PAD_NAND_DATA00__USDHC2_DATA0	0x170b9
> +			MX6UL_PAD_NAND_DATA01__USDHC2_DATA1	0x170b9
> +			MX6UL_PAD_NAND_DATA02__USDHC2_DATA2	0x170b9
> +			MX6UL_PAD_NAND_DATA03__USDHC2_DATA3	0x170b9
> +		>;
> +	};
> +
> +	pinctrl_usdhc2_200mhz: usdhc2grp200mhz {
> +		fsl,pins = <
> +			MX6UL_PAD_NAND_RE_B__USDHC2_CLK		0x100f9
> +			MX6UL_PAD_NAND_WE_B__USDHC2_CMD		0x170f9
> +			MX6UL_PAD_NAND_DATA00__USDHC2_DATA0	0x170f9
> +			MX6UL_PAD_NAND_DATA01__USDHC2_DATA1	0x170f9
> +			MX6UL_PAD_NAND_DATA02__USDHC2_DATA2	0x170f9
> +			MX6UL_PAD_NAND_DATA03__USDHC2_DATA3	0x170f9
> +		>;
> +	};
> +
> +	pinctrl_i2c1: i2c1grp {
> +		fsl,pins = <
> +			MX6UL_PAD_CSI_PIXCLK__I2C1_SCL		0x4001b8b0
> +			MX6UL_PAD_CSI_MCLK__I2C1_SDA		0x4001b8b0
> +		>;
> +	};
> +
> +	pinctrl_i2c4: i2c4grp {
> +		fsl,pins = <
> +			MX6UL_PAD_UART2_TX_DATA__I2C4_SCL	0x4001f8b0
> +			MX6UL_PAD_UART2_RX_DATA__I2C4_SDA	0x4001f8b0
> +		>;
> +	};
> +
> +	pinctrl_adc1: adc1grp {
> +		fsl,pins = <
> +			MX6UL_PAD_GPIO1_IO02__GPIO1_IO02	0xb0
> +			MX6UL_PAD_GPIO1_IO03__GPIO1_IO03	0xb0
> +			MX6UL_PAD_GPIO1_IO08__GPIO1_IO08	0xb0
> +		>;
> +	};
> +};
> +
> +&pwm8 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_pwm8>;
> +	status = "okay";
> +};
> +
> +&snvs_poweroff {
> +	status = "okay";
> +};
> +
> +&uart1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_uart1>;
> +	status = "okay";
> +};
> +
> +&uart2 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_uart2>;
> +	linux,rs485-enabled-at-boot-time;
> +	rs485-rx-during-tx;
> +	rs485-rts-active-low;
> +	uart-has-rtscts;
> +	status = "okay";
> +};
> +
> +&uart3 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_uart3>;
> +	fsl,uart-has-rtscts;
> +	status = "okay";
> +};
> +
> +&uart4 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_uart4>;
> +	status = "okay";
> +};
> +
> +&usbotg1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_usbotg1>;
> +	dr_mode = "otg";
> +	status = "okay";
> +	srp-disable;
> +	hnp-disable;
> +	adp-disable;
> +	vbus-supply = <&reg_usb_otg1_vbus>;
> +};
> +
> +&usbotg2 {
> +	dr_mode = "host";
> +	disable-over-current;
> +	status = "okay";
> +};
> +
> +&usdhc1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_usdhc1>;
> +	cd-gpios = <&gpio1 19 GPIO_ACTIVE_LOW>;
> +	keep-power-in-suspend;
> +	enable-sdio-wakeup;
> +	vmmc-supply = <&reg_3v3>;
> +	voltage-ranges = <3300 3300>;
> +	no-1-8-v;
> +	status = "okay";
> +};
> +
> +&usdhc2 {
> +	pinctrl-names = "default", "state_100mhz", "state_200mhz";
> +	pinctrl-0 = <&pinctrl_usdhc2>;
> +	pinctrl-1 = <&pinctrl_usdhc2_100mhz>;
> +	pinctrl-2 = <&pinctrl_usdhc2_200mhz>;
> +	tuning-step = <2>;
> +	non-removable;
> +	keep-power-in-suspend;
> +	enable-sdio-wakeup;
> +	vmmc-supply = <&reg_3v3>;
> +	voltage-ranges = <3300 3300>;
> +	no-1-8-v;
> +	status = "okay";
> +};
> +
> +&wdog1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_wdog>;
> +	status = "okay";
> +	fsl,ext-reset-output;
> +};
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
