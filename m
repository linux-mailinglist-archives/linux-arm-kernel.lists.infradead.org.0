Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DDA01B9745
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 08:19:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YotMvV8DI60aV/+kmRmE67GgM51ul48ZmKYahWFyvl8=; b=VqDtzPZr3Zr6AZ
	48nt+UikSojdH3sKbIQ9K4e1WblNvhEszoe9gN4QVSbNC69lLN0EB0tBo9MvqUqErdysfynC3qqUv
	lAN5Va3UVeTrDnAUqaku0Cq/RI0qpCt6dAp/rJxxHX7RtCXR1dOdIPobI3hzMIItwc9lme66if4Vj
	gqp73nOjQ5XSH+wyw0VeXkevYobD9DMcj/ABnvOT62a3FxMdRDJdwWOrLwNBaetiD+dt1EqEWfr44
	yABcJD5hdqTCD6KvjrLqfuoXY3MZ1EqH/LbhLbprKETVTS8qG6ctde8uVB/WkupWxahr82yD4HK6I
	jTNbyS7qALqc1Tjj6Lew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSx6j-00053c-OL; Mon, 27 Apr 2020 06:19:09 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSx6V-00052M-TB
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 06:18:57 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1jSx6L-00063K-Sk; Mon, 27 Apr 2020 08:18:45 +0200
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>)
 id 1jSx6L-0003ns-0y; Mon, 27 Apr 2020 08:18:45 +0200
Date: Mon, 27 Apr 2020 08:18:44 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Parthiban Nallathambi <parthiban@linumiz.com>
Subject: Re: [PATCH] ARM: dts: imx6ull: add MYiR MYS-6ULX SBC
Message-ID: <20200427061844.i5hb2xatq2ntdqbe@pengutronix.de>
References: <20200408184351.135716-1-parthiban@linumiz.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200408184351.135716-1-parthiban@linumiz.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:13:42 up 163 days, 21:32, 173 users,  load average: 0.00, 0.09,
 0.09
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_231856_102973_679865F1 
X-CRM114-Status: GOOD (  13.35  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Parthiban,

a few more minor comments..

On 20-04-08 20:43, Parthiban Nallathambi wrote:

...

> diff --git a/arch/arm/boot/dts/imx6ull-myir-mys-6ulx.dtsi b/arch/arm/boot/dts/imx6ull-myir-mys-6ulx.dtsi
> new file mode 100644
> index 000000000000..f0a514187c21
> --- /dev/null
> +++ b/arch/arm/boot/dts/imx6ull-myir-mys-6ulx.dtsi
> @@ -0,0 +1,247 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (C) 2020 Linumiz
> + * Author: Parthiban Nallathambi <parthiban@linumiz.com>
> + */
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/interrupt-controller/irq.h>
> +#include <dt-bindings/pwm/pwm.h>
> +
> +/ {
> +	model = "MYiR MYS-6ULX Single Board Computer";
> +	compatible = "myir,imx6ull-mys-6ulx", "fsl,imx6ull";
> +
> +	chosen {
> +		stdout-path = &uart1;
> +	};
> +
> +	regulators: regulators {
> +		compatible = "simple-bus";
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		vdd_5v: regulator@0 {
> +			compatible = "regulator-fixed";
> +			regulator-name = "VDD_5V";
> +			regulator-min-microvolt = <5000000>;
> +			regulator-max-microvolt = <5000000>;
> +			regulator-always-on;
> +			regulator-boot-on;
> +		};
> +
> +		vdd_3v3: regulator@1 {
> +			compatible = "regulator-fixed";
> +			regulator-name = "VDD_3V3";
> +			regulator-min-microvolt = <3300000>;
> +			regulator-max-microvolt = <3300000>;
> +			regulator-always-on;
> +			vin-supply = <&vdd_5v>;
> +		};
> +	};
> +};
> +
> +&fec1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_enet1>;
> +	phy-mode = "rmii";
> +	phy-handle = <&ethphy0>;
> +	phy-supply = <&vdd_3v3>;
> +	status = "okay";
> +
> +	mdio: mdio {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		ethphy0: ethernet-phy@0 {
> +			reg = <0>;
> +			compatible = "ethernet-phy-ieee802.3-c22";
> +			interrupt-parent = <&gpio5>;
> +			interrupts = <5 IRQ_TYPE_LEVEL_LOW>;
> +			clocks = <&clks IMX6UL_CLK_ENET_REF>;
> +			clock-names = "rmii-ref";
> +			status = "okay";

Status not needed here.

> +		};
> +	};
> +};
> +
> +&gpmi {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_gpmi_nand>;
> +	nand-on-flash-bbt;
> +	status = "disabled";
> +};
> +
> +&uart1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_uart1>;
> +	status = "okay";
> +};
> +
> +&usbotg1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_usb_otg1_id>;
> +	dr_mode = "otg";
> +	status = "okay";
> +};
> +
> +&usbotg2 {
> +	dr_mode = "host";
> +	disable-over-current;
> +	status = "okay";
> +};
> +
> +&usdhc1 {
> +	pinctrl-names = "default", "state_100mhz", "state_200mhz";
> +	pinctrl-0 = <&pinctrl_usdhc1>;
> +	pinctrl-1 = <&pinctrl_usdhc1_100mhz>;
> +	pinctrl-2 = <&pinctrl_usdhc1_200mhz>;
> +	cd-gpios = <&gpio1 19 GPIO_ACTIVE_LOW>;
> +	no-1-8-v;
> +	keep-power-in-suspend;
> +	wakeup-source;
> +	vmmc-supply = <&vdd_3v3>;
> +	status = "okay";
> +};
> +
> +&usdhc2 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_usdhc2>;
> +	pinctrl-1 = <&pinctrl_usdhc2_100mhz>;
> +	pinctrl-2 = <&pinctrl_usdhc2_200mhz>;
> +	bus-width = <8>;
> +	non-removable;
> +	keep-power-in-suspend;
> +	vmmc-supply = <&vdd_3v3>;
> +	status = "disabled";

Status not needed here.

Regards,
  Marco

> +};
> +
> +&iomuxc {
> +	pinctrl_enet1: enet1grp {
> +		fsl,pins = <
> +			MX6UL_PAD_GPIO1_IO06__ENET1_MDIO	0x1b0b0
> +			MX6UL_PAD_GPIO1_IO07__ENET1_MDC		0x1b0b0
> +			MX6UL_PAD_ENET1_RX_EN__ENET1_RX_EN	0x1b0b0
> +			MX6UL_PAD_ENET1_RX_ER__ENET1_RX_ER	0x1b0b0
> +			MX6UL_PAD_ENET1_RX_DATA0__ENET1_RDATA00	0x1b0b0
> +			MX6UL_PAD_ENET1_RX_DATA1__ENET1_RDATA01	0x1b0b0
> +			MX6UL_PAD_ENET1_TX_EN__ENET1_TX_EN	0x1b0b0
> +			MX6UL_PAD_ENET1_TX_DATA0__ENET1_TDATA00	0x1b0b0
> +			MX6UL_PAD_ENET1_TX_DATA1__ENET1_TDATA01	0x1b0b0
> +			MX6UL_PAD_ENET1_TX_CLK__ENET1_REF_CLK1	0x4001b031
> +			MX6UL_PAD_SNVS_TAMPER5__GPIO5_IO05	0x1b0b0
> +		>;
> +	};
> +
> +	pinctrl_gpmi_nand: gpminandgrp {
> +		fsl,pins = <
> +			MX6UL_PAD_NAND_CLE__RAWNAND_CLE		0x0b0b1
> +			MX6UL_PAD_NAND_ALE__RAWNAND_ALE		0x0b0b1
> +			MX6UL_PAD_NAND_WP_B__RAWNAND_WP_B	0x0b0b1
> +			MX6UL_PAD_NAND_READY_B__RAWNAND_READY_B	0x0b000
> +			MX6UL_PAD_NAND_CE0_B__RAWNAND_CE0_B	0x0b0b1
> +			MX6UL_PAD_NAND_RE_B__RAWNAND_RE_B	0x0b0b1
> +			MX6UL_PAD_NAND_WE_B__RAWNAND_WE_B	0x0b0b1
> +			MX6UL_PAD_NAND_DATA00__RAWNAND_DATA00	0x0b0b1
> +			MX6UL_PAD_NAND_DATA01__RAWNAND_DATA01	0x0b0b1
> +			MX6UL_PAD_NAND_DATA02__RAWNAND_DATA02	0x0b0b1
> +			MX6UL_PAD_NAND_DATA03__RAWNAND_DATA03	0x0b0b1
> +			MX6UL_PAD_NAND_DATA04__RAWNAND_DATA04	0x0b0b1
> +			MX6UL_PAD_NAND_DATA05__RAWNAND_DATA05	0x0b0b1
> +			MX6UL_PAD_NAND_DATA06__RAWNAND_DATA06	0x0b0b1
> +			MX6UL_PAD_NAND_DATA07__RAWNAND_DATA07	0x0b0b1
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
> +	pinctrl_usb_otg1_id: usbotg1idgrp {
> +		fsl,pins = <
> +			MX6UL_PAD_GPIO1_IO00__ANATOP_OTG1_ID	0x17059
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
> +			MX6UL_PAD_UART1_RTS_B__GPIO1_IO19	0x17059
> +		>;
> +	};
> +
> +	pinctrl_usdhc1_100mhz: usdhc1grp100mhz {
> +		fsl,pins = <
> +			MX6UL_PAD_SD1_CMD__USDHC1_CMD		0x170b9
> +			MX6UL_PAD_SD1_CLK__USDHC1_CLK		0x100b9
> +			MX6UL_PAD_SD1_DATA0__USDHC1_DATA0	0x170b9
> +			MX6UL_PAD_SD1_DATA1__USDHC1_DATA1	0x170b9
> +			MX6UL_PAD_SD1_DATA2__USDHC1_DATA2	0x170b9
> +			MX6UL_PAD_SD1_DATA3__USDHC1_DATA3	0x170b9
> +		>;
> +	};
> +
> +	pinctrl_usdhc1_200mhz: usdhc1grp200mhz {
> +		fsl,pins = <
> +			MX6UL_PAD_SD1_CMD__USDHC1_CMD		0x170f9
> +			MX6UL_PAD_SD1_CLK__USDHC1_CLK		0x100f9
> +			MX6UL_PAD_SD1_DATA0__USDHC1_DATA0	0x170f9
> +			MX6UL_PAD_SD1_DATA1__USDHC1_DATA1	0x170f9
> +			MX6UL_PAD_SD1_DATA2__USDHC1_DATA2	0x170f9
> +			MX6UL_PAD_SD1_DATA3__USDHC1_DATA3	0x170f9
> +		>;
> +	};
> +
> +	pinctrl_usdhc2: usdhc2grp {
> +		fsl,pins = <
> +			MX6UL_PAD_NAND_RE_B__USDHC2_CLK		0x10069
> +			MX6UL_PAD_NAND_WE_B__USDHC2_CMD		0x17059
> +			MX6UL_PAD_NAND_DATA00__USDHC2_DATA0	0x17059
> +			MX6UL_PAD_NAND_DATA01__USDHC2_DATA1	0x17059
> +			MX6UL_PAD_NAND_DATA02__USDHC2_DATA2	0x17059
> +			MX6UL_PAD_NAND_DATA03__USDHC2_DATA3	0x17059
> +			MX6UL_PAD_NAND_DATA04__USDHC2_DATA4	0x17059
> +			MX6UL_PAD_NAND_DATA05__USDHC2_DATA5	0x17059
> +			MX6UL_PAD_NAND_DATA06__USDHC2_DATA6	0x17059
> +			MX6UL_PAD_NAND_DATA07__USDHC2_DATA7	0x17059
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
> +			MX6UL_PAD_NAND_DATA04__USDHC2_DATA4	0x170b9
> +			MX6UL_PAD_NAND_DATA05__USDHC2_DATA5	0x170b9
> +			MX6UL_PAD_NAND_DATA06__USDHC2_DATA6	0x170b9
> +			MX6UL_PAD_NAND_DATA07__USDHC2_DATA7	0x170b9
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
> +			MX6UL_PAD_NAND_DATA04__USDHC2_DATA4	0x170f9
> +			MX6UL_PAD_NAND_DATA05__USDHC2_DATA5	0x170f9
> +			MX6UL_PAD_NAND_DATA06__USDHC2_DATA6	0x170f9
> +			MX6UL_PAD_NAND_DATA07__USDHC2_DATA7	0x170f9
> +		>;
> +	};
> +};
> -- 
> 2.11.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
