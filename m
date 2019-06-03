Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C19DF329B4
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 09:34:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/NQui29fu4ig4YOiEW/ifU0mKvdqzBxEA2CGZ5IEFTE=; b=HDiQZZCR3P4+fB
	4mziWfXvlM/TRnDrMkB4frR96+H9EWSKUIlZBSE8mb7HUu3Y19woOl0uatQXe9rGJucdufok1VllF
	pULRjEAq8B+YwAootmOdYuDHQDMkG4gPSHbEfMwPV2GJ7RctVCNQdFngv6Cb1nOzBslk6n87bR7p3
	a1iLr6YS+6JW6QJXPlA50fhLTZqK955jFTCGY0NYe39awopmnCuSYKSIGQupYzctWsATRkepohtaa
	0EYFZPJV0k+W6bMcWjPsh/dBumse2shcxtLqiJ8WofU5kFFYTtAXOogdQt+fHvWTM1reIzUEsH7O2
	yj4+FJ2g4oBVBDfP02EA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXhTt-0003vS-9U; Mon, 03 Jun 2019 07:34:09 +0000
Received: from mail-eopbgr140052.outbound.protection.outlook.com
 ([40.107.14.52] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXhTm-0003v9-7A
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 07:34:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fGAIrsrhHG1fpms8X3f1sXEoTRyoi+dVQ7c2976BJzE=;
 b=nRCNfiQqoIKWxLLMmO86C21QjUDwdobVUqCmzuhodtknjq1sd7HxYgytm50Ms2o8IjA5GvhhtzQO3fBxFz1ApkB9jP2pDwdFg7h4G5aa2Lcz0wJ8qrudDhxMeKSf/66stJJbTbhhCAm33Heq6CI02CLD1l+5KcMOcSglDXvQUGE=
Received: from VI1PR04MB5790.eurprd04.prod.outlook.com (20.178.127.224) by
 VI1PR04MB4112.eurprd04.prod.outlook.com (52.133.14.153) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1943.18; Mon, 3 Jun 2019 07:33:57 +0000
Received: from VI1PR04MB5790.eurprd04.prod.outlook.com
 ([fe80::607a:a473:5c73:7d7e]) by VI1PR04MB5790.eurprd04.prod.outlook.com
 ([fe80::607a:a473:5c73:7d7e%5]) with mapi id 15.20.1943.018; Mon, 3 Jun 2019
 07:33:57 +0000
From: Abel Vesa <abel.vesa@nxp.com>
To: Anson Huang <anson.huang@nxp.com>
Subject: Re: [PATCH V2 3/3] arm64: dts: freescale: Add i.MX8MN DDR4 EVK board
 support
Thread-Topic: [PATCH V2 3/3] arm64: dts: freescale: Add i.MX8MN DDR4 EVK board
 support
Thread-Index: AQHVGatZTl9F/dTNxUOw6Q1ZubNyH6aJihGA
Date: Mon, 3 Jun 2019 07:33:57 +0000
Message-ID: <20190603073357.b3d3he5lbqt7xaei@fsr-ub1664-175>
References: <20190603012747.38921-1-Anson.Huang@nxp.com>
 <20190603012747.38921-3-Anson.Huang@nxp.com>
In-Reply-To: <20190603012747.38921-3-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=abel.vesa@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d733004d-11d8-440a-acad-08d6e7f5d6f7
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:VI1PR04MB4112; 
x-ms-traffictypediagnostic: VI1PR04MB4112:
x-microsoft-antispam-prvs: <VI1PR04MB4112DFCDAB0F3CF6F416286FF6140@VI1PR04MB4112.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:291;
x-forefront-prvs: 0057EE387C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(7916004)(39860400002)(346002)(376002)(136003)(366004)(396003)(199004)(189003)(25786009)(1076003)(316002)(14454004)(102836004)(53546011)(6506007)(9686003)(6512007)(86362001)(5660300002)(6862004)(4326008)(64756008)(33716001)(53936002)(76176011)(186003)(229853002)(26005)(66946007)(73956011)(6246003)(76116006)(11346002)(7736002)(71200400001)(66446008)(66476007)(446003)(478600001)(66556008)(8676002)(71190400001)(2906002)(81156014)(8936002)(3846002)(6116002)(6636002)(81166006)(305945005)(54906003)(476003)(6436002)(99286004)(66066001)(256004)(14444005)(486006)(6486002)(68736007)(7416002)(44832011)(414714003)(473944003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB4112;
 H:VI1PR04MB5790.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 2BRTrCfUm87eX8/FBeWTgkkEa+CFwDxbxiRnmfCUt/Zfs9zZ9KlQe7+YN/WwwMwmY7OeZyl5UpDV+YsWGIjNRjuDdE7+XQ4Mo/vm/FFlK+PQoLpHQWTMglRd6nN2FzEDo5SDNH2LPfPsEkOqEYeXoQruWm41rYUKnne4k2EDZlbi0eBNrL4d1LVzn8sYYd6CQr9WfT9whnxTg8EJonkLxWrriQNY8rdEHXEgvZ6C3nuDIXrDYsoGQv2eJareDUTBQYVEoXV81hFLM8IubCkx7/aPdcI9qvkF4JfxZYpHAEQ2jb0W6wJtBE1VYhDT3m4EAVqaZZV4PN9Agvo2RHB8H71e7SUruWMUyPmcgSaXAI/9c8eO4+ILXESIP3L/vTGXuaMctdNlW15DUfdxozLzGD5LU59AGHzb81fBZq0JN2Q=
Content-ID: <E19139743FF337498099BF61FFEEE00E@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d733004d-11d8-440a-acad-08d6e7f5d6f7
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jun 2019 07:33:57.7864 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: abel.vesa@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4112
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_003402_267365_C1C3B4C7 
X-CRM114-Status: GOOD (  15.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.52 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>, Jacky Bai <ping.bai@nxp.com>,
 Bhaskar Upadhaya <bhaskar.upadhaya@nxp.com>,
 "manivannan.sadhasivam@linaro.org" <manivannan.sadhasivam@linaro.org>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>, "marex@denx.de" <marex@denx.de>,
 "andrew.smirnov@gmail.com" <andrew.smirnov@gmail.com>,
 Pankaj Bansal <pankaj.bansal@nxp.com>, dl-linux-imx <linux-imx@nxp.com>,
 "u.kleine-koenig@pengutronix.de" <u.kleine-koenig@pengutronix.de>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Pramod Kumar <pramod.kumar_1@nxp.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 Vabhav Sharma <vabhav.sharma@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Aisheng Dong <aisheng.dong@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19-06-03 09:27:47, Anson.Huang@nxp.com wrote:
> From: Anson Huang <Anson.Huang@nxp.com>
> 
> This patch adds basic i.MM8MN DDR4 EVK board support.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> No changes.
> ---
>  arch/arm64/boot/dts/freescale/Makefile            |   1 +
>  arch/arm64/boot/dts/freescale/imx8mn-ddr4-evk.dts | 217 ++++++++++++++++++++++
>  2 files changed, 218 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/freescale/imx8mn-ddr4-evk.dts
> 
> diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
> index 0bd122f..2cdd4cc 100644
> --- a/arch/arm64/boot/dts/freescale/Makefile
> +++ b/arch/arm64/boot/dts/freescale/Makefile
> @@ -20,6 +20,7 @@ dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls2088a-rdb.dtb
>  dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-lx2160a-qds.dtb
>  dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-lx2160a-rdb.dtb
>  
> +dtb-$(CONFIG_ARCH_MXC) += imx8mn-ddr4-evk.dtb

Nitpick: Move this bellow imx8mm-evk.dtb to keep them alphabetically ordered.

>  dtb-$(CONFIG_ARCH_MXC) += imx8mm-evk.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mq-evk.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mq-zii-ultra-rmb3.dtb
> diff --git a/arch/arm64/boot/dts/freescale/imx8mn-ddr4-evk.dts b/arch/arm64/boot/dts/freescale/imx8mn-ddr4-evk.dts
> new file mode 100644
> index 0000000..da552c2
> --- /dev/null
> +++ b/arch/arm64/boot/dts/freescale/imx8mn-ddr4-evk.dts
> @@ -0,0 +1,217 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright 2019 NXP
> + */
> +
> +/dts-v1/;
> +
> +#include "imx8mn.dtsi"
> +
> +/ {
> +	model = "NXP i.MX8MNano DDR4 EVK board";
> +	compatible = "fsl,imx8mn-ddr4-evk", "fsl,imx8mn";
> +
> +	chosen {
> +		stdout-path = &uart2;
> +	};
> +
> +	reg_usdhc2_vmmc: regulator-usdhc2 {
> +		compatible = "regulator-fixed";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_reg_usdhc2_vmmc>;
> +		regulator-name = "VSD_3V3";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		gpio = <&gpio2 19 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +	};
> +};
> +
> +&iomuxc {
> +	pinctrl-names = "default";
> +
> +	pinctrl_fec1: fec1grp {
> +		fsl,pins = <
> +			MX8MN_IOMUXC_ENET_MDC_ENET1_MDC		0x3
> +			MX8MN_IOMUXC_ENET_MDIO_ENET1_MDIO	0x3
> +			MX8MN_IOMUXC_ENET_TD3_ENET1_RGMII_TD3	0x1f
> +			MX8MN_IOMUXC_ENET_TD2_ENET1_RGMII_TD2	0x1f
> +			MX8MN_IOMUXC_ENET_TD1_ENET1_RGMII_TD1	0x1f
> +			MX8MN_IOMUXC_ENET_TD0_ENET1_RGMII_TD0	0x1f
> +			MX8MN_IOMUXC_ENET_RD3_ENET1_RGMII_RD3	0x91
> +			MX8MN_IOMUXC_ENET_RD2_ENET1_RGMII_RD2	0x91
> +			MX8MN_IOMUXC_ENET_RD1_ENET1_RGMII_RD1	0x91
> +			MX8MN_IOMUXC_ENET_RD0_ENET1_RGMII_RD0	0x91
> +			MX8MN_IOMUXC_ENET_TXC_ENET1_RGMII_TXC	0x1f
> +			MX8MN_IOMUXC_ENET_RXC_ENET1_RGMII_RXC	0x91
> +			MX8MN_IOMUXC_ENET_RX_CTL_ENET1_RGMII_RX_CTL	0x91
> +			MX8MN_IOMUXC_ENET_TX_CTL_ENET1_RGMII_TX_CTL	0x1f
> +			MX8MN_IOMUXC_SAI2_RXC_GPIO4_IO22	0x19
> +		>;
> +	};
> +
> +	pinctrl_reg_usdhc2_vmmc: regusdhc2vmmc {
> +		fsl,pins = <
> +			MX8MN_IOMUXC_SD2_RESET_B_GPIO2_IO19	0x41
> +		>;
> +	};
> +
> +	pinctrl_uart2: uart2grp {
> +		fsl,pins = <
> +			MX8MN_IOMUXC_UART2_RXD_UART2_DCE_RX	0x140
> +			MX8MN_IOMUXC_UART2_TXD_UART2_DCE_TX	0x140
> +		>;
> +	};
> +
> +	pinctrl_usdhc2_gpio: usdhc2grpgpio {
> +		fsl,pins = <
> +			MX8MN_IOMUXC_GPIO1_IO15_GPIO1_IO15	0x1c4
> +		>;
> +	};
> +
> +	pinctrl_usdhc2: usdhc2grp {
> +		fsl,pins = <
> +			MX8MN_IOMUXC_SD2_CLK_USDHC2_CLK		0x190
> +			MX8MN_IOMUXC_SD2_CMD_USDHC2_CMD		0x1d0
> +			MX8MN_IOMUXC_SD2_DATA0_USDHC2_DATA0	0x1d0
> +			MX8MN_IOMUXC_SD2_DATA1_USDHC2_DATA1	0x1d0
> +			MX8MN_IOMUXC_SD2_DATA2_USDHC2_DATA2	0x1d0
> +			MX8MN_IOMUXC_SD2_DATA3_USDHC2_DATA3	0x1d0
> +			MX8MN_IOMUXC_GPIO1_IO04_USDHC2_VSELECT	0x1d0
> +		>;
> +	};
> +
> +	pinctrl_usdhc2_100mhz: usdhc2grp100mhz {
> +		fsl,pins = <
> +			MX8MN_IOMUXC_SD2_CLK_USDHC2_CLK		0x194
> +			MX8MN_IOMUXC_SD2_CMD_USDHC2_CMD		0x1d4
> +			MX8MN_IOMUXC_SD2_DATA0_USDHC2_DATA0	0x1d4
> +			MX8MN_IOMUXC_SD2_DATA1_USDHC2_DATA1	0x1d4
> +			MX8MN_IOMUXC_SD2_DATA2_USDHC2_DATA2	0x1d4
> +			MX8MN_IOMUXC_SD2_DATA3_USDHC2_DATA3	0x1d4
> +			MX8MN_IOMUXC_GPIO1_IO04_USDHC2_VSELECT	0x1d0
> +		>;
> +	};
> +
> +	pinctrl_usdhc2_200mhz: usdhc2grp200mhz {
> +		fsl,pins = <
> +			MX8MN_IOMUXC_SD2_CLK_USDHC2_CLK		0x196
> +			MX8MN_IOMUXC_SD2_CMD_USDHC2_CMD		0x1d6
> +			MX8MN_IOMUXC_SD2_DATA0_USDHC2_DATA0	0x1d6
> +			MX8MN_IOMUXC_SD2_DATA1_USDHC2_DATA1	0x1d6
> +			MX8MN_IOMUXC_SD2_DATA2_USDHC2_DATA2	0x1d6
> +			MX8MN_IOMUXC_SD2_DATA3_USDHC2_DATA3	0x1d6
> +			MX8MN_IOMUXC_GPIO1_IO04_USDHC2_VSELECT	0x1d0
> +		>;
> +	};
> +
> +	pinctrl_usdhc3: usdhc3grp {
> +		fsl,pins = <
> +			MX8MN_IOMUXC_NAND_WE_B_USDHC3_CLK		0x40000190
> +			MX8MN_IOMUXC_NAND_WP_B_USDHC3_CMD		0x1d0
> +			MX8MN_IOMUXC_NAND_DATA04_USDHC3_DATA0		0x1d0
> +			MX8MN_IOMUXC_NAND_DATA05_USDHC3_DATA1		0x1d0
> +			MX8MN_IOMUXC_NAND_DATA06_USDHC3_DATA2		0x1d0
> +			MX8MN_IOMUXC_NAND_DATA07_USDHC3_DATA3		0x1d0
> +			MX8MN_IOMUXC_NAND_RE_B_USDHC3_DATA4		0x1d0
> +			MX8MN_IOMUXC_NAND_CE2_B_USDHC3_DATA5		0x1d0
> +			MX8MN_IOMUXC_NAND_CE3_B_USDHC3_DATA6		0x1d0
> +			MX8MN_IOMUXC_NAND_CLE_USDHC3_DATA7		0x1d0
> +			MX8MN_IOMUXC_NAND_CE1_B_USDHC3_STROBE		0x190
> +		>;
> +	};
> +
> +	pinctrl_usdhc3_100mhz: usdhc3grp100mhz {
> +		fsl,pins = <
> +			MX8MN_IOMUXC_NAND_WE_B_USDHC3_CLK		0x40000194
> +			MX8MN_IOMUXC_NAND_WP_B_USDHC3_CMD		0x1d4
> +			MX8MN_IOMUXC_NAND_DATA04_USDHC3_DATA0		0x1d4
> +			MX8MN_IOMUXC_NAND_DATA05_USDHC3_DATA1		0x1d4
> +			MX8MN_IOMUXC_NAND_DATA06_USDHC3_DATA2		0x1d4
> +			MX8MN_IOMUXC_NAND_DATA07_USDHC3_DATA3		0x1d4
> +			MX8MN_IOMUXC_NAND_RE_B_USDHC3_DATA4		0x1d4
> +			MX8MN_IOMUXC_NAND_CE2_B_USDHC3_DATA5		0x1d4
> +			MX8MN_IOMUXC_NAND_CE3_B_USDHC3_DATA6		0x1d4
> +			MX8MN_IOMUXC_NAND_CLE_USDHC3_DATA7		0x1d4
> +			MX8MN_IOMUXC_NAND_CE1_B_USDHC3_STROBE		0x194
> +		>;
> +	};
> +
> +	pinctrl_usdhc3_200mhz: usdhc3grp200mhz {
> +		fsl,pins = <
> +			MX8MN_IOMUXC_NAND_WE_B_USDHC3_CLK		0x40000196
> +			MX8MN_IOMUXC_NAND_WP_B_USDHC3_CMD		0x1d6
> +			MX8MN_IOMUXC_NAND_DATA04_USDHC3_DATA0		0x1d6
> +			MX8MN_IOMUXC_NAND_DATA05_USDHC3_DATA1		0x1d6
> +			MX8MN_IOMUXC_NAND_DATA06_USDHC3_DATA2		0x1d6
> +			MX8MN_IOMUXC_NAND_DATA07_USDHC3_DATA3		0x1d6
> +			MX8MN_IOMUXC_NAND_RE_B_USDHC3_DATA4		0x1d6
> +			MX8MN_IOMUXC_NAND_CE2_B_USDHC3_DATA5		0x1d6
> +			MX8MN_IOMUXC_NAND_CE3_B_USDHC3_DATA6		0x1d6
> +			MX8MN_IOMUXC_NAND_CLE_USDHC3_DATA7		0x1d6
> +			MX8MN_IOMUXC_NAND_CE1_B_USDHC3_STROBE		0x196
> +		>;
> +	};
> +
> +	pinctrl_wdog: wdoggrp {
> +		fsl,pins = <
> +			MX8MN_IOMUXC_GPIO1_IO02_WDOG1_WDOG_B		0xc6
> +		>;
> +	};
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
> +			at803x,led-act-blind-workaround;
> +			at803x,eee-disabled;
> +			at803x,vddio-1p8v;
> +		};
> +	};
> +};
> +
> +&uart2 { /* console */
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_uart2>;
> +	status = "okay";
> +};
> +
> +&usdhc2 {
> +	pinctrl-names = "default", "state_100mhz", "state_200mhz";
> +	pinctrl-0 = <&pinctrl_usdhc2>, <&pinctrl_usdhc2_gpio>;
> +	pinctrl-1 = <&pinctrl_usdhc2_100mhz>, <&pinctrl_usdhc2_gpio>;
> +	pinctrl-2 = <&pinctrl_usdhc2_200mhz>, <&pinctrl_usdhc2_gpio>;
> +	cd-gpios = <&gpio1 15 GPIO_ACTIVE_LOW>;
> +	bus-width = <4>;
> +	vmmc-supply = <&reg_usdhc2_vmmc>;
> +	status = "okay";
> +};
> +
> +&usdhc3 {
> +	pinctrl-names = "default", "state_100mhz", "state_200mhz";
> +	pinctrl-0 = <&pinctrl_usdhc3>;
> +	pinctrl-1 = <&pinctrl_usdhc3_100mhz>;
> +	pinctrl-2 = <&pinctrl_usdhc3_200mhz>;
> +	bus-width = <8>;
> +	non-removable;
> +	status = "okay";
> +};
> +
> +&wdog1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_wdog>;
> +	fsl,ext-reset-output;
> +	status = "okay";
> +};
> -- 
> 2.7.4
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
