Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79390D8647
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 05:18:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EAwg8bT0HOBYkq05Fp52oS94BRm/nVDrdbp/fUg4eow=; b=VAqnVON3RrqFBH
	5kQWwMpIcTQ2W9xxIRPaRQ+F3MsyUwPExBRuQ/aEemUuGJ4o5/mFXy8JWw0Z7sRzCiitLazzuiZ5M
	N9C1dG88XJ49HaqXu0d35v8f69B75ZZOWIjYVKe1qNl2KOq/zktvD67aurZUL6WgsV0B3GAfeWYsC
	OgCkcVfNqRXe/Qh1WLOdPVrL+0/2o0pv4TBAa7+a45IgHNnUFQWCJI4fGxEjGuYUpr+zdFiGHH1Bo
	pNt+ey5eXtI0K0E9prD608ETDSTRCMvF1y4oUpZo6GLRJUmz2e3cuSZZ1owDZp30d0oFt2CrDDR2E
	mWQo7oZJ9q530xQNxj6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKZpo-0000Za-2o; Wed, 16 Oct 2019 03:18:48 +0000
Received: from mail-eopbgr10049.outbound.protection.outlook.com ([40.107.1.49]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKZpd-0000YA-3s
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 03:18:39 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GWEiCsWj9PI1s9rxHNE8P6iyAu49rcskjGT9VFOIQxIK9guFIohml2mNCSNSvM2HDMTjgmzX1B/mU4VyswpJJb/OeqNWp8ZL5E9VAQhVXOrymCbCVtjrs6GQWi2a6pANPfrIJGIdKLWBxdhYmOM00Ysh++oCUz72rQihBX76Ex+4JJoAmkXChprHnNXQ1WDmEWQwxg5lvh27g//n4YgaH+WGfCnsIEcYgs/xreY6VedOUD47MeaO4Ejq2peEnNR7YMRzMHEU1qpx0my3JJsLiR3hVLU7E11AA+1ocCAc4z9UNNriciSQXzzSigcGkouJJC3PupGB8BlQqTZYFteQ6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NmLYANrqFxZL3C+XrkoYUbvGjX+mu/OJEWhTu+otjEM=;
 b=iBFuc7boTEHv18cSdk7BMO6/yhIslHdEJ0wvbC1v/L/m1Ngt5z76d/CzWTjAEviUTns7knVqqROUFa0x5tF7ClcUPhf+p1m9HhTC/y0thiLMyNLeB02ariWXl6UeuXsLOFU1dtSBAiy5IoanyZB7Gs47DYq27XD39b7YsVQ3tJNusTrWLCUEmTXfBgbbIsmdfhjzw43dBBJK6TTr03CPD1LNhybqa5LUk1k9b/bDCy28zqTdtN0dBK9fVH4G6385BZbJk9sWIGJN2YEryP5DuEaHll9rhaqxbrb6l9ESqqG5ZoSbtDxM5QcBD9CBRLs4R6gPgASLoMpj9VahufWveQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NmLYANrqFxZL3C+XrkoYUbvGjX+mu/OJEWhTu+otjEM=;
 b=PJ1EnvjNOfC3ONJXcB5j2X5CIlDD1d6lM/geXXdzqs8PMxLTPCcDdnqnNIuDYudpwc4IdFf3rW0ZB5QeDnY5EUW9zPDJvRZN6XXLm9y+3hzQMM3PelMuVy7Bg6eCyCL/hE+Tn/jzZCq7zmU/v8H7z/O6lfokd62U5eBU1GYQLts=
Received: from AM6PR04MB4936.eurprd04.prod.outlook.com (20.177.34.20) by
 AM6PR04MB5944.eurprd04.prod.outlook.com (20.178.86.24) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.18; Wed, 16 Oct 2019 03:18:29 +0000
Received: from AM6PR04MB4936.eurprd04.prod.outlook.com
 ([fe80::79b4:252:8bba:c88c]) by AM6PR04MB4936.eurprd04.prod.outlook.com
 ([fe80::79b4:252:8bba:c88c%6]) with mapi id 15.20.2347.023; Wed, 16 Oct 2019
 03:18:29 +0000
From: Fancy Fang <chen.fang@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "sboyd@kernel.org" <sboyd@kernel.org>, 
 "shawnguo@kernel.org" <shawnguo@kernel.org>
Subject: RE: [PATCH v3] clk: imx7ulp: do not export out IMX7ULP_CLK_MIPI_PLL
 clock
Thread-Topic: [PATCH v3] clk: imx7ulp: do not export out IMX7ULP_CLK_MIPI_PLL
 clock
Thread-Index: AQHVgwcPc0jqN29IB0OYPLGVX+dhGKdbCpHQgAGIAsA=
Date: Wed, 16 Oct 2019 03:18:29 +0000
Message-ID: <AM6PR04MB49363E4BD4B48384A372DAFEF3920@AM6PR04MB4936.eurprd04.prod.outlook.com>
References: <20191015031501.2703-1-chen.fang@nxp.com>
 <DB3PR0402MB3916869C2A91293F0600CF34F5930@DB3PR0402MB3916.eurprd04.prod.outlook.com>
In-Reply-To: <DB3PR0402MB3916869C2A91293F0600CF34F5930@DB3PR0402MB3916.eurprd04.prod.outlook.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=chen.fang@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4a6ef955-7191-49b5-f36d-08d751e7845b
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: AM6PR04MB5944:|AM6PR04MB5944:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB5944172B16D3A1AB9CB42BC6F3920@AM6PR04MB5944.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 0192E812EC
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(346002)(376002)(39860400002)(396003)(136003)(54534003)(13464003)(199004)(189003)(446003)(76116006)(66446008)(7736002)(66066001)(86362001)(305945005)(66946007)(11346002)(74316002)(71200400001)(71190400001)(64756008)(8676002)(8936002)(81166006)(2201001)(186003)(66556008)(81156014)(102836004)(486006)(26005)(476003)(2906002)(33656002)(66476007)(6116002)(7696005)(5660300002)(54906003)(110136005)(99286004)(53546011)(316002)(14454004)(76176011)(6506007)(256004)(3846002)(52536014)(14444005)(2501003)(229853002)(9686003)(25786009)(6246003)(55016002)(4326008)(6436002)(478600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR04MB5944;
 H:AM6PR04MB4936.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: x5E5TMq57FYk9QlKwnLQKDr2ylfn3ZHPfbkCE2bpL/Qkp23E3s4m60SlHV/q1f+vgWo4PTZdLleod48q7WNx6CWU5hKk7rj84OC8XCyllrgz9TLMt/ZsINtNeqBQtrlNLbcUBPhgeaeS4bE+HgVSlf2YpV2cXJUnMJVqz0gaP3/U5yHjqsw218N+R3QvaxOr8Me+dOK09V1EKTo1iEzY/G2HUcAclkE76/xDayuCQyl3oclGSPihr174cwtyMIIHWuz0uAELbN0ihwYnpSvRKThwls3c/DoNBxYe77cJdk/8dAvrXgH1ygo5s6lxA9CnJwRC/ahndad0sF5i42XE40fq+CgQs9yVgF1WwYqH8YkI8AYfBC6WC5ZHLYlzzo4wd3RicUe6JW92rudkNVvEstuL0Z1CywK3EZPbC+2d44c=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4a6ef955-7191-49b5-f36d-08d751e7845b
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Oct 2019 03:18:29.5428 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +51k2KPPtBcjiwAd64z3LPbV3NvXhSMK3fxHlhtlFjgmffTgfKQ4CGmrrXlrSRoVdOujqjl7FAxeuZVoJFwdcg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB5944
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_201837_164125_949097E0 
X-CRM114-Status: GOOD (  19.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.49 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Anson,

Please see my below comments.

Best regards,
Fancy Fang

-----Original Message-----
From: Anson Huang 
Sent: Tuesday, October 15, 2019 11:28 AM
To: Fancy Fang <chen.fang@nxp.com>; sboyd@kernel.org; shawnguo@kernel.org
Cc: linux-clk@vger.kernel.org; linux-arm-kernel@lists.infradead.org; linux-kernel@vger.kernel.org; mturquette@baylibre.com; s.hauer@pengutronix.de; kernel@pengutronix.de; dl-linux-imx <linux-imx@nxp.com>
Subject: RE: [PATCH v3] clk: imx7ulp: do not export out IMX7ULP_CLK_MIPI_PLL clock

Hi, Fancy

> Subject: [PATCH v3] clk: imx7ulp: do not export out 
> IMX7ULP_CLK_MIPI_PLL clock
> 
> The mipi pll clock comes from the MIPI PHY PLL output, so it should 
> not be a fixed clock.
> 
> MIPI PHY PLL is in the MIPI DSI space, and it is used as the bit clock 
> for transferring the pixel data out and its output clock is configured 
> according to the display mode.
> 
> So it should be used only for MIPI DSI and not be exported out for 
> other usages.
> 
> Signed-off-by: Fancy Fang <chen.fang@nxp.com>
> ---
> ChangeLog v2->v3:
>  * Keep 'IMX7ULP_CLK_MIPI_PLL' macro definition.
> 
> ChangeLog v1->v2:
>  * Keep other clock indexes unchanged as Shawn suggested.
> 
>  Documentation/devicetree/bindings/clock/imx7ulp-clock.txt | 1 -
>  drivers/clk/imx/clk-imx7ulp.c                             | 3 +--
>  2 files changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/clock/imx7ulp-clock.txt
> b/Documentation/devicetree/bindings/clock/imx7ulp-clock.txt
> index a4f8cd478f92..93d89adb7afe 100644
> --- a/Documentation/devicetree/bindings/clock/imx7ulp-clock.txt
> +++ b/Documentation/devicetree/bindings/clock/imx7ulp-clock.txt
> @@ -82,7 +82,6 @@ pcc2: pcc2@403f0000 {
>  		 <&scg1 IMX7ULP_CLK_APLL_PFD0>,
>  		 <&scg1 IMX7ULP_CLK_UPLL>,
>  		 <&scg1 IMX7ULP_CLK_SOSC_BUS_CLK>,
> -		 <&scg1 IMX7ULP_CLK_MIPI_PLL>,
>  		 <&scg1 IMX7ULP_CLK_FIRC_BUS_CLK>,
>  		 <&scg1 IMX7ULP_CLK_ROSC>,
>  		 <&scg1 IMX7ULP_CLK_SPLL_BUS_CLK>;
> diff --git a/drivers/clk/imx/clk-imx7ulp.c 
> b/drivers/clk/imx/clk-imx7ulp.c index 2022d9bead91..459b120b71d5 
> 100644
> --- a/drivers/clk/imx/clk-imx7ulp.c
> +++ b/drivers/clk/imx/clk-imx7ulp.c
> @@ -28,7 +28,7 @@ static const char * const scs_sels[]		=
> { "dummy", "sosc", "sirc", "firc", "dumm
>  static const char * const ddr_sels[]		= { "apll_pfd_sel", "upll", };
>  static const char * const nic_sels[]		= { "firc", "ddr_clk", };
>  static const char * const periph_plat_sels[]	= { "dummy", "nic1_bus_clk",
> "nic1_clk", "ddr_clk", "apll_pfd2", "apll_pfd1", "apll_pfd0", "upll", };
> -static const char * const periph_bus_sels[]	= { "dummy", "sosc_bus_clk",
> "mpll", "firc_bus_clk", "rosc", "nic1_bus_clk", "nic1_clk", 
> "spll_bus_clk", };
> +static const char * const periph_bus_sels[]	= { "dummy", "sosc_bus_clk",
> "dummy", "firc_bus_clk", "rosc", "nic1_bus_clk", "nic1_clk", 
> "spll_bus_clk", };

The reference manual does have mpll as clock option, so do you mean it will NOT be supported anymore, is mpll used inside MIPI PHY?

[FF] Yes. The mpll comes from the MIPI PHY PLL which is an internal PLL clock in MIPI space. And besides, this clock frequency can be changed or disabled dynamically when you change display mode or disable display. So it should not be used as other peripherals's root clock. This is why I want to hide this mpll from other peripherals to make things easier to be handled.

Anson

>  static const char * const arm_sels[]		= { "divcore", "dummy",
> "dummy", "hsrun_divcore", };
> 
>  /* used by sosc/sirc/firc/ddr/spll/apll dividers */ @@ -75,7 +75,6 @@ 
> static void __init imx7ulp_clk_scg1_init(struct device_node *np)
>  	clks[IMX7ULP_CLK_SOSC]		=
> imx_obtain_fixed_clk_hw(np, "sosc");
>  	clks[IMX7ULP_CLK_SIRC]		=
> imx_obtain_fixed_clk_hw(np, "sirc");
>  	clks[IMX7ULP_CLK_FIRC]		=
> imx_obtain_fixed_clk_hw(np, "firc");
> -	clks[IMX7ULP_CLK_MIPI_PLL]	= imx_obtain_fixed_clk_hw(np,
> "mpll");
>  	clks[IMX7ULP_CLK_UPLL]		=
> imx_obtain_fixed_clk_hw(np, "upll");
> 
>  	/* SCG1 */
> --
> 2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
