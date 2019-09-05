Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DD2CAA3DE
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 15:05:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=kRnSXIgBl5LWFdvlDHP/jBNNnkXdYThhQfU03Ha9Fw4=; b=fiL0ustf2IY10u
	qHl4+7BfNqqwegBjcd6NAaIx0+ADbC543oIpwP60Yle5UrC0yYk0Dt1R1yv9dm2G9M55ZGoYRtOTo
	an+93uG+l52E5+rA7pdyvL7mHM/nh0nKlmrd0ntwoYleJOcsx/J2NML5/XjDfG5Ix94WMg6UFekc2
	DMIH+/0lUoMh6m/BT3jEjeg9I4YZFwEDt+HpwTfu7D71ZS3F/FOdBEWiFqMKakqUHNi1c3UlYKCP8
	JDZhfC3prqWX4gt0L5v4ercFwivxjMW3b6SjN3+0hhHb15RbKj1cS8Xi4SVneffF4p+AQywMKfNLa
	5rhxTI1EI0yNDBG/CQvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5rS6-0000DO-TD; Thu, 05 Sep 2019 13:05:31 +0000
Received: from mail-eopbgr60068.outbound.protection.outlook.com ([40.107.6.68]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5rRv-0000CK-ME
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 13:05:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=i65KlgKCRQq1w2cVN1dmAsqE3i4irWlr8ekJab4LLi8W/6sppn7dkZjAiTXxAGMUo8lf34B+172iFwCOxMQl0VgRC8Dlgbf1ptfc+QmR8AlxIHzzTe1DV6o3wQjxzTwHcrxUVuTj7XI71n2FV8lrOGyKFn6QMBWLsanquJqfFX1TDYnvowQfD22WLky0mv5qgIEmB5uiJRyDHI8k70fRDWc19m53qHYvyYY6h8f4b5C6E9py7TAltNbVQx9GIie972WRbG5aeQwFasmOMGLv7h62dxHsNS81HyK1UpB8cmk03akk1TZEPgOlkx2r9nYAghWuHcB3WErZ1S6hvlL8Fw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DmDhPfwW551IfFLKzozfRessrUc855ynidHa52aJ364=;
 b=ZY1Fn04Zo5ZAIaoXC0Ldrzez3OooHW3Fso7sBnEVIwXvsV/MmZ8KMuCURmOJZxDtMW6/fcSJTxQFwR1ZKhYqYrRhBiSQ6t5FLxhbZ3zmIjKLu74wHrc/pOP2iLbahuXJD4hH7iJUzLcGs7cn/XX09wBqir+ox/tQAHvO4i7qrSfP3FGNKV9yI9UxVqFrZj2WmeKQdrs0FeejT3elwhsrXyt8kVOmjQ9s2pu3fmlFYkH93F41Wiwu6zkGf1MLOxCGKgBNWDo7jE0mifTRlT0zd0j8lG6EOBB/x73k7EU57b1FAu3Lk4OQ1ZLPzwJEygLyJXydLyHsyTsbj/P7lyuC5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DmDhPfwW551IfFLKzozfRessrUc855ynidHa52aJ364=;
 b=g4aUfVC7L0Mi9ydccN1Oo2DiP7B4yWgCqzpgGqX646llY0KoDBu4yIKUU811qvDBLn8GxBJQx7W6G42Ou7ookA9ioRau2PrfzKPvT5emdfHYeNj26RqYOHMuD4R6RQIKYNIKIMiKN3puISv1Xt0Vod4zNK7HdBV6lRkK6MTw7zw=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB4349.eurprd04.prod.outlook.com (52.134.122.159) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2241.14; Thu, 5 Sep 2019 13:05:11 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::c5e8:90f8:da97:947e]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::c5e8:90f8:da97:947e%3]) with mapi id 15.20.2220.022; Thu, 5 Sep 2019
 13:05:11 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, Abel Vesa <abel.vesa@nxp.com>, Jacky
 Bai <ping.bai@nxp.com>
Subject: Re: [PATCH 1/2] clk: imx8mm: Move 1443X/1416X PLL clock structure to
 common place
Thread-Topic: [PATCH 1/2] clk: imx8mm: Move 1443X/1416X PLL clock structure to
 common place
Thread-Index: AQHVY9Cav3A/XqpohU+k0poiSHpABg==
Date: Thu, 5 Sep 2019 13:05:11 +0000
Message-ID: <VI1PR04MB7023460FBB9FB8D034ECC2A1EEBB0@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <1567720699-23514-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 463024ee-fc10-4210-c760-08d73201af7c
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB4349; 
x-ms-traffictypediagnostic: VI1PR04MB4349:|VI1PR04MB4349:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB43496F47943C12AB535060F5EEBB0@VI1PR04MB4349.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2657;
x-forefront-prvs: 015114592F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(396003)(376002)(136003)(366004)(39860400002)(189003)(199004)(25786009)(71190400001)(66066001)(71200400001)(54906003)(110136005)(316002)(7416002)(86362001)(6246003)(53936002)(6436002)(3846002)(6116002)(9686003)(4326008)(2906002)(33656002)(55016002)(5660300002)(52536014)(76116006)(91956017)(305945005)(66946007)(66476007)(66556008)(64756008)(66446008)(256004)(8676002)(81156014)(81166006)(14454004)(186003)(102836004)(53546011)(7736002)(6506007)(99286004)(26005)(476003)(7696005)(6636002)(446003)(486006)(478600001)(44832011)(76176011)(229853002)(8936002)(74316002)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB4349;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: TEgIbiAVIX/fHlpoWPxdKcyP6CRkOtNhlI+WKPHqm8+esnXqk2eak2Q/ONVhqFtjjeTQSHB3b0RHrk6PPoztpDgJ8hdtiNcgmFgwjFJsO4IXrnbiCAhNochMrWsEdjkMU4InRQvuSJPT5bfCpw7J6cnLTOLbjDH9C7ihR0VP01j8gYkftyHgrJfPDN23HqPS4Bquhsb8Z1/mlsQW6wWcUMqytfoj/TjBgqZRElePrmbpJ81uQ/nw3x6JHadsjwefPEIBnFOgVCoC25qtje8EGePzAJvleFRHQ+SRiFUM9w+yRh4/8506e6Ubc4tMkNF5Qm6VEsG+/rDwB44d5QAY8cVYTV6rHfTOjcRhKHFvBwfmhROyzayAiMVNkOdhogxaK69KdodyNn+2/F3buEkFn3tTMhu3MHU8ZMzoO/kBAD0=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 463024ee-fc10-4210-c760-08d73201af7c
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Sep 2019 13:05:11.5149 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aqHNWq+X11Xei9em8C1p7rQZPiBWLUAeKKzUFx9PsQXhpHYEK0LGuNHGhzYqMs3Y6GcnbKvOsOiyxEm132XH2w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4349
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_060519_846287_89E0793A 
X-CRM114-Status: UNSURE (   7.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.68 listed in list.dnswl.org]
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

On 05.09.2019 12:59, Anson Huang wrote:
> Many i.MX8M SoCs use same 1443X/1416X PLL, such as i.MX8MM,
> i.MX8MN and later i.MX8M SoCs, moving these PLL definitions
> to common place can save a lot of duplicated code on each
> platform.

There are lots of similarities between imx8m clocks, do you plan to do 
combine them further?

> Meanwhile, no need to define PLL clock structure for every
> module which uses same type of PLL, e.g., audio/video/dram use
> 1443X PLL, arm/gpu/vpu/sys use 1416X PLL, define 2 PLL clock
> structure for each group is enough.

> diff --git a/drivers/clk/imx/clk.c b/drivers/clk/imx/clk.c

> +const struct imx_pll14xx_rate_table imx_pll1416x_tbl[] = {
> +	PLL_1416X_RATE(1800000000U, 225, 3, 0),
> +	PLL_1416X_RATE(1600000000U, 200, 3, 0),
> +	PLL_1416X_RATE(1200000000U, 300, 3, 1),
> +	PLL_1416X_RATE(1000000000U, 250, 3, 1),
> +	PLL_1416X_RATE(800000000U,  200, 3, 1),
> +	PLL_1416X_RATE(750000000U,  250, 2, 2),
> +	PLL_1416X_RATE(700000000U,  350, 3, 2),
> +	PLL_1416X_RATE(600000000U,  300, 3, 2),
> +};
> +
> +const struct imx_pll14xx_rate_table imx_pll1443x_tbl[] = {
> +	PLL_1443X_RATE(650000000U, 325, 3, 2, 0),
> +	PLL_1443X_RATE(594000000U, 198, 2, 2, 0),
> +	PLL_1443X_RATE(393216000U, 262, 2, 3, 9437),
> +	PLL_1443X_RATE(361267200U, 361, 3, 3, 17511),
> +};
> +
> +struct imx_pll14xx_clk imx_1443x_pll = {
> +	.type = PLL_1443X,
> +	.rate_table = imx_pll1443x_tbl,
> +	.rate_count = ARRAY_SIZE(imx_pll1443x_tbl),
> +};
> +
> +struct imx_pll14xx_clk imx_1416x_pll = {
> +	.type = PLL_1416X,
> +	.rate_table = imx_pll1416x_tbl,
> +	.rate_count = ARRAY_SIZE(imx_pll1416x_tbl),
> +};

Perhaps these consts should be in clk-pll14xx.c? That way they won't be 
compiled for imx6 as well.

--
Regards,
Leonard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
