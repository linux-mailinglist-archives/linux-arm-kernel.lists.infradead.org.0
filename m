Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A82CE147A4
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 11:31:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kEEpomiSt4uBV0kRQJXa1uXddTMXi17ZyCYbX4kyHdg=; b=NIQi7h/EWyVjed
	NuwpDeHqKmwS9AIf9ijaGr3ZXuQPTVn6P8/nC2V/XeTj8bHHn6tTLt67CoM7BQ/oC/4IMSG8QjZg0
	lGM9cEJ0is0fT1TOlR5XTT2cnsHwsRvGsGC85MKuYoZz53mztD8A6FYe9kfFUZGF+fSmL6LYArn+l
	40cSaR1lCzEqqCN7cZpQcyI8uU019ruxcsV6drqUYlRAByFyDMk8f7X3t69xBefijZjxJuBICcQ2U
	MVEnVN9ZqSWdLP+Bc6hOvxah4zYYz85tfBXjSVkQIAWHPyQzLeAxFTEayB3IQH/745gIrqvkZDxBP
	eR6iXkBUWm4PzbiVzcoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNZxq-0000hd-P4; Mon, 06 May 2019 09:31:14 +0000
Received: from mail-eopbgr10044.outbound.protection.outlook.com ([40.107.1.44]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNZxh-0000gc-12
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 09:31:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PC/cFJe9bWpyKSyWzsX3KnISGZwavHFLktEdHfdzFy4=;
 b=YEvhT10TjlpVE7KBnJVVWRk7QbZrPl6S/Zz3BytV5jwfWbZpF/dzvQOaO9EcVaasUpIEf6QEHv6XNC13JtUyMa3+8bLm9z3O64cW4U9r8YKRAnJljJv+M8tQaKxyqIZrpP2gTiRKRYZM7xyqG72AyDZG544YJe7DGqJhOvwqyCw=
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com (52.134.92.158) by
 AM0PR04MB4865.eurprd04.prod.outlook.com (20.176.215.158) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.12; Mon, 6 May 2019 09:31:00 +0000
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::c415:3cab:a042:2e13]) by AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::c415:3cab:a042:2e13%6]) with mapi id 15.20.1856.012; Mon, 6 May 2019
 09:31:00 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, "mturquette@baylibre.com"
 <mturquette@baylibre.com>, "sboyd@kernel.org" <sboyd@kernel.org>, Leonard
 Crestez <leonard.crestez@nxp.com>, Jacky Bai <ping.bai@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "linux-clk@vger.kernel.org"
 <linux-clk@vger.kernel.org>
Subject: RE: [PATCH 3/3] arm64: dts: imx8mm: add clock for GPIO node
Thread-Topic: [PATCH 3/3] arm64: dts: imx8mm: add clock for GPIO node
Thread-Index: AQHVA+yl5ZkIsxfnhUGvGrmTJZdnZaZd1OQg
Date: Mon, 6 May 2019 09:31:00 +0000
Message-ID: <AM0PR04MB4211EC52A3A2974BFD9A190380300@AM0PR04MB4211.eurprd04.prod.outlook.com>
References: <1557133994-5061-1-git-send-email-Anson.Huang@nxp.com>
 <1557133994-5061-3-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1557133994-5061-3-git-send-email-Anson.Huang@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 04cdd554-7920-4ad3-81aa-08d6d2058cf3
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4865; 
x-ms-traffictypediagnostic: AM0PR04MB4865:
x-microsoft-antispam-prvs: <AM0PR04MB4865C5F22AE6B4EDDD5C927080300@AM0PR04MB4865.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:923;
x-forefront-prvs: 0029F17A3F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(346002)(396003)(136003)(39860400002)(376002)(189003)(199004)(86362001)(478600001)(8676002)(110136005)(446003)(33656002)(256004)(2201001)(66066001)(81156014)(8936002)(5660300002)(6116002)(53936002)(81166006)(55016002)(68736007)(4326008)(71190400001)(2906002)(76176011)(99286004)(7696005)(6246003)(71200400001)(14454004)(186003)(6436002)(102836004)(53546011)(6506007)(229853002)(26005)(3846002)(9686003)(316002)(7736002)(11346002)(7416002)(52536014)(64756008)(66556008)(476003)(66476007)(66446008)(76116006)(2501003)(66946007)(74316002)(305945005)(73956011)(486006)(25786009)(44832011)(32563001)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4865;
 H:AM0PR04MB4211.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 1VUhdxw53eTrgiW6Tg4NytGueyyfdyQrZxoklCIhFzmxSbB96vXllNs8k7S+YjhOULQZZ3GSe0aapzvbXLn1A9yPF8x4Uvan2s7T1bBV3tuNlNOzqxbS0xNMuY2c4Rrv/ix+1dftccJfxRq8OA+ISKOVsqjr3gyDztMH77fTfcq9tdhfvaoVOvq50oXLdWaKvXBZEVSqbOatB31kevNDbPBYr4oxOBMlix/t/2xaw1iK8CbCDiqEYDXerdVcNnuU9AQ8BomjrD/ylWM4/c0WffkfQzZ2gljwB3tdw8oHg8zTyiE7dX1YbyIncYM+4dT5Qmb4Yrz+cMciEgU1T5Cv3an9CgUj5duUoCGACnNxOYXmA9/qF18wRavtIZWa9TrvfZ4gFRN4x+PATyOsxkMdIuSkNwmpb25UVawyTH5/X40=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 04cdd554-7920-4ad3-81aa-08d6d2058cf3
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 May 2019 09:31:00.0602 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4865
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_023105_067535_ACC4734F 
X-CRM114-Status: GOOD (  15.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.44 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Anson Huang
> Sent: Monday, May 6, 2019 5:18 PM
> Subject: [PATCH 3/3] arm64: dts: imx8mm: add clock for GPIO node
> 
> i.MX8MM has clock gate for each GPIO bank, add clock info to GPIO node for
> clock management.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>

Regards
Dong Aisheng

> ---
>  arch/arm64/boot/dts/freescale/imx8mm.dtsi | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> index 6b407a94..f32d4e9 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> @@ -206,6 +206,7 @@
>  				reg = <0x30200000 0x10000>;
>  				interrupts = <GIC_SPI 64 IRQ_TYPE_LEVEL_HIGH>,
>  					     <GIC_SPI 65 IRQ_TYPE_LEVEL_HIGH>;
> +				clocks = <&clk IMX8MM_CLK_GPIO1_ROOT>;
>  				gpio-controller;
>  				#gpio-cells = <2>;
>  				interrupt-controller;
> @@ -217,6 +218,7 @@
>  				reg = <0x30210000 0x10000>;
>  				interrupts = <GIC_SPI 66 IRQ_TYPE_LEVEL_HIGH>,
>  					     <GIC_SPI 67 IRQ_TYPE_LEVEL_HIGH>;
> +				clocks = <&clk IMX8MM_CLK_GPIO2_ROOT>;
>  				gpio-controller;
>  				#gpio-cells = <2>;
>  				interrupt-controller;
> @@ -228,6 +230,7 @@
>  				reg = <0x30220000 0x10000>;
>  				interrupts = <GIC_SPI 68 IRQ_TYPE_LEVEL_HIGH>,
>  					     <GIC_SPI 69 IRQ_TYPE_LEVEL_HIGH>;
> +				clocks = <&clk IMX8MM_CLK_GPIO3_ROOT>;
>  				gpio-controller;
>  				#gpio-cells = <2>;
>  				interrupt-controller;
> @@ -239,6 +242,7 @@
>  				reg = <0x30230000 0x10000>;
>  				interrupts = <GIC_SPI 70 IRQ_TYPE_LEVEL_HIGH>,
>  					     <GIC_SPI 71 IRQ_TYPE_LEVEL_HIGH>;
> +				clocks = <&clk IMX8MM_CLK_GPIO4_ROOT>;
>  				gpio-controller;
>  				#gpio-cells = <2>;
>  				interrupt-controller;
> @@ -250,6 +254,7 @@
>  				reg = <0x30240000 0x10000>;
>  				interrupts = <GIC_SPI 72 IRQ_TYPE_LEVEL_HIGH>,
>  					     <GIC_SPI 73 IRQ_TYPE_LEVEL_HIGH>;
> +				clocks = <&clk IMX8MM_CLK_GPIO5_ROOT>;
>  				gpio-controller;
>  				#gpio-cells = <2>;
>  				interrupt-controller;
> --
> 2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
