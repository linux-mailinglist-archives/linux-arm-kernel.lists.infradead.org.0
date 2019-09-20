Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C5D1B88E7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Sep 2019 03:28:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fjK9IoOXEKEjQFHjyOYcI+O8AAYeQjq7RHLj6U9rXNA=; b=nLNON/XzOjh6l0
	lOofKImjvnYmCzGS1Cy0w/AsYzbKU+TPjjPLH8vE/B5CY6gyG/0KzgHMVjaDd8J5b6QPUXMBAmgDc
	lsBaQ9SBT5rxd8I9e9bZ93eYM9AHntGqKy45TErOE/7dVuxF5L9H8vgHUAR/fsOUH68Ly/kTXmYh3
	ERnd446hrsHtHUy5JBxTQ92WqNFqNASmNH17h2h5GZg0BLpMF+6Ql5fBXoBp+edjvUA40bSOGSqFB
	Q7R4+I0n2KGWCYNB/3voVyTCSO1yv7j88FYPXz2fDAHfqCjf5hBsmvyk7Coa3KPUb148CVAB78s5+
	JNf8NXWH7Fc56SndCIJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iB7iJ-000386-Iz; Fri, 20 Sep 2019 01:27:59 +0000
Received: from mail-eopbgr30084.outbound.protection.outlook.com ([40.107.3.84]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iB7i3-00037d-26
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Sep 2019 01:27:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ixm6+sQ7MWz52zmdgY+XSZU3DNn4wP5g6FM2E6CIC82AqADe2zsULqQB9X3mMkI8XN8XcEVcEan7/oDD/lnSTfWWg7A1HiZF0NvG9QIorfNGS3iQZPEjwz62ZIDWGQXQJblfEt2xJWuPoBRkAxSqRZprNWPZyblX5ACNFk6oqLM4bIIZRu5sqR2rwTfWHyJrcPjUs2AX1AaLUkjxlLyfxpZBAYW8Hsn404HxhLzjApZNSBtaxQ8RgfqogC6VUT+X1rdCtLrqB+beLoGvsgRfZYR5k0+RwCGP46d01KJ8XNIInZOzyiEu8F04SUNuGVuMqDOMeY+1ORgVLxrh683zaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Jm/e8BWYbaakSiv0nI/qoiAA4LGDTRPPc2rPvDrglE4=;
 b=EeRLGo/S6aKvcdw9DbO2JCGI/1bBT5Bma3V0hF4VfOTuCakBJmFhxu+HZ2rbVlz9OJSVzJ/mpg+YRKgZbKEWheawds3r8GwDcmhSv8Ah/e2EbKr7Q6asRofwYOIUX7JMx3nov1fA1tDPwMS0dBh8FdcFiZk2pAoHJylVA0H8BFO5BQmf/8+5NsI+AuipmFuHLex26K98IjQb1+NfZZj3AjYwBUzSExltyvMmNRqfJU0hbaKfC3TUw+YoxP9PbmJcq95GqBXW6GobF7aZ2vhLlTq7ZMZjCddG6BLK1MsqURYcEQQUYNpMzq3ROgsc6wUFQJ0OS5bXG1OWralefDUn4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Jm/e8BWYbaakSiv0nI/qoiAA4LGDTRPPc2rPvDrglE4=;
 b=r5/pLq5nbbuXw8SZf0eUaGRKbk2YeE2QFtEFbm4SC+9zw85b53HlXurDUgPI+WMD6uQSBUI/EislqgV5LqjfkgB7WyPCdh8ew3BtQkO7AWP5j7sqsZDxmcWCPFlraXk6Aq/Tw661iRZZ5Ws9+Jgu7lVb9uk9Zg7nM3NeR/mhRP8=
Received: from AM6PR0402MB3911.eurprd04.prod.outlook.com (52.133.30.10) by
 AM6PR0402MB3781.eurprd04.prod.outlook.com (52.133.31.158) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.20; Fri, 20 Sep 2019 01:27:39 +0000
Received: from AM6PR0402MB3911.eurprd04.prod.outlook.com
 ([fe80::c9d3:4e41:12b7:892]) by AM6PR0402MB3911.eurprd04.prod.outlook.com
 ([fe80::c9d3:4e41:12b7:892%5]) with mapi id 15.20.2263.028; Fri, 20 Sep 2019
 01:27:39 +0000
From: Anson Huang <anson.huang@nxp.com>
To: "mturquette@baylibre.com" <mturquette@baylibre.com>, "sboyd@kernel.org"
 <sboyd@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>, Leonard
 Crestez <leonard.crestez@nxp.com>, Abel Vesa <abel.vesa@nxp.com>, Peng Fan
 <peng.fan@nxp.com>, Jacky Bai <ping.bai@nxp.com>, Fancy Fang
 <chen.fang@nxp.com>, "S.j. Wang" <shengjiu.wang@nxp.com>, Aisheng Dong
 <aisheng.dong@nxp.com>, "sfr@canb.auug.org.au" <sfr@canb.auug.org.au>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH V2 1/2] clk: imx8mm: Move 1443X/1416X PLL clock structure
 to common place
Thread-Topic: [PATCH V2 1/2] clk: imx8mm: Move 1443X/1416X PLL clock structure
 to common place
Thread-Index: AQHVZFNW/AzrPiFrqE2enE9kqlDwJacz3GzQ
Date: Fri, 20 Sep 2019 01:27:39 +0000
Message-ID: <AM6PR0402MB39110BCD655C354F8A295621F5880@AM6PR0402MB3911.eurprd04.prod.outlook.com>
References: <1567776846-6373-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1567776846-6373-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 103e9efb-00b3-40ea-8b9a-08d73d69ba01
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:AM6PR0402MB3781; 
x-ms-traffictypediagnostic: AM6PR0402MB3781:|AM6PR0402MB3781:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR0402MB3781540ABA00126F0FED9538F5880@AM6PR0402MB3781.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2201;
x-forefront-prvs: 0166B75B74
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(396003)(39860400002)(136003)(366004)(376002)(189003)(199004)(76176011)(66946007)(305945005)(55016002)(26005)(2501003)(52536014)(74316002)(66476007)(7696005)(4326008)(446003)(11346002)(25786009)(476003)(486006)(14454004)(44832011)(6116002)(3846002)(86362001)(2906002)(316002)(7736002)(2201001)(71200400001)(256004)(186003)(71190400001)(9686003)(478600001)(102836004)(7416002)(76116006)(6506007)(33656002)(81156014)(99286004)(5660300002)(66446008)(66556008)(64756008)(8936002)(6246003)(81166006)(8676002)(110136005)(229853002)(6436002)(66066001)(32563001)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR0402MB3781;
 H:AM6PR0402MB3911.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: owoABFiEvnPm+wdjmTJo6kKYSTkLxxQ4PHzHhqbLLvhMGHpwsKY6QQIRtFwUbF5jn1mOUtFlwTrR2Jvlp9AUjGSLw+rEvr45XVaQzjJ76bxhwMGRFWCjyFcWa1yFEcQmfNfr0DZ0m4hsck6l3oIiDkz7XxJtBJJZDA1PMT9FDumzL7WbymQ+E6WZebVTK+CEPchIvk1lQoI1TjSRb7KYDey3iSVRx9979PV3vJ4QC9SwWtOG4mOe4z3LANoYVg8h5b9OKrF+RYAVwcmeTBLtdZLIw2MLO0nB/oCih4Y0R3VVSlvzXJlQp+IgcxzxMKDP3kIXfUaE/Be/4C9PNU573AvJHP3VvYNQZqnUthCoeudMf1mmGWK4rPn683OXsJ8ek6RJHPKaZ1wXh4P2xr593/EYb+eZ8vDaIaYU+BunXn0=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 103e9efb-00b3-40ea-8b9a-08d73d69ba01
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Sep 2019 01:27:39.6399 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QXXdqxlsgSuV0D1f0shed9Ht3Kjgh/FDg69EivK5M1+y3u8XuVlVSsPPiY59lIsVlrmVEO+btXsOvLvwegH31A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0402MB3781
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_182743_396479_18120652 
X-CRM114-Status: GOOD (  15.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.84 listed in list.dnswl.org]
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Gentle ping...

> Subject: [PATCH V2 1/2] clk: imx8mm: Move 1443X/1416X PLL clock structure
> to common place
> 
> Many i.MX8M SoCs use same 1443X/1416X PLL, such as i.MX8MM, i.MX8MN
> and later i.MX8M SoCs, moving these PLL definitions to pll14xx driver can
> save a lot of duplicated code on each platform.
> 
> Meanwhile, no need to define PLL clock structure for every module which
> uses same type of PLL, e.g., audio/video/dram use 1443X PLL,
> arm/gpu/vpu/sys use 1416X PLL, define 2 PLL clock structure for each group
> is enough.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> Changes since V1:
> 	- Move 1443X/1416X PLL clock table/structure to pll14xx driver.
> ---
>  drivers/clk/imx/clk-imx8mm.c  | 87 +++++--------------------------------------
>  drivers/clk/imx/clk-pll14xx.c | 30 +++++++++++++++
>  drivers/clk/imx/clk.h         |  3 ++
>  3 files changed, 43 insertions(+), 77 deletions(-)
> 
> diff --git a/drivers/clk/imx/clk-imx8mm.c b/drivers/clk/imx/clk-imx8mm.c
> index 2758e3f..9649250 100644
> --- a/drivers/clk/imx/clk-imx8mm.c
> +++ b/drivers/clk/imx/clk-imx8mm.c
> @@ -26,73 +26,6 @@ static u32 share_count_disp;  static u32
> share_count_pdm;  static u32 share_count_nand;
> 
> -static const struct imx_pll14xx_rate_table imx8mm_pll1416x_tbl[] = {
> -	PLL_1416X_RATE(1800000000U, 225, 3, 0),
> -	PLL_1416X_RATE(1600000000U, 200, 3, 0),
> -	PLL_1416X_RATE(1200000000U, 300, 3, 1),
> -	PLL_1416X_RATE(1000000000U, 250, 3, 1),
> -	PLL_1416X_RATE(800000000U,  200, 3, 1),
> -	PLL_1416X_RATE(750000000U,  250, 2, 2),
> -	PLL_1416X_RATE(700000000U,  350, 3, 2),
> -	PLL_1416X_RATE(600000000U,  300, 3, 2),
> -};
> -
> -static const struct imx_pll14xx_rate_table imx8mm_audiopll_tbl[] = {
> -	PLL_1443X_RATE(393216000U, 262, 2, 3, 9437),
> -	PLL_1443X_RATE(361267200U, 361, 3, 3, 17511),
> -};
> -
> -static const struct imx_pll14xx_rate_table imx8mm_videopll_tbl[] = {
> -	PLL_1443X_RATE(650000000U, 325, 3, 2, 0),
> -	PLL_1443X_RATE(594000000U, 198, 2, 2, 0),
> -};
> -
> -static const struct imx_pll14xx_rate_table imx8mm_drampll_tbl[] = {
> -	PLL_1443X_RATE(650000000U, 325, 3, 2, 0),
> -};
> -
> -static struct imx_pll14xx_clk imx8mm_audio_pll = {
> -		.type = PLL_1443X,
> -		.rate_table = imx8mm_audiopll_tbl,
> -		.rate_count = ARRAY_SIZE(imx8mm_audiopll_tbl),
> -};
> -
> -static struct imx_pll14xx_clk imx8mm_video_pll = {
> -		.type = PLL_1443X,
> -		.rate_table = imx8mm_videopll_tbl,
> -		.rate_count = ARRAY_SIZE(imx8mm_videopll_tbl),
> -};
> -
> -static struct imx_pll14xx_clk imx8mm_dram_pll = {
> -		.type = PLL_1443X,
> -		.rate_table = imx8mm_drampll_tbl,
> -		.rate_count = ARRAY_SIZE(imx8mm_drampll_tbl),
> -};
> -
> -static struct imx_pll14xx_clk imx8mm_arm_pll = {
> -		.type = PLL_1416X,
> -		.rate_table = imx8mm_pll1416x_tbl,
> -		.rate_count = ARRAY_SIZE(imx8mm_pll1416x_tbl),
> -};
> -
> -static struct imx_pll14xx_clk imx8mm_gpu_pll = {
> -		.type = PLL_1416X,
> -		.rate_table = imx8mm_pll1416x_tbl,
> -		.rate_count = ARRAY_SIZE(imx8mm_pll1416x_tbl),
> -};
> -
> -static struct imx_pll14xx_clk imx8mm_vpu_pll = {
> -		.type = PLL_1416X,
> -		.rate_table = imx8mm_pll1416x_tbl,
> -		.rate_count = ARRAY_SIZE(imx8mm_pll1416x_tbl),
> -};
> -
> -static struct imx_pll14xx_clk imx8mm_sys_pll = {
> -		.type = PLL_1416X,
> -		.rate_table = imx8mm_pll1416x_tbl,
> -		.rate_count = ARRAY_SIZE(imx8mm_pll1416x_tbl),
> -};
> -
>  static const char *pll_ref_sels[] = { "osc_24m", "dummy", "dummy",
> "dummy", };  static const char *audio_pll1_bypass_sels[] = {"audio_pll1",
> "audio_pll1_ref_sel", };  static const char *audio_pll2_bypass_sels[] =
> {"audio_pll2", "audio_pll2_ref_sel", }; @@ -396,16 +329,16 @@ static int
> imx8mm_clocks_probe(struct platform_device *pdev)
>  	clks[IMX8MM_SYS_PLL2_REF_SEL] = imx_clk_mux("sys_pll2_ref_sel",
> base + 0x104, 0, 2, pll_ref_sels, ARRAY_SIZE(pll_ref_sels));
>  	clks[IMX8MM_SYS_PLL3_REF_SEL] = imx_clk_mux("sys_pll3_ref_sel",
> base + 0x114, 0, 2, pll_ref_sels, ARRAY_SIZE(pll_ref_sels));
> 
> -	clks[IMX8MM_AUDIO_PLL1] = imx_clk_pll14xx("audio_pll1",
> "audio_pll1_ref_sel", base, &imx8mm_audio_pll);
> -	clks[IMX8MM_AUDIO_PLL2] = imx_clk_pll14xx("audio_pll2",
> "audio_pll2_ref_sel", base + 0x14, &imx8mm_audio_pll);
> -	clks[IMX8MM_VIDEO_PLL1] = imx_clk_pll14xx("video_pll1",
> "video_pll1_ref_sel", base + 0x28, &imx8mm_video_pll);
> -	clks[IMX8MM_DRAM_PLL] = imx_clk_pll14xx("dram_pll",
> "dram_pll_ref_sel", base + 0x50, &imx8mm_dram_pll);
> -	clks[IMX8MM_GPU_PLL] = imx_clk_pll14xx("gpu_pll",
> "gpu_pll_ref_sel", base + 0x64, &imx8mm_gpu_pll);
> -	clks[IMX8MM_VPU_PLL] = imx_clk_pll14xx("vpu_pll",
> "vpu_pll_ref_sel", base + 0x74, &imx8mm_vpu_pll);
> -	clks[IMX8MM_ARM_PLL] = imx_clk_pll14xx("arm_pll",
> "arm_pll_ref_sel", base + 0x84, &imx8mm_arm_pll);
> -	clks[IMX8MM_SYS_PLL1] = imx_clk_pll14xx("sys_pll1",
> "sys_pll1_ref_sel", base + 0x94, &imx8mm_sys_pll);
> -	clks[IMX8MM_SYS_PLL2] = imx_clk_pll14xx("sys_pll2",
> "sys_pll2_ref_sel", base + 0x104, &imx8mm_sys_pll);
> -	clks[IMX8MM_SYS_PLL3] = imx_clk_pll14xx("sys_pll3",
> "sys_pll3_ref_sel", base + 0x114, &imx8mm_sys_pll);
> +	clks[IMX8MM_AUDIO_PLL1] = imx_clk_pll14xx("audio_pll1",
> "audio_pll1_ref_sel", base, &imx_1443x_pll);
> +	clks[IMX8MM_AUDIO_PLL2] = imx_clk_pll14xx("audio_pll2",
> "audio_pll2_ref_sel", base + 0x14, &imx_1443x_pll);
> +	clks[IMX8MM_VIDEO_PLL1] = imx_clk_pll14xx("video_pll1",
> "video_pll1_ref_sel", base + 0x28, &imx_1443x_pll);
> +	clks[IMX8MM_DRAM_PLL] = imx_clk_pll14xx("dram_pll",
> "dram_pll_ref_sel", base + 0x50, &imx_1443x_pll);
> +	clks[IMX8MM_GPU_PLL] = imx_clk_pll14xx("gpu_pll",
> "gpu_pll_ref_sel", base + 0x64, &imx_1416x_pll);
> +	clks[IMX8MM_VPU_PLL] = imx_clk_pll14xx("vpu_pll",
> "vpu_pll_ref_sel", base + 0x74, &imx_1416x_pll);
> +	clks[IMX8MM_ARM_PLL] = imx_clk_pll14xx("arm_pll",
> "arm_pll_ref_sel", base + 0x84, &imx_1416x_pll);
> +	clks[IMX8MM_SYS_PLL1] = imx_clk_pll14xx("sys_pll1",
> "sys_pll1_ref_sel", base + 0x94, &imx_1416x_pll);
> +	clks[IMX8MM_SYS_PLL2] = imx_clk_pll14xx("sys_pll2",
> "sys_pll2_ref_sel", base + 0x104, &imx_1416x_pll);
> +	clks[IMX8MM_SYS_PLL3] = imx_clk_pll14xx("sys_pll3",
> +"sys_pll3_ref_sel", base + 0x114, &imx_1416x_pll);
> 
>  	/* PLL bypass out */
>  	clks[IMX8MM_AUDIO_PLL1_BYPASS] =
> imx_clk_mux_flags("audio_pll1_bypass", base, 4, 1, audio_pll1_bypass_sels,
> ARRAY_SIZE(audio_pll1_bypass_sels), CLK_SET_RATE_PARENT); diff --git
> a/drivers/clk/imx/clk-pll14xx.c b/drivers/clk/imx/clk-pll14xx.c index
> b721302..4a61743 100644
> --- a/drivers/clk/imx/clk-pll14xx.c
> +++ b/drivers/clk/imx/clk-pll14xx.c
> @@ -41,6 +41,36 @@ struct clk_pll14xx {
> 
>  #define to_clk_pll14xx(_hw) container_of(_hw, struct clk_pll14xx, hw)
> 
> +const struct imx_pll14xx_rate_table imx_pll1416x_tbl[] = {
> +	PLL_1416X_RATE(1800000000U, 225, 3, 0),
> +	PLL_1416X_RATE(1600000000U, 200, 3, 0),
> +	PLL_1416X_RATE(1200000000U, 300, 3, 1),
> +	PLL_1416X_RATE(1000000000U, 250, 3, 1),
> +	PLL_1416X_RATE(800000000U,  200, 3, 1),
> +	PLL_1416X_RATE(750000000U,  250, 2, 2),
> +	PLL_1416X_RATE(700000000U,  350, 3, 2),
> +	PLL_1416X_RATE(600000000U,  300, 3, 2), };
> +
> +const struct imx_pll14xx_rate_table imx_pll1443x_tbl[] = {
> +	PLL_1443X_RATE(650000000U, 325, 3, 2, 0),
> +	PLL_1443X_RATE(594000000U, 198, 2, 2, 0),
> +	PLL_1443X_RATE(393216000U, 262, 2, 3, 9437),
> +	PLL_1443X_RATE(361267200U, 361, 3, 3, 17511), };
> +
> +struct imx_pll14xx_clk imx_1443x_pll = {
> +	.type = PLL_1443X,
> +	.rate_table = imx_pll1443x_tbl,
> +	.rate_count = ARRAY_SIZE(imx_pll1443x_tbl), };
> +
> +struct imx_pll14xx_clk imx_1416x_pll = {
> +	.type = PLL_1416X,
> +	.rate_table = imx_pll1416x_tbl,
> +	.rate_count = ARRAY_SIZE(imx_pll1416x_tbl), };
> +
>  static const struct imx_pll14xx_rate_table *imx_get_pll_settings(
>  		struct clk_pll14xx *pll, unsigned long rate)  { diff --git
> a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h index f7a389a..bc5bb6a
> 100644
> --- a/drivers/clk/imx/clk.h
> +++ b/drivers/clk/imx/clk.h
> @@ -50,6 +50,9 @@ struct imx_pll14xx_clk {
>  	int flags;
>  };
> 
> +extern struct imx_pll14xx_clk imx_1416x_pll; extern struct
> +imx_pll14xx_clk imx_1443x_pll;
> +
>  #define imx_clk_cpu(name, parent_name, div, mux, pll, step) \
>  	imx_clk_hw_cpu(name, parent_name, div, mux, pll, step)->clk
> 
> --
> 2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
