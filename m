Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0789F6BA6E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 12:40:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T+rDrr5qXijGpR8jQbmuS5cmmuseuRngU17oOYfwdWc=; b=SvJCD/tHVP5n1B
	qaSnRHitN9/UjuEUih5lF1ll+soMXwTpznTx2F+XIhKeJLuughlklSsMg31WEonYqTsFiTmHR7pXn
	jQOTavltsGGUhegNeHnNt+aMbHsMaIC4QURheHKsak1OFB2zHN+mCa2+f4zomgnCJZ5xu7baSMBCr
	AbNkSaIDOXqftPNEYxq61QR5bzogCxY8yi2jSesdKJIwE1t3KhfwF9BCntAOnWEMB6nvX4ATGSwNU
	nRs8CoqkWe3TiFkXZQBPcFuvS/c0SotZPiQmzydk+z589munOg8CUQjJTxvO/KxD/SyxcWBZadCf3
	2Z2cARhaAssdGqitrAqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnhMF-0003hP-8u; Wed, 17 Jul 2019 10:40:23 +0000
Received: from mail-eopbgr140075.outbound.protection.outlook.com
 ([40.107.14.75] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnhM6-0003gs-H3
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 10:40:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XPrqfERK6iwkrwHhDzDgXufhneKtZsSvG1BExmnoI5lxnZ9pawi39PYVyhWDM3S9DQRXgPvjePEIFGlr1oqQDvl9ya4FqeQSdxadol9v4Sk/poY7QmGyXLjsDsf3YNk+mbrL/Bq3RZn2JfHM4BoWb08sx3KBAs4cGoqAMdPom4VO/ZIYjXN/K7PF53ykEayDEBAUr6kg3TiGzkM/GPuOSVWnZaIzNtfqoKt9I4O6WOrU1BYdHxUY6kuH+XfPyLDuVXPBlDd19DV9nlGJbvhI6LMXglv8VFpO9sOPI9RF3Z4Iutb+Wz0OwVlgDb0JBJMLta+D0BRahNs1C81ba0CTKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HwFbI+vQd6QQnotc+vs1JKUEVDwLROgizAzIFebp+es=;
 b=TMZoTwXzCfZ2GG/3hDzr8e6gffr0mdGveEqTDUKbSa4S+uG2Q9lGMBSXvZEagRDx8MBsdCGxGmuYqD6LuYa1DgRR64M0uRkNkSQnqBiSYqK2qhdNEalFRtZ5PyTcz6qLuD5qYLgVbWS81f3QdTZFG17pHS8gsnKuEzGOvk3zqK3GZ/dfZxV7tBWofBJDbpso3lzYvSj0bTd2bvG5dhgX4J3uMlWlm8G1CUJMnX3vS5k6Avo1KEXRCFx12mfQEPb13mOGyiFcfcjbKk+GVOAvoya1tkz6Qls5cT7VGJLa/FRA4h8jxq5PMiwivvX3XfteBhuvf4JwEtDpZy/v0j8S8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HwFbI+vQd6QQnotc+vs1JKUEVDwLROgizAzIFebp+es=;
 b=Y2X99bnTife9wZ8qbKcF93Lr4OJekQHvR6UgrKniHUZ0XiISl7OeUQ3a+vl5MjiUps62+Up9SWUQMCtlEXliANssw/fTaRDc+dfNzKT1HYpK0CbBY5C0pQIhrYRmrZfS7rFaBbHqR2sRP+MX5XACDtAUMc6kQNpXWezXvmXvF0w=
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com (52.134.92.158) by
 AM0PR04MB5812.eurprd04.prod.outlook.com (20.178.119.145) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2073.14; Wed, 17 Jul 2019 10:40:10 +0000
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::7882:51:e491:8431]) by AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::7882:51:e491:8431%7]) with mapi id 15.20.2073.012; Wed, 17 Jul 2019
 10:40:10 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, "robh+dt@kernel.org" <robh+dt@kernel.org>
Subject: RE: [PATCH 3/3] arm64: dts: freescale: Add support for i.MX8QXP AI_ML
 board
Thread-Topic: [PATCH 3/3] arm64: dts: freescale: Add support for i.MX8QXP
 AI_ML board
Thread-Index: AQHVPGZyIR348aAD1EKdeUBRiwSuo6bOm9pA
Date: Wed, 17 Jul 2019 10:40:10 +0000
Message-ID: <AM0PR04MB42116A61D7E32E6BA36D1CBA80C90@AM0PR04MB4211.eurprd04.prod.outlook.com>
References: <20190717061039.9271-1-manivannan.sadhasivam@linaro.org>
 <20190717061039.9271-4-manivannan.sadhasivam@linaro.org>
In-Reply-To: <20190717061039.9271-4-manivannan.sadhasivam@linaro.org>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 70bc771e-7e35-4714-69c5-08d70aa32454
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB5812; 
x-ms-traffictypediagnostic: AM0PR04MB5812:
x-ld-processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
x-microsoft-antispam-prvs: <AM0PR04MB5812097B334B2C07C6C9637080C90@AM0PR04MB5812.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 01018CB5B3
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(396003)(366004)(136003)(39860400002)(199004)(189003)(4326008)(486006)(53936002)(99286004)(7696005)(66066001)(6246003)(14454004)(256004)(81156014)(478600001)(25786009)(7416002)(446003)(81166006)(33656002)(476003)(8676002)(7736002)(71200400001)(71190400001)(64756008)(316002)(305945005)(74316002)(54906003)(2501003)(6506007)(66476007)(66446008)(2201001)(102836004)(6436002)(6116002)(68736007)(5660300002)(8936002)(66946007)(11346002)(229853002)(76176011)(3846002)(86362001)(2906002)(26005)(66556008)(55016002)(76116006)(186003)(44832011)(9686003)(110136005)(52536014)(414714003)(473944003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5812;
 H:AM0PR04MB4211.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: kvAoUaSsU73Hx5GbeBNiWwGwVAGXSmUD99iTaCh3nryV1vbpG2hk9NBRWsG3nQ6J++SknhxeLbr5E2Dr6RTkP0d6duRlpmPhPff1JrXcVmjEAxpkyac0H8fNJVmzZ6y185wtIqBgesqiTPnKutF7njVRuk08syc/NUQPpKRzqxyPpI58HOYuNGyMmDgrCXpeqx/9JxBykYZhg1im6IesXqHNx+dTxhtUtmiM9/HMNbaxK0qwCcEKZomiGC/uytIj/vqYAXWHPoLXmD6e+ikY9r+yWlY4GgBS23DX1NieLXMj0RQNM46Ttag3PW/cbsVha0EcRf0SxiN+jFOgbYaQyMEME/MRW9oiEuH99qMgA3l71ljFUT/sV+SyOOD7qDr1iQ6TZSAqWdn2a8VzC45tpIREXbcEoQiog45lFx1J7Ck=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 70bc771e-7e35-4714-69c5-08d70aa32454
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jul 2019 10:40:10.0224 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aisheng.dong@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5812
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_034014_916945_BC1BEB0B 
X-CRM114-Status: GOOD (  18.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.75 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Kinjan Patel <Kinjan.patel@einfochips.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Darshak Patel <Darshak.patel@einfochips.com>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Prajose John <Prajose.john@einfochips.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> Sent: Wednesday, July 17, 2019 2:11 PM
> 
> Add support for i.MX8QXP AI_ML board from Einfochips. This board is one of
> the Consumer Edition boards of the 96Boards family based on i.MX8QXP SoC
> from NXP/Freescale.
> 
> The initial support includes following peripherals which are tested and known
> to be working:
> 
> 1. Debug serial via UART2
> 2. uSD
> 3. WiFi
> 4. Ethernet
> 
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

The patch looks good to me. Only a few nitpicks below.
Otherwise,
Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>

Regards
Dong Aisheng

> ---
>  arch/arm64/boot/dts/freescale/Makefile        |   1 +
>  .../boot/dts/freescale/imx8qxp-ai_ml.dts      | 249 ++++++++++++++++++
>  2 files changed, 250 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/freescale/imx8qxp-ai_ml.dts
> 
> diff --git a/arch/arm64/boot/dts/freescale/Makefile
> b/arch/arm64/boot/dts/freescale/Makefile
> index 0bd122f60549..bd8460549d1a 100644
> --- a/arch/arm64/boot/dts/freescale/Makefile
> +++ b/arch/arm64/boot/dts/freescale/Makefile
> @@ -24,4 +24,5 @@ dtb-$(CONFIG_ARCH_MXC) += imx8mm-evk.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mq-evk.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mq-zii-ultra-rmb3.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mq-zii-ultra-zest.dtb
> +dtb-$(CONFIG_ARCH_MXC) += imx8qxp-ai_ml.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8qxp-mek.dtb diff --git
> a/arch/arm64/boot/dts/freescale/imx8qxp-ai_ml.dts
> b/arch/arm64/boot/dts/freescale/imx8qxp-ai_ml.dts
> new file mode 100644
> index 000000000000..dcd36e57d916
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
> +/* LS-I2C0 */

Typo?

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
> +/* PCI-E */

A bit confusing for the comments...

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
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_usdhc1>;
> +	bus-width = <4>;
> +	no-sd;
> +	non-removable;
> +	mmc-pwrseq = <&sdio_pwrseq>;
> +	#address-cells = <1>;
> +	#size-cells = <0>;

Nitpick: we usually put this two properties at the first place.

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
> +			IMX8QXP_ENET0_MDC_CONN_ENET0_MDC
> 	0x06000020
> +			IMX8QXP_ENET0_MDIO_CONN_ENET0_MDIO
> 	0x06000020
> +			IMX8QXP_ENET0_RGMII_TX_CTL_CONN_ENET0_RGMII_TX_CTL
> 	0x06000020
> +			IMX8QXP_ENET0_RGMII_TXC_CONN_ENET0_RGMII_TXC
> 	0x06000020
> +			IMX8QXP_ENET0_RGMII_TXD0_CONN_ENET0_RGMII_TXD0
> 	0x06000020
> +			IMX8QXP_ENET0_RGMII_TXD1_CONN_ENET0_RGMII_TXD1
> 	0x06000020
> +			IMX8QXP_ENET0_RGMII_TXD2_CONN_ENET0_RGMII_TXD2
> 	0x06000020
> +			IMX8QXP_ENET0_RGMII_TXD3_CONN_ENET0_RGMII_TXD3
> 	0x06000020
> +			IMX8QXP_ENET0_RGMII_RXC_CONN_ENET0_RGMII_RXC
> 	0x06000020
> +			IMX8QXP_ENET0_RGMII_RX_CTL_CONN_ENET0_RGMII_RX_CTL
> 	0x06000020
> +			IMX8QXP_ENET0_RGMII_RXD0_CONN_ENET0_RGMII_RXD0
> 	0x06000020
> +			IMX8QXP_ENET0_RGMII_RXD1_CONN_ENET0_RGMII_RXD1
> 	0x06000020
> +			IMX8QXP_ENET0_RGMII_RXD2_CONN_ENET0_RGMII_RXD2
> 	0x06000020
> +			IMX8QXP_ENET0_RGMII_RXD3_CONN_ENET0_RGMII_RXD3
> 	0x06000020
> +		>;
> +	};
> +
> +	pinctrl_leds: ledsgrp{
> +		fsl,pins = <
> +			IMX8QXP_ESAI0_TX2_RX3_LSIO_GPIO0_IO06
> 	0x00000021
> +			IMX8QXP_ESAI0_TX3_RX2_LSIO_GPIO0_IO07
> 	0x00000021
> +			IMX8QXP_EMMC0_DATA7_LSIO_GPIO4_IO16
> 	0x00000021
> +			IMX8QXP_USDHC1_WP_LSIO_GPIO4_IO21
> 	0x00000021
> +			IMX8QXP_EMMC0_STROBE_LSIO_GPIO4_IO17
> 	0x00000021
> +			IMX8QXP_EMMC0_RESET_B_LSIO_GPIO4_IO18
> 	0x00000021
> +		>;
> +	};
> +
> +	pinctrl_lpuart0: lpuart0grp {
> +		fsl,pins = <
> +			IMX8QXP_UART0_RX_ADMA_UART0_RX
> 	0X06000020
> +			IMX8QXP_UART0_TX_ADMA_UART0_TX
> 	0X06000020
> +			IMX8QXP_FLEXCAN0_TX_ADMA_UART0_CTS_B
> 	0x06000020
> +			IMX8QXP_FLEXCAN0_RX_ADMA_UART0_RTS_B
> 	0x06000020
> +		>;
> +	};
> +
> +	pinctrl_lpuart1: lpuart1grp {
> +		fsl,pins = <
> +			IMX8QXP_UART1_RX_ADMA_UART1_RX
> 	0X06000020
> +			IMX8QXP_UART1_TX_ADMA_UART1_TX
> 	0X06000020
> +		>;
> +	};
> +
> +	pinctrl_lpuart2: lpuart2grp {
> +		fsl,pins = <
> +			IMX8QXP_UART2_RX_ADMA_UART2_RX
> 	0X06000020
> +			IMX8QXP_UART2_TX_ADMA_UART2_TX
> 	0X06000020
> +		>;
> +	};
> +
> +	pinctrl_lpuart3: lpuart3grp {
> +		fsl,pins = <
> +			IMX8QXP_FLEXCAN2_RX_ADMA_UART3_RX
> 	0X06000020
> +			IMX8QXP_FLEXCAN2_TX_ADMA_UART3_TX
> 	0X06000020
> +		>;
> +	};
> +
> +	pinctrl_usdhc1: usdhc1grp {
> +		fsl,pins = <
> +			IMX8QXP_EMMC0_CLK_CONN_EMMC0_CLK
> 	0x06000041
> +			IMX8QXP_EMMC0_CMD_CONN_EMMC0_CMD
> 	0x00000021
> +			IMX8QXP_EMMC0_DATA0_CONN_EMMC0_DATA0
> 	0x00000021
> +			IMX8QXP_EMMC0_DATA1_CONN_EMMC0_DATA1
> 	0x00000021
> +			IMX8QXP_EMMC0_DATA2_CONN_EMMC0_DATA2
> 	0x00000021
> +			IMX8QXP_EMMC0_DATA3_CONN_EMMC0_DATA3
> 	0x00000021
> +		>;
> +	};
> +
> +	pinctrl_usdhc2: usdhc2grp {
> +		fsl,pins = <
> +			IMX8QXP_USDHC1_CLK_CONN_USDHC1_CLK
> 	0x06000041
> +			IMX8QXP_USDHC1_CMD_CONN_USDHC1_CMD
> 	0x00000021
> +			IMX8QXP_USDHC1_DATA0_CONN_USDHC1_DATA0
> 	0x00000021
> +			IMX8QXP_USDHC1_DATA1_CONN_USDHC1_DATA1
> 	0x00000021
> +			IMX8QXP_USDHC1_DATA2_CONN_USDHC1_DATA2
> 	0x00000021
> +			IMX8QXP_USDHC1_DATA3_CONN_USDHC1_DATA3
> 	0x00000021
> +			IMX8QXP_USDHC1_VSELECT_CONN_USDHC1_VSELECT
> 	0x00000021
> +			IMX8QXP_USDHC1_CD_B_LSIO_GPIO4_IO22
> 	0x00000021
> +		>;
> +	};
> +
> +	pinctrl_wifi_reg_on: wifiregongrp {
> +		fsl,pins = <
> +			IMX8QXP_QSPI0B_SS1_B_LSIO_GPIO3_IO24
> 	0x00000021
> +		>;
> +	};
> +};
> --
> 2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
