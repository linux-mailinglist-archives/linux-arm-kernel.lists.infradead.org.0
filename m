Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F1E0AAFFB
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 03:04:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I95nPjLKK54X4JtuBwctj5fWyJctRYgWenV+wrPb7fE=; b=pKXpZnvv/OQDZO
	UspKAiAo8bM0VfXn8bddurzuqjtkBhuLXTkaf3HugVTVm4Rk1s84ZkNmYY/AAvbG+jEf8UTaouXOW
	GyL1zSHrJP7mPRVIJB+iXJgzn4RJbX3y0JPpjIVl96lahVZhdODlZ1JkYXviInACjc2mHO/UI4M/e
	QdRCoDJyPU5+Iyr4dmzXgemfp1Fe4dwEC79bRkG0vJM9Xqp+dv7bM0dglX34AwCC1py81/Mnf5gSJ
	m7NVvLQUQFHCyY7LOYpiG7ok0jJnTNwdJuV9N7uKDxgHU8dazu/xD1kYysuVNy7dfUzDChsKJAuRp
	IopFTF/VQgAIbHfyhpSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i62fh-000564-LN; Fri, 06 Sep 2019 01:04:17 +0000
Received: from mail-eopbgr140047.outbound.protection.outlook.com
 ([40.107.14.47] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i62fa-00055Z-8i
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 01:04:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lAPn13ZKT43ynf5J9FLWBpnfCYgvfMPLSwend5fooxmshlY5tWvbizg6YNagS0asJxxO8EqMCvX2mX0yWS6uagx7V1KL2WZ3YCapPZuvvw8PBuhsgX2dzfoS8kVDvETWRrJocw16a4Evecz6uKkv+RI8x36S6mfKT33K9fAVW5puouOpfKc0c7EApLOd8c1dQjwo5KTmwnb/qVRSmyiQvGq4gxc+RJ7VlUrEZMd1C2cmc9wda4nBcSIojviYoviwk3BRRySUXn/DNiT4B56CZgsv+kU7fui2xSe1aMlQE5nM0uOJFhVu1i7Ne5jL8mp235Awh0avyy2GRiwH6h0nHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=udYJCCRSp7KblBxA7rBcq2S46lq18WDU8pY8F6vN3lw=;
 b=THFg8m8Zd/2VZ+hk5CcZuBEFxFvJhTA+nb6dq9cgxy4FG+0V/LMq8YMgrBmD1rq6qXvM9KPbjH4zvasyaOZVg54yuyyCP2qJZ1A/b8Zy2LwLppoD9+rrtUME7KfOTj/3TCPXcx0qndUh8yjO8/iNAnGMF94MXDw77CHucTjfJk+b1DI3fslrdlul3xp9QNg26efZB/9QE2LNrpbkC4qkWtP0rGBAi6KpCZGgVNOhLmMSWgtzu4ooGSnLEF+HkosnTNKRe9xGOvuZcHVCQldD+y+vT3YvzETVShyeIpl35cnOUL+/PT3ogsLNFU/PBUbmUoEziNheKKfmhdVaVLUhVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=udYJCCRSp7KblBxA7rBcq2S46lq18WDU8pY8F6vN3lw=;
 b=j0GsJfC+KTGrvSg9T7ocjOxxOT/55jOMW7XLX+L8F59rvKJ4kgt5A9VV+gyIB1ktCOKO/Ty9bgC5KizcvE5jNiEdKL2Rig7hXaNz/P59CzhlpzrSelcxV6gHg99iWVMrUUOME1IvGs/EURbZoeDWYuKclVKsaS6/QqnRzstoltE=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3817.eurprd04.prod.outlook.com (52.134.73.14) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.21; Fri, 6 Sep 2019 01:03:58 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::8958:299c:bc54:2a38]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::8958:299c:bc54:2a38%7]) with mapi id 15.20.2199.027; Fri, 6 Sep 2019
 01:03:58 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Leonard Crestez <leonard.crestez@nxp.com>, Abel Vesa <abel.vesa@nxp.com>, 
 Jacky Bai <ping.bai@nxp.com>
Subject: RE: [PATCH 1/2] clk: imx8mm: Move 1443X/1416X PLL clock structure to
 common place
Thread-Topic: [PATCH 1/2] clk: imx8mm: Move 1443X/1416X PLL clock structure to
 common place
Thread-Index: AQHVY9CbkBSOjf4lJEuj9oVFkY5eUacd1VTg
Date: Fri, 6 Sep 2019 01:03:58 +0000
Message-ID: <DB3PR0402MB3916535DC3A2F539326A43E8F5BA0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1567720699-23514-1-git-send-email-Anson.Huang@nxp.com>
 <VI1PR04MB7023460FBB9FB8D034ECC2A1EEBB0@VI1PR04MB7023.eurprd04.prod.outlook.com>
In-Reply-To: <VI1PR04MB7023460FBB9FB8D034ECC2A1EEBB0@VI1PR04MB7023.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2896bf8c-9871-4dd8-4c7e-08d73266190f
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3817; 
x-ms-traffictypediagnostic: DB3PR0402MB3817:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB38175D7E8420B0904663FA19F5BA0@DB3PR0402MB3817.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 0152EBA40F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(136003)(366004)(39860400002)(396003)(189003)(199004)(14454004)(2906002)(86362001)(256004)(25786009)(6246003)(52536014)(5660300002)(53936002)(9686003)(66066001)(55016002)(102836004)(99286004)(26005)(478600001)(186003)(76176011)(4326008)(71190400001)(6506007)(53546011)(7696005)(76116006)(71200400001)(6116002)(11346002)(305945005)(486006)(476003)(3846002)(446003)(6436002)(316002)(66476007)(66556008)(8676002)(44832011)(74316002)(7736002)(54906003)(110136005)(64756008)(66446008)(229853002)(7416002)(66946007)(6636002)(33656002)(8936002)(81156014)(81166006)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3817;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: XBWQ0nBRDytHkcByASpGqByEpFSeQDeXblgC4TK+/f0X9sChYXvnUAA1J5sg3a8viyc9ZyAYrszlE6tx+LTmEZ+igUDStTarSyWxME4v3YJV4bwCkNm8BdZjUb8dlooWs5UyuLF5a0AgKLGS9WYN8cJZwdL44KvuTrZBuLOjeTssxXhDhvga6ao1YuSg8SFebjTshY7M9toqHM2bUKA4KUzDLCUs/4U1elR7q/+4QX1AE/ig5JflXPofpv4ews3jYyJbSHZBedU1bZtPaGbvhG+T8QkX2fGrzdToaVdOIBdXCyCQt58MWFMxzzsTni9lHDgD54KErKrJMg9he+GxGF9fgHBFEf2ONFTzLlRPfeEnOZHwSzV8DZzh1rimgbXIcZ5JzS2ObIempbQFtEwGx2bGIGvbHyq5MwCHHyXjx5U=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2896bf8c-9871-4dd8-4c7e-08d73266190f
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Sep 2019 01:03:58.3711 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DWNFuzRYvTvxwqcju8oJPNg/gNT17gwwefXS0YdJDoplv3RE6GyfvkwRPklvI1bk/USRd9VxZq5MJpNewBP6nw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3817
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_180410_313649_47EA19EB 
X-CRM114-Status: GOOD (  15.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.47 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, "S.j. Wang" <shengjiu.wang@nxp.com>,
 Peng Fan <peng.fan@nxp.com>, "sfr@canb.auug.org.au" <sfr@canb.auug.org.au>,
 "sboyd@kernel.org" <sboyd@kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fancy Fang <chen.fang@nxp.com>, "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Leonard

> On 05.09.2019 12:59, Anson Huang wrote:
> > Many i.MX8M SoCs use same 1443X/1416X PLL, such as i.MX8MM,
> i.MX8MN
> > and later i.MX8M SoCs, moving these PLL definitions to common place
> > can save a lot of duplicated code on each platform.
> 
> There are lots of similarities between imx8m clocks, do you plan to do
> combine them further?

I will consider it later, maybe we can create a new clock file named clk-imx8m.c
as common clock for i.MX8M SoCs which are similar.

> 
> > Meanwhile, no need to define PLL clock structure for every module
> > which uses same type of PLL, e.g., audio/video/dram use 1443X PLL,
> > arm/gpu/vpu/sys use 1416X PLL, define 2 PLL clock structure for each
> > group is enough.
> 
> > diff --git a/drivers/clk/imx/clk.c b/drivers/clk/imx/clk.c
> 
> > +const struct imx_pll14xx_rate_table imx_pll1416x_tbl[] = {
> > +	PLL_1416X_RATE(1800000000U, 225, 3, 0),
> > +	PLL_1416X_RATE(1600000000U, 200, 3, 0),
> > +	PLL_1416X_RATE(1200000000U, 300, 3, 1),
> > +	PLL_1416X_RATE(1000000000U, 250, 3, 1),
> > +	PLL_1416X_RATE(800000000U,  200, 3, 1),
> > +	PLL_1416X_RATE(750000000U,  250, 2, 2),
> > +	PLL_1416X_RATE(700000000U,  350, 3, 2),
> > +	PLL_1416X_RATE(600000000U,  300, 3, 2), };
> > +
> > +const struct imx_pll14xx_rate_table imx_pll1443x_tbl[] = {
> > +	PLL_1443X_RATE(650000000U, 325, 3, 2, 0),
> > +	PLL_1443X_RATE(594000000U, 198, 2, 2, 0),
> > +	PLL_1443X_RATE(393216000U, 262, 2, 3, 9437),
> > +	PLL_1443X_RATE(361267200U, 361, 3, 3, 17511), };
> > +
> > +struct imx_pll14xx_clk imx_1443x_pll = {
> > +	.type = PLL_1443X,
> > +	.rate_table = imx_pll1443x_tbl,
> > +	.rate_count = ARRAY_SIZE(imx_pll1443x_tbl), };
> > +
> > +struct imx_pll14xx_clk imx_1416x_pll = {
> > +	.type = PLL_1416X,
> > +	.rate_table = imx_pll1416x_tbl,
> > +	.rate_count = ARRAY_SIZE(imx_pll1416x_tbl), };
> 
> Perhaps these consts should be in clk-pll14xx.c? That way they won't be
> compiled for imx6 as well.

Make sense, I will do it in V2.

Thanks,
Anson


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
