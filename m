Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92E43DDEE5
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 20 Oct 2019 16:36:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sp4PXMs7cvLZdUhtNR2Ovuwfvm6htV1qH45J3XURmOs=; b=GmtgCgWNZkYvw5
	vgCMy09b7SfSzdWYbPqT0tR8nEOzUEFelnQmAkc1H5W8wt4hqVFJwffHyvatxm+SKvCGg04xa79Kl
	nMugN502uCRT9JxRtiRykNgJt7LwJaFgF+CNQpAtb9tEneMvwiDOiLDXwhdeimjvGwiEKc/C8pFe3
	Pu2JWsE8+xNq18p9yuJY7kS/UKrLDt7iBJrwR4BNaq0kzyfEoLlNsJ8H2xOQVjEm8BD8gIcCAWZ1G
	L1GTz5ZeZNYrqo+U5jAI/g+zQ6sZ5J8g1CxnyECMAB93hLxGWF72aR6XghogKIWxpwEMNySfF++Fq
	UaNwuRvNXwI9Kh0cQmXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMCJV-0005Bb-F5; Sun, 20 Oct 2019 14:36:09 +0000
Received: from mail-eopbgr60072.outbound.protection.outlook.com ([40.107.6.72]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMCJD-0004fJ-7r
 for linux-arm-kernel@lists.infradead.org; Sun, 20 Oct 2019 14:35:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a/NRTe9QbYqtq+8ebXEIemLMFdeiJtPCKTuuFGQvaF3AO6NTi5T1AOUDpgeoIMsgpBXaWCwO2P0P943WvK6XJpkAGebl5dO0K9mRn4M6Ig4wWrCklnfBIAvE7HhDcjouZcPXww6Pwj5tcwoLnVhh2+phuvd+SIQYh59Q2xbxq18iyb+HHBTVBrAMrq7Fu1r9K+x3m/qcy9CTBowvJA6y4MGx7R1Qg6IvBP5TP9blXGPLxL7nhbetTw4cjPaWQUwaNoUSUqHaTmwE4C2zlnUJzKjICcW6za6oFiLNoz4dORkEakyeUFdsyTDSdUcacWPNKzi6NeYxociFeVM/u2x8xQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZunBzdSgqBn83vfFWhTnPpKuEPQF6jQl+q0Vn5Js/uo=;
 b=b/cmwZ1z+Wl6eNgBhv5m+bZ+XpztWFGocXSDD6BKhex0v0lp6IgHg+3wcw1SHvy4T95vdikx2YzLCvP/4McHuZ1Vl4JPcZ+5rSjGuHxoBtHyZUmLXHWCfBua7watEoJzThfdQB+j2T0AJX0eD/6cB3eakONDMrLpamt4hZYq3RH28OZD3rrRiaiFqm52+r1WE1oTlZYQtloUJOUQ3gvHOk5SWfFaUe+ffq26P1hUafD587Igsg6pdpK91VsBx+Qcpygvy//KeTsjdDcxebgYsLILi/gRr+PH020Seo30KSmTvLmpelWtHcE3smPUD8dbOGdLGfekqPsB0l33lT0vOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZunBzdSgqBn83vfFWhTnPpKuEPQF6jQl+q0Vn5Js/uo=;
 b=S5KHl+cRFBuMCen/Hht51k5T7zqT5LbG5DzrqNGmEPjOaqGKkVvPYmWw+FAnuPor5Kot2HoB7Z7IDMzppZitPBTUK6v5D99wWpBsaBchObAilvZpRc8UZBEoysOWZYXmNWW0KJ3PzW5bAPfcdSMmIcNgMnHBAePgQkXxqcMvLkQ=
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com (20.178.202.151) by
 AM0PR04MB4644.eurprd04.prod.outlook.com (52.135.149.138) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.16; Sun, 20 Oct 2019 14:35:47 +0000
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::4122:fda5:e903:8c02]) by AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::4122:fda5:e903:8c02%3]) with mapi id 15.20.2347.028; Sun, 20 Oct 2019
 14:35:47 +0000
From: Abel Vesa <abel.vesa@nxp.com>
To: Anson Huang <anson.huang@nxp.com>
Subject: Re: [PATCH 1/5] arm64: dts: imx8qxp: Move usdhc clocks assignment to
 board DT
Thread-Topic: [PATCH 1/5] arm64: dts: imx8qxp: Move usdhc clocks assignment to
 board DT
Thread-Index: AQHVg8fd9TcILJytHEmYMksBHN4gSadjn8CA
Date: Sun, 20 Oct 2019 14:35:46 +0000
Message-ID: <20191020143545.we56f4epnbgjr5lw@fsr-ub1664-175>
References: <1571192067-19600-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1571192067-19600-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM6P192CA0073.EURP192.PROD.OUTLOOK.COM
 (2603:10a6:209:8d::14) To AM0PR04MB5779.eurprd04.prod.outlook.com
 (2603:10a6:208:131::23)
x-originating-ip: [89.37.124.34]
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=abel.vesa@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 35bc6452-3df7-4ee2-39f1-08d7556acb9d
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: AM0PR04MB4644:|AM0PR04MB4644:|AM0PR04MB4644:
x-ld-processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB4644B26C226E1890CD2135CDF66E0@AM0PR04MB4644.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4502;
x-forefront-prvs: 0196A226D1
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(7916004)(4636009)(366004)(346002)(136003)(396003)(376002)(39860400002)(189003)(199004)(6246003)(25786009)(66946007)(6436002)(71200400001)(5660300002)(52116002)(76176011)(26005)(71190400001)(6862004)(6486002)(66476007)(66556008)(64756008)(66446008)(386003)(6506007)(53546011)(229853002)(6512007)(4326008)(9686003)(186003)(33716001)(66066001)(476003)(486006)(256004)(6636002)(2906002)(44832011)(54906003)(14444005)(14454004)(3846002)(6116002)(86362001)(102836004)(81156014)(81166006)(7736002)(11346002)(8676002)(446003)(305945005)(8936002)(99286004)(7416002)(478600001)(1076003)(316002)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4644;
 H:AM0PR04MB5779.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: LN4tolFxqJRH8nh5vr8WB+TS2sD8bkkBeDOL4Cb1t0GiHDhnS+5GcKISAYn3N83hUbyR/MALaoBYshwRyUlVM59seDb+E4jcJR2BRZB4gSoxhBuD8YvhuJWJq9/32gknscFvRl612iB+Qz+4TS6aLvtSsPoyY8Wue+VeSlaRak1ZClJawfi0/VjF2CVGLIzOLrHHXeyxh0KJHN5dqmC9mryiMn6D6RFO6rHdOCyPgY37VtoBBuUAbJl1CSHKOC2CSvqF5mOTJHnCjCmu1PVbc4GhqNhAs0iMDJyVNaRk5zz0ikoQRDxRpI90alwe2yjexpP0TxjI66olTvRTJPXrRLIDsR4cJST1zoC8WRd5uDCtCTjy9ZgegVXfeaxsZxx/MlS99yYVOi+ycbgFhDVpgUBu4oVpyBBkpDvY1Nm7EA4=
Content-ID: <DEBBB76B9937294C881230836D0D6976@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 35bc6452-3df7-4ee2-39f1-08d7556acb9d
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Oct 2019 14:35:46.9826 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: n7yG0oOLB3WuPSGrrzplBkEBZ4J03TgkvH3DDwgtxMjpY/9UwgaSQE2bRzPKArHpJU8yCrBvYLeMkJvCslnp1g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4644
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191020_073551_303439_AD793F74 
X-CRM114-Status: GOOD (  13.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.72 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "baruch@tkos.co.il" <baruch@tkos.co.il>,
 "dafna.hirschfeld@collabora.com" <dafna.hirschfeld@collabora.com>,
 Jacky Bai <ping.bai@nxp.com>, "ccaione@baylibre.com" <ccaione@baylibre.com>,
 "agx@sigxcpu.org" <agx@sigxcpu.org>, "angus@akkea.ca" <angus@akkea.ca>,
 Peng Fan <peng.fan@nxp.com>, Gary Bisson <gary.bisson@boundarydevices.com>,
 "pavel@ucw.cz" <pavel@ucw.cz>,
 "manivannan.sadhasivam@linaro.org" <manivannan.sadhasivam@linaro.org>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 Richard Hu <richard.hu@technexion.com>,
 "andrew.smirnov@gmail.com" <andrew.smirnov@gmail.com>,
 "daniel.lezcano@linaro.org" <daniel.lezcano@linaro.org>,
 "jon@solid-run.com" <jon@solid-run.com>, dl-linux-imx <linux-imx@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "andradanciu1997@gmail.com" <andradanciu1997@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 Troy Kisky <troy.kisky@boundarydevices.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Aisheng Dong <aisheng.dong@nxp.com>, Andy Duan <fugang.duan@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>, Jun Li <jun.li@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19-10-16 10:14:23, Anson Huang wrote:
> usdhc's clock rate is different according to different devices
> connected, so clock rate assignment should be placed in board
> DT according to different devices connected on each usdhc port.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

For the entire patchset:

Reviewed-by: Abel Vesa <abel.vesa@nxp.com>

> ---
>  arch/arm64/boot/dts/freescale/imx8qxp-ai_ml.dts | 4 ++++
>  arch/arm64/boot/dts/freescale/imx8qxp-mek.dts   | 4 ++++
>  arch/arm64/boot/dts/freescale/imx8qxp.dtsi      | 6 ------
>  3 files changed, 8 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8qxp-ai_ml.dts b/arch/arm64/boot/dts/freescale/imx8qxp-ai_ml.dts
> index 91eef97..a3f8cf1 100644
> --- a/arch/arm64/boot/dts/freescale/imx8qxp-ai_ml.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8qxp-ai_ml.dts
> @@ -133,6 +133,8 @@
>  &usdhc1 {
>  	#address-cells = <1>;
>  	#size-cells = <0>;
> +	assigned-clocks = <&clk IMX_CONN_SDHC0_CLK>;
> +	assigned-clock-rates = <200000000>;
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pinctrl_usdhc1>;
>  	bus-width = <4>;
> @@ -149,6 +151,8 @@
>  
>  /* SD */
>  &usdhc2 {
> +	assigned-clocks = <&clk IMX_CONN_SDHC1_CLK>;
> +	assigned-clock-rates = <200000000>;
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pinctrl_usdhc2>;
>  	bus-width = <4>;
> diff --git a/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts b/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
> index 88dd9132..d3d26cc 100644
> --- a/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
> @@ -137,6 +137,8 @@
>  };
>  
>  &usdhc1 {
> +	assigned-clocks = <&clk IMX_CONN_SDHC0_CLK>;
> +	assigned-clock-rates = <200000000>;
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pinctrl_usdhc1>;
>  	bus-width = <8>;
> @@ -147,6 +149,8 @@
>  };
>  
>  &usdhc2 {
> +	assigned-clocks = <&clk IMX_CONN_SDHC1_CLK>;
> +	assigned-clock-rates = <200000000>;
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pinctrl_usdhc2>;
>  	bus-width = <4>;
> diff --git a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
> index 2d69f1a..9646a41 100644
> --- a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
> @@ -368,8 +368,6 @@
>  				 <&conn_lpcg IMX_CONN_LPCG_SDHC0_PER_CLK>,
>  				 <&conn_lpcg IMX_CONN_LPCG_SDHC0_HCLK>;
>  			clock-names = "ipg", "per", "ahb";
> -			assigned-clocks = <&clk IMX_CONN_SDHC0_CLK>;
> -			assigned-clock-rates = <200000000>;
>  			power-domains = <&pd IMX_SC_R_SDHC_0>;
>  			status = "disabled";
>  		};
> @@ -383,8 +381,6 @@
>  				 <&conn_lpcg IMX_CONN_LPCG_SDHC1_PER_CLK>,
>  				 <&conn_lpcg IMX_CONN_LPCG_SDHC1_HCLK>;
>  			clock-names = "ipg", "per", "ahb";
> -			assigned-clocks = <&clk IMX_CONN_SDHC1_CLK>;
> -			assigned-clock-rates = <200000000>;
>  			power-domains = <&pd IMX_SC_R_SDHC_1>;
>  			fsl,tuning-start-tap = <20>;
>  			fsl,tuning-step= <2>;
> @@ -400,8 +396,6 @@
>  				 <&conn_lpcg IMX_CONN_LPCG_SDHC2_PER_CLK>,
>  				 <&conn_lpcg IMX_CONN_LPCG_SDHC2_HCLK>;
>  			clock-names = "ipg", "per", "ahb";
> -			assigned-clocks = <&clk IMX_CONN_SDHC2_CLK>;
> -			assigned-clock-rates = <200000000>;
>  			power-domains = <&pd IMX_SC_R_SDHC_2>;
>  			status = "disabled";
>  		};
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
