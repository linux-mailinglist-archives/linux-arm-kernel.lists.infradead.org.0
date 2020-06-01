Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8CED1EA64E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 16:55:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FlfkKX4G7IQthwkzO7RGAnoWVJbfvYi6Y0JE8kkDg8k=; b=EB2ucDnTGherPH
	Xk9PrSm9QLghNRlOxdXsMq2wyi97jp+PKgfmsiFIbuCp7F+QhdLgu2eTxAcjvVp8jC/iqHkxXCORI
	bYb1HDz/44QpPavs3vJP6S56RSkW54g1xd8j9zKKzl2LCu+DS9ukwthPEcmCN6u+Hvfww40TYiA37
	t9nCmcWbigpbVP9LZKzlLWDEqo1JZpl+qjnVBG6rYnKM+sxPhEfjyld2VbcBXDKViJ7bPPnw5vlSW
	76Q65XBepMwb7bMnQQpM2MyOYwAgCuTPaxMVbxYRIm3Yl289VjkJbq+UClaCsWT/kou9XjVH5J7sj
	qO4x5gBNQ8HO+UqGGUfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jflqP-00054n-4J; Mon, 01 Jun 2020 14:55:17 +0000
Received: from gproxy9-pub.mail.unifiedlayer.com ([69.89.20.122])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jflq9-000465-In
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 14:55:04 +0000
Received: from cmgw12.unifiedlayer.com (unknown [10.9.0.12])
 by gproxy9.mail.unifiedlayer.com (Postfix) with ESMTP id 7CB7A1E08F7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  1 Jun 2020 08:54:33 -0600 (MDT)
Received: from md-in-79.webhostbox.net ([43.225.55.182]) by cmsmtp with ESMTP
 id flpcj3YOFN8Arflpej3DfM; Mon, 01 Jun 2020 08:54:33 -0600
X-Authority-Reason: nr=8
X-Authority-Analysis: v=2.3 cv=KZv8TzQD c=1 sm=1 tr=0
 a=LfuyaZh/8e9VOkaVZk0aRw==:117 a=LfuyaZh/8e9VOkaVZk0aRw==:17
 a=dLZJa+xiwSxG16/P+YVxDGlgEgI=:19 a=IkcTkHD0fZMA:10:nop_charset_1
 a=nTHF0DUjJn0A:10:nop_rcvd_month_year
 a=oz0wMknONp8A:10:endurance_base64_authed_username_1 a=vU9dKmh3AAAA:8
 a=JfrnYn6hAAAA:8 a=yk56JuNMXvj-j4NLtGMA:9 a=k7fQ0PofDHJ_D0n9:21
 a=eGWgZIWGoZCdjxqI:21 a=QEXdDO2ut3YA:10:nop_charset_2
 a=rsP06fVo5MYu2ilr0aT5:22 a=1CNFftbPRP8L7MoqJWF3:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=linumiz.com
 ; s=default;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ABsPewTX/44/kRoSBC3OMTE4BQw/66NmwHcg2pjgaoM=; b=RLtlU5NpQ+gtHvuB8r789zlhHa
 lGEbithqfZVxDHhS563wBSLp5z/VHSfgvm8heut4APLaT/KtoKXjTpgwcY7EWga1P2IQtPTU0CO0C
 ZPmXGG7fOAVfX3VwVAW8kIhTQTCDCuT9wh0lEJK08CJxhWzDGP98Dya882UdKM5sopUHyPWxKRdgD
 ilqQhD9ezsdANerJoV3RszSct8LZVUl5/+L1/f+1i9QcEJwjco3PiNg5njjnubsCvcNkQULusGHFb
 fKIfaUEiKcqoYqpqQpKFKyxk4aJJdun6BCPJp4HvB/TwpNeFb2uHGkRDdCZJFskiOhs7ejto/OfLm
 YMiTpePQ==;
Received: from dslb-002-205-073-081.002.205.pools.vodafone-ip.de
 ([2.205.73.81]:51476 helo=[192.168.178.164])
 by md-in-79.webhostbox.net with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92)
 (envelope-from <parthiban@linumiz.com>)
 id 1jflpb-00047q-SK; Mon, 01 Jun 2020 14:54:28 +0000
Subject: Re: [PATCH] ARM: dts: imx6ull: add MYiR MYS-6ULX SBC
To: Shawn Guo <shawnguo@kernel.org>
References: <20200408184351.135716-1-parthiban@linumiz.com>
 <20200426133300.GE30501@dragon>
From: Parthiban <parthiban@linumiz.com>
Message-ID: <3cfed170-ea23-e92f-e10e-e3b5c6e96008@linumiz.com>
Date: Mon, 1 Jun 2020 16:54:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <20200426133300.GE30501@dragon>
Content-Language: en-US
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - md-in-79.webhostbox.net
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - linumiz.com
X-BWhitelist: no
X-Source-IP: 2.205.73.81
X-Source-L: No
X-Exim-ID: 1jflpb-00047q-SK
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: dslb-002-205-073-081.002.205.pools.vodafone-ip.de
 ([192.168.178.164]) [2.205.73.81]:51476
X-Source-Auth: parthiban@linumiz.com
X-Email-Count: 9
X-Source-Cap: bGludW1jbWM7aG9zdGdhdG9yO21kLWluLTc5LndlYmhvc3Rib3gubmV0
X-Local-Domain: yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_075502_013266_5053890C 
X-CRM114-Status: GOOD (  19.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [69.89.20.122 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [69.89.20.122 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Parthiban <parthiban@linumiz.com>,
 s.hauer@pengutronix.de, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 4/26/20 3:33 PM, Shawn Guo wrote:
> On Wed, Apr 08, 2020 at 08:43:51PM +0200, Parthiban Nallathambi wrote:
>> Add support for the MYiR imx6ULL based single board computer
>> equipped with on board 256MB NAND & RAM. The board also
>> provides expansion header for expansion board, but this
>> commit adds only support for SBC.
>>
>> Signed-off-by: Parthiban Nallathambi <parthiban@linumiz.com>
>> ---
>>  arch/arm/boot/dts/Makefile                       |   1 +
>>  arch/arm/boot/dts/imx6ull-myir-mys-6ulx-nand.dts |  19 ++
>>  arch/arm/boot/dts/imx6ull-myir-mys-6ulx.dtsi     | 247 +++++++++++++++++++++++
>>  3 files changed, 267 insertions(+)
>>  create mode 100644 arch/arm/boot/dts/imx6ull-myir-mys-6ulx-nand.dts
>>  create mode 100644 arch/arm/boot/dts/imx6ull-myir-mys-6ulx.dtsi
>>
>> diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
>> index e8dd99201397..eab86051d782 100644
>> --- a/arch/arm/boot/dts/Makefile
>> +++ b/arch/arm/boot/dts/Makefile
>> @@ -612,6 +612,7 @@ dtb-$(CONFIG_SOC_IMX6UL) += \
>>  	imx6ull-14x14-evk.dtb \
>>  	imx6ull-colibri-eval-v3.dtb \
>>  	imx6ull-colibri-wifi-eval-v3.dtb \
>> +	imx6ull-myir-mys-6ulx-nand.dtb \
>>  	imx6ull-opos6uldev.dtb \
>>  	imx6ull-phytec-segin-ff-rdk-nand.dtb \
>>  	imx6ull-phytec-segin-ff-rdk-emmc.dtb \
>> diff --git a/arch/arm/boot/dts/imx6ull-myir-mys-6ulx-nand.dts b/arch/arm/boot/dts/imx6ull-myir-mys-6ulx-nand.dts
>> new file mode 100644
>> index 000000000000..6eaba8a8d7a9
>> --- /dev/null
>> +++ b/arch/arm/boot/dts/imx6ull-myir-mys-6ulx-nand.dts
>> @@ -0,0 +1,19 @@
>> +// SPDX-License-Identifier: GPL-2.0
>> +/*
>> + * Copyright (C) 2020 Linumiz
>> + * Author: Parthiban Nallathambi <parthiban@linumiz.com>
>> + */
>> +
>> +/dts-v1/;
>> +#include "imx6ull.dtsi"
>> +#include "imx6ull-myir-mys-6ulx.dtsi"
>> +
>> +/ {
>> +	model = "MYiR i.MX6ULL MYS-6ULX Single Board Computer with NAND";
>> +	compatible = "myir,imx6ul-mys-6ulx-nand", "myir,imx6ul-mys-6ulx",
>> +		     "fsl,imx6ull";
> 
> Any new compatible needs to be documented.

Sure, thanks.

> 
>> +};
>> +
>> +&gpmi {
>> +	status = "okay";
>> +};
>> diff --git a/arch/arm/boot/dts/imx6ull-myir-mys-6ulx.dtsi b/arch/arm/boot/dts/imx6ull-myir-mys-6ulx.dtsi
>> new file mode 100644
>> index 000000000000..f0a514187c21
>> --- /dev/null
>> +++ b/arch/arm/boot/dts/imx6ull-myir-mys-6ulx.dtsi
>> @@ -0,0 +1,247 @@
>> +// SPDX-License-Identifier: GPL-2.0
>> +/*
>> + * Copyright (C) 2020 Linumiz
>> + * Author: Parthiban Nallathambi <parthiban@linumiz.com>
>> + */
>> +
>> +#include <dt-bindings/gpio/gpio.h>
>> +#include <dt-bindings/interrupt-controller/irq.h>
>> +#include <dt-bindings/pwm/pwm.h>
>> +
>> +/ {
>> +	model = "MYiR MYS-6ULX Single Board Computer";
>> +	compatible = "myir,imx6ull-mys-6ulx", "fsl,imx6ull";
>> +
>> +	chosen {
>> +		stdout-path = &uart1;
>> +	};
>> +
>> +	regulators: regulators {
>> +		compatible = "simple-bus";
>> +		#address-cells = <1>;
>> +		#size-cells = <0>;
> 
> Drop the container node and put fixed regulator nodes directly under
> root.  Suggest to use name schema below:
> 
> 	regulator-xxx {
> 		...
> 	};

Fixed in v2. thanks

> 
> Shawn
> 
>> +
>> +		vdd_5v: regulator@0 {
>> +			compatible = "regulator-fixed";
>> +			regulator-name = "VDD_5V";
>> +			regulator-min-microvolt = <5000000>;
>> +			regulator-max-microvolt = <5000000>;
>> +			regulator-always-on;
>> +			regulator-boot-on;
>> +		};
>> +
>> +		vdd_3v3: regulator@1 {
>> +			compatible = "regulator-fixed";
>> +			regulator-name = "VDD_3V3";
>> +			regulator-min-microvolt = <3300000>;
>> +			regulator-max-microvolt = <3300000>;
>> +			regulator-always-on;
>> +			vin-supply = <&vdd_5v>;
>> +		};
>> +	};
>> +};
>> +
>> +&fec1 {
>> +	pinctrl-names = "default";
>> +	pinctrl-0 = <&pinctrl_enet1>;
>> +	phy-mode = "rmii";
>> +	phy-handle = <&ethphy0>;
>> +	phy-supply = <&vdd_3v3>;
>> +	status = "okay";
>> +
>> +	mdio: mdio {
>> +		#address-cells = <1>;
>> +		#size-cells = <0>;
>> +
>> +		ethphy0: ethernet-phy@0 {
>> +			reg = <0>;
>> +			compatible = "ethernet-phy-ieee802.3-c22";
>> +			interrupt-parent = <&gpio5>;
>> +			interrupts = <5 IRQ_TYPE_LEVEL_LOW>;
>> +			clocks = <&clks IMX6UL_CLK_ENET_REF>;
>> +			clock-names = "rmii-ref";
>> +			status = "okay";
>> +		};
>> +	};
>> +};
>> +
>> +&gpmi {
>> +	pinctrl-names = "default";
>> +	pinctrl-0 = <&pinctrl_gpmi_nand>;
>> +	nand-on-flash-bbt;
>> +	status = "disabled";
>> +};
>> +
>> +&uart1 {
>> +	pinctrl-names = "default";
>> +	pinctrl-0 = <&pinctrl_uart1>;
>> +	status = "okay";
>> +};
>> +
>> +&usbotg1 {
>> +	pinctrl-names = "default";
>> +	pinctrl-0 = <&pinctrl_usb_otg1_id>;
>> +	dr_mode = "otg";
>> +	status = "okay";
>> +};
>> +
>> +&usbotg2 {
>> +	dr_mode = "host";
>> +	disable-over-current;
>> +	status = "okay";
>> +};
>> +
>> +&usdhc1 {
>> +	pinctrl-names = "default", "state_100mhz", "state_200mhz";
>> +	pinctrl-0 = <&pinctrl_usdhc1>;
>> +	pinctrl-1 = <&pinctrl_usdhc1_100mhz>;
>> +	pinctrl-2 = <&pinctrl_usdhc1_200mhz>;
>> +	cd-gpios = <&gpio1 19 GPIO_ACTIVE_LOW>;
>> +	no-1-8-v;
>> +	keep-power-in-suspend;
>> +	wakeup-source;
>> +	vmmc-supply = <&vdd_3v3>;
>> +	status = "okay";
>> +};
>> +
>> +&usdhc2 {
>> +	pinctrl-names = "default";
>> +	pinctrl-0 = <&pinctrl_usdhc2>;
>> +	pinctrl-1 = <&pinctrl_usdhc2_100mhz>;
>> +	pinctrl-2 = <&pinctrl_usdhc2_200mhz>;
>> +	bus-width = <8>;
>> +	non-removable;
>> +	keep-power-in-suspend;
>> +	vmmc-supply = <&vdd_3v3>;
>> +	status = "disabled";
>> +};
>> +
>> +&iomuxc {
>> +	pinctrl_enet1: enet1grp {
>> +		fsl,pins = <
>> +			MX6UL_PAD_GPIO1_IO06__ENET1_MDIO	0x1b0b0
>> +			MX6UL_PAD_GPIO1_IO07__ENET1_MDC		0x1b0b0
>> +			MX6UL_PAD_ENET1_RX_EN__ENET1_RX_EN	0x1b0b0
>> +			MX6UL_PAD_ENET1_RX_ER__ENET1_RX_ER	0x1b0b0
>> +			MX6UL_PAD_ENET1_RX_DATA0__ENET1_RDATA00	0x1b0b0
>> +			MX6UL_PAD_ENET1_RX_DATA1__ENET1_RDATA01	0x1b0b0
>> +			MX6UL_PAD_ENET1_TX_EN__ENET1_TX_EN	0x1b0b0
>> +			MX6UL_PAD_ENET1_TX_DATA0__ENET1_TDATA00	0x1b0b0
>> +			MX6UL_PAD_ENET1_TX_DATA1__ENET1_TDATA01	0x1b0b0
>> +			MX6UL_PAD_ENET1_TX_CLK__ENET1_REF_CLK1	0x4001b031
>> +			MX6UL_PAD_SNVS_TAMPER5__GPIO5_IO05	0x1b0b0
>> +		>;
>> +	};
>> +
>> +	pinctrl_gpmi_nand: gpminandgrp {
>> +		fsl,pins = <
>> +			MX6UL_PAD_NAND_CLE__RAWNAND_CLE		0x0b0b1
>> +			MX6UL_PAD_NAND_ALE__RAWNAND_ALE		0x0b0b1
>> +			MX6UL_PAD_NAND_WP_B__RAWNAND_WP_B	0x0b0b1
>> +			MX6UL_PAD_NAND_READY_B__RAWNAND_READY_B	0x0b000
>> +			MX6UL_PAD_NAND_CE0_B__RAWNAND_CE0_B	0x0b0b1
>> +			MX6UL_PAD_NAND_RE_B__RAWNAND_RE_B	0x0b0b1
>> +			MX6UL_PAD_NAND_WE_B__RAWNAND_WE_B	0x0b0b1
>> +			MX6UL_PAD_NAND_DATA00__RAWNAND_DATA00	0x0b0b1
>> +			MX6UL_PAD_NAND_DATA01__RAWNAND_DATA01	0x0b0b1
>> +			MX6UL_PAD_NAND_DATA02__RAWNAND_DATA02	0x0b0b1
>> +			MX6UL_PAD_NAND_DATA03__RAWNAND_DATA03	0x0b0b1
>> +			MX6UL_PAD_NAND_DATA04__RAWNAND_DATA04	0x0b0b1
>> +			MX6UL_PAD_NAND_DATA05__RAWNAND_DATA05	0x0b0b1
>> +			MX6UL_PAD_NAND_DATA06__RAWNAND_DATA06	0x0b0b1
>> +			MX6UL_PAD_NAND_DATA07__RAWNAND_DATA07	0x0b0b1
>> +		>;
>> +	};
>> +
>> +	pinctrl_uart1: uart1grp {
>> +		fsl,pins = <
>> +			MX6UL_PAD_UART1_TX_DATA__UART1_DCE_TX	0x1b0b1
>> +			MX6UL_PAD_UART1_RX_DATA__UART1_DCE_RX	0x1b0b1
>> +		>;
>> +	};
>> +
>> +	pinctrl_usb_otg1_id: usbotg1idgrp {
>> +		fsl,pins = <
>> +			MX6UL_PAD_GPIO1_IO00__ANATOP_OTG1_ID	0x17059
>> +		>;
>> +	};
>> +
>> +	pinctrl_usdhc1: usdhc1grp {
>> +		fsl,pins = <
>> +			MX6UL_PAD_SD1_CMD__USDHC1_CMD		0x17059
>> +			MX6UL_PAD_SD1_CLK__USDHC1_CLK		0x10059
>> +			MX6UL_PAD_SD1_DATA0__USDHC1_DATA0	0x17059
>> +			MX6UL_PAD_SD1_DATA1__USDHC1_DATA1	0x17059
>> +			MX6UL_PAD_SD1_DATA2__USDHC1_DATA2	0x17059
>> +			MX6UL_PAD_SD1_DATA3__USDHC1_DATA3	0x17059
>> +			MX6UL_PAD_UART1_RTS_B__GPIO1_IO19	0x17059
>> +		>;
>> +	};
>> +
>> +	pinctrl_usdhc1_100mhz: usdhc1grp100mhz {
>> +		fsl,pins = <
>> +			MX6UL_PAD_SD1_CMD__USDHC1_CMD		0x170b9
>> +			MX6UL_PAD_SD1_CLK__USDHC1_CLK		0x100b9
>> +			MX6UL_PAD_SD1_DATA0__USDHC1_DATA0	0x170b9
>> +			MX6UL_PAD_SD1_DATA1__USDHC1_DATA1	0x170b9
>> +			MX6UL_PAD_SD1_DATA2__USDHC1_DATA2	0x170b9
>> +			MX6UL_PAD_SD1_DATA3__USDHC1_DATA3	0x170b9
>> +		>;
>> +	};
>> +
>> +	pinctrl_usdhc1_200mhz: usdhc1grp200mhz {
>> +		fsl,pins = <
>> +			MX6UL_PAD_SD1_CMD__USDHC1_CMD		0x170f9
>> +			MX6UL_PAD_SD1_CLK__USDHC1_CLK		0x100f9
>> +			MX6UL_PAD_SD1_DATA0__USDHC1_DATA0	0x170f9
>> +			MX6UL_PAD_SD1_DATA1__USDHC1_DATA1	0x170f9
>> +			MX6UL_PAD_SD1_DATA2__USDHC1_DATA2	0x170f9
>> +			MX6UL_PAD_SD1_DATA3__USDHC1_DATA3	0x170f9
>> +		>;
>> +	};
>> +
>> +	pinctrl_usdhc2: usdhc2grp {
>> +		fsl,pins = <
>> +			MX6UL_PAD_NAND_RE_B__USDHC2_CLK		0x10069
>> +			MX6UL_PAD_NAND_WE_B__USDHC2_CMD		0x17059
>> +			MX6UL_PAD_NAND_DATA00__USDHC2_DATA0	0x17059
>> +			MX6UL_PAD_NAND_DATA01__USDHC2_DATA1	0x17059
>> +			MX6UL_PAD_NAND_DATA02__USDHC2_DATA2	0x17059
>> +			MX6UL_PAD_NAND_DATA03__USDHC2_DATA3	0x17059
>> +			MX6UL_PAD_NAND_DATA04__USDHC2_DATA4	0x17059
>> +			MX6UL_PAD_NAND_DATA05__USDHC2_DATA5	0x17059
>> +			MX6UL_PAD_NAND_DATA06__USDHC2_DATA6	0x17059
>> +			MX6UL_PAD_NAND_DATA07__USDHC2_DATA7	0x17059
>> +		>;
>> +	};
>> +
>> +	pinctrl_usdhc2_100mhz: usdhc2grp100mhz {
>> +		fsl,pins = <
>> +			MX6UL_PAD_NAND_RE_B__USDHC2_CLK		0x100b9
>> +			MX6UL_PAD_NAND_WE_B__USDHC2_CMD		0x170b9
>> +			MX6UL_PAD_NAND_DATA00__USDHC2_DATA0	0x170b9
>> +			MX6UL_PAD_NAND_DATA01__USDHC2_DATA1	0x170b9
>> +			MX6UL_PAD_NAND_DATA02__USDHC2_DATA2	0x170b9
>> +			MX6UL_PAD_NAND_DATA03__USDHC2_DATA3	0x170b9
>> +			MX6UL_PAD_NAND_DATA04__USDHC2_DATA4	0x170b9
>> +			MX6UL_PAD_NAND_DATA05__USDHC2_DATA5	0x170b9
>> +			MX6UL_PAD_NAND_DATA06__USDHC2_DATA6	0x170b9
>> +			MX6UL_PAD_NAND_DATA07__USDHC2_DATA7	0x170b9
>> +		>;
>> +	};
>> +
>> +	pinctrl_usdhc2_200mhz: usdhc2grp200mhz {
>> +		fsl,pins = <
>> +			MX6UL_PAD_NAND_RE_B__USDHC2_CLK		0x100f9
>> +			MX6UL_PAD_NAND_WE_B__USDHC2_CMD		0x170f9
>> +			MX6UL_PAD_NAND_DATA00__USDHC2_DATA0	0x170f9
>> +			MX6UL_PAD_NAND_DATA01__USDHC2_DATA1	0x170f9
>> +			MX6UL_PAD_NAND_DATA02__USDHC2_DATA2	0x170f9
>> +			MX6UL_PAD_NAND_DATA03__USDHC2_DATA3	0x170f9
>> +			MX6UL_PAD_NAND_DATA04__USDHC2_DATA4	0x170f9
>> +			MX6UL_PAD_NAND_DATA05__USDHC2_DATA5	0x170f9
>> +			MX6UL_PAD_NAND_DATA06__USDHC2_DATA6	0x170f9
>> +			MX6UL_PAD_NAND_DATA07__USDHC2_DATA7	0x170f9
>> +		>;
>> +	};
>> +};
>> -- 
>> 2.11.0
>>
>>
>> _______________________________________________
>> linux-arm-kernel mailing list
>> linux-arm-kernel@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

-- 
Thanks,
Parthiban N
+4915163761545

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
