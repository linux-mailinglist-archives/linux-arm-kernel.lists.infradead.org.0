Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E4051DAAE6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 08:45:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wxikp98VAwe+OaT/TujxQAWiH2dlGZ+F5AnXShZQ5hQ=; b=oBB4IqFCiEFASu
	GEjR13X3Ta/61XlqzBVqmcVpBeFhw6i9xcN83UaDxwCtrS1NSDtcT2HYCQ+etYGeKNlMiCsj8uQvY
	LwW2/GgaMwX0X8YEcxw9l2LhQQcbmnKFWac4liH+Hxxn9v2WcU9bVM8nMxU+kpr7mUB8bNSnoyMdM
	96FX8oNHH+Fcrn1m3rPz9kb+ZDHe9FHXV3MSa2pMOSg7EhIaJKQYWLsY2P9AMkLpApXJxTxAZaKIL
	sif0PnoKKbjiftBnJiuJbrlNEJdbfsJmbFjHz2qma5Tk28V6Zv8R6iL3sPX0LknxdVRVrovERFPrq
	U53YizOSGMq9ObY/IyMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbITx-0002VE-IB; Wed, 20 May 2020 06:45:37 +0000
Received: from mail-am6eur05on2062.outbound.protection.outlook.com
 ([40.107.22.62] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbITp-0002UA-8Q
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 06:45:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZBtjl12e62L1geWq88ZI1P0gIJ2FW5C+btMyibjQpzRxJ8fbSaQDQcH4lxjWBTeBC74bLnOF9+bcukGFYEFwE/FXyLrN/Pjgf5DvGdApj62B1M1K8bwZTq47/LirEKHpEPk9siq8rlwy29Hp7x46mCxE1aDfByKwtCCO0MKFnQ6dxX+R+iApKieZPSl256IHZ9XkGCufwIlDndRCTjzH1dXKQR2drbnS6r1AfW5TDqfyMWbAc4FC7k0pYdsLfPYHMcCz4pWJsqTLsNERhIFkI7Y81hv4ApuNlHqfSwPW1bTEZQ+QOAveE47Rnsk1E+mUXiR5TTAFiavZyZ9YVG+m4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=75ad9pCRXdVxNnqjdVV5LqFltR5tPDqz8C0pN9TJnYM=;
 b=e3dHpD6tlrZfJLLA21rELJhtjHOrTytDaQTJgeSNBJ2EsheSe0AooQFRdXg0M+8T6rTaEoWrQNemRo3Dpgwt4Ny/EPfHBwRjLfvpY7abn3nDm0lq9QLd2N4fcA/t10b4EZ8L+zL+w+4sOjEfwYi+iNPShr9Gleb56761xE4FFayPCTIpGszZzylo95ErEibk3l8blLsbjVvZpcpogyJ4rY6BV/ktdwttw43klXcNK9pEEk1DOddSFY+f761/T5asS3XWsCOqGxBun0DmNBDiZNoaUkMZaxeLr44KzIiGCnlYq1MSpmgG6OhAXzXQ8fWaj3Jd4c4N3446rbtt+ypTcw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=75ad9pCRXdVxNnqjdVV5LqFltR5tPDqz8C0pN9TJnYM=;
 b=kf7tzvX798Tc/ppyeWHIUjUdDwV7MdVbVyWkgF8byf232JhXjl4aHFrEjZodW8hm+7q3sM/QrKRSbO7PtrzJXlb+Ch2ktOjpaPPgnRSKrtKd/dN5EsJD5cATImSv7neLRTnQK45y/jgW9wVLJ17NpxmhMePfuC9UHspD1ExlI3I=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB4918.eurprd04.prod.outlook.com (2603:10a6:20b:6::29) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.23; Wed, 20 May
 2020 06:45:23 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d%7]) with mapi id 15.20.3000.034; Wed, 20 May 2020
 06:45:23 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Peng Fan <peng.fan@nxp.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>, 
 Fabio Estevam <fabio.estevam@nxp.com>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "sboyd@kernel.org" <sboyd@kernel.org>
Subject: RE: [PATCH 1/3] arm64: dts: imx8m: add mu node
Thread-Topic: [PATCH 1/3] arm64: dts: imx8m: add mu node
Thread-Index: AQHWLkxsKIabieZfZk2PIUvIL0rSeqiwhwEw
Date: Wed, 20 May 2020 06:45:23 +0000
Message-ID: <AM6PR04MB4966A1E2252B7FDEA49C75E580B60@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <1589940278-3680-1-git-send-email-peng.fan@nxp.com>
 <1589940278-3680-2-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1589940278-3680-2-git-send-email-peng.fan@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 2a0466be-a07b-45ba-eed9-08d7fc895f4e
x-ms-traffictypediagnostic: AM6PR04MB4918:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB49189619153B36AA1F35381D80B60@AM6PR04MB4918.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:338;
x-forefront-prvs: 04097B7F7F
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: DqfvMhUujuOXdcGk1GmLSc62/V7Jx41gi1FoXXYJYV/odZ1t86+w6dyKuwt4TUMCG4dgQC3i9pU5eX1jxDxxw1eQiXjZUtAp5fxgv/o0Gt1Lo4qBh6Berk55tIwm7JtLEjCxMbrrQiZTHlAIt3oV1zq9z3nYZ0+tR9Smp2VNBXVpS3dfw+yX2QqTJM4F3s2QJHzEPoCMA7nhq2x7/WUM1v5QLVLMMJO9RYUk7t+KlDMYULniNWnycFvlEWXVawxyAoO9hhmTKvejClxRGfif7JO6tZ6TzGcg1aBYcc5esOkYm2siGb61HDWLDvkvw8i+lLRgExTZjUe15Z7SwOJV0zfAsAnYYKNjBPYwFtJPGk+zGRX9bpQcw0Oo9MyfUgnK
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(346002)(136003)(366004)(376002)(39860400002)(9686003)(55016002)(7696005)(33656002)(66476007)(64756008)(44832011)(6506007)(8676002)(66556008)(186003)(86362001)(26005)(8936002)(66946007)(4326008)(66446008)(76116006)(478600001)(71200400001)(52536014)(54906003)(110136005)(5660300002)(2906002)(316002)(32563001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: iCMNQFWfsA5h/oGo2LGiv2DLev6Yy0W/x0qXn458zitTggVv77AT7pt3OCpHsWu+7STnMPa/m8DJcTQc3FiYBlFu+g+fnzfuC+178tx95dlk/1u4GejYQIY2f3qzOe92LZ97TzHZyjVzWHOQY59/+WSWBjFhx9gKbCxPLa1+pBoKo/MWKvSLvOADPwTpmKksij/4n0cWD9t/QViOHWI6+qc7wa10GCb19JFrlIIK1RtQ+T0usR2fon3FWa405YVgTM6caFhYUU3+xXVJc6MAsqoWoYFDcgPLHKJ182qDi3Wi/UPq/1WOQiCsSHqmR6HBlHgRFsYJpeoUROsi2rErNU2uU+GKeqUrAVke7zxI0wqsvkO9bS2M3ckES4FXojFv5BEyNVmO0uD2gByIopmjgC84BA61VdfjtSyeaEqXE4HHTI6iaHyU0e6DEmkCZgqOAVtf28hD753JU7cV+kQzwfEvtVmI8G6eVbBpapq9au+k1J3NgO3Rrxo3g5ObVux6
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2a0466be-a07b-45ba-eed9-08d7fc895f4e
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 May 2020 06:45:23.4822 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DzO1+QbPgHoyixOzlGUsWBHsmQKIwMaXqiWgszLGbaHZaWzhThDVFRikJd8hhgPGqfgykAAMuM9JMiSDKWMnLQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB4918
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_234529_299851_17FCA324 
X-CRM114-Status: GOOD (  12.45  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.22.62 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.22.62 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, Leonard Crestez <leonard.crestez@nxp.com>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Peng Fan <peng.fan@nxp.com>
> Sent: Wednesday, May 20, 2020 10:05 AM
> 
> Add mu node to let A53 could communicate with M Core.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>  arch/arm64/boot/dts/freescale/imx8mm.dtsi | 9 +++++++++
> arch/arm64/boot/dts/freescale/imx8mn.dtsi | 9 +++++++++
> arch/arm64/boot/dts/freescale/imx8mq.dtsi | 9 +++++++++
>  3 files changed, 27 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> index f3bbefe3e59f..9722f76d8c3f 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> @@ -771,6 +771,15 @@
>  				status = "disabled";
>  			};
> 
> +			mu: mailbox@30aa0000 {
> +				compatible = "fsl,imx6sx-mu";

Usually we also add current SoC compatible string.
compatible = "fsl,imx8mm-mu", "fsl,imx6sx-mu"

> +				reg = <0x30aa0000 0x10000>;
> +				interrupts = <GIC_SPI 88 IRQ_TYPE_LEVEL_HIGH>;
> +				clocks = <&clk IMX8MM_CLK_MU_ROOT>;
> +				clock-names = "mu";

Undocumented property, drop it

> +				#mbox-cells = <2>;
> +			};
> +
>  			usdhc1: mmc@30b40000 {
>  				compatible = "fsl,imx8mm-usdhc", "fsl,imx7d-usdhc";
>  				reg = <0x30b40000 0x10000>;
> diff --git a/arch/arm64/boot/dts/freescale/imx8mn.dtsi
> b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
> index fb63a98fdff5..5f30f1d50460 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mn.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
> @@ -671,6 +671,15 @@
>  				status = "disabled";
>  			};
> 
> +			mu: mailbox@30aa0000 {
> +				compatible = "fsl,imx6sx-mu";
> +				reg = <0x30aa0000 0x10000>;
> +				interrupts = <GIC_SPI 88 IRQ_TYPE_LEVEL_HIGH>;
> +				clocks = <&clk IMX8MN_CLK_MU_ROOT>;
> +				clock-names = "mu";
> +				#mbox-cells = <2>;
> +			};
> +
>  			usdhc1: mmc@30b40000 {
>  				compatible = "fsl,imx8mn-usdhc", "fsl,imx7d-usdhc";
>  				reg = <0x30b40000 0x10000>;
> diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> index 1d15680a4962..e969fcbbd15f 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> @@ -956,6 +956,15 @@
>  				status = "disabled";
>  			};
> 
> +			mu: mailbox@30aa0000 {
> +				compatible = "fsl,imx6sx-mu";
> +				reg = <0x30aa0000 0x10000>;
> +				interrupts = <GIC_SPI 88 IRQ_TYPE_LEVEL_HIGH>;
> +				clocks = <&clk IMX8MQ_CLK_MU_ROOT>;
> +				clock-names = "mu";
> +				#mbox-cells = <2>;
> +			};
> +
>  			usdhc1: mmc@30b40000 {
>  				compatible = "fsl,imx8mq-usdhc",
>  				             "fsl,imx7d-usdhc";
> --
> 2.16.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
