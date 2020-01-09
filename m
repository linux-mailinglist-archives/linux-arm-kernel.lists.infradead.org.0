Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F6B913577B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 11:56:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tkptl8JGRdcvVojXDJ3f8jekyxIVCqrCr++vTkJaoo4=; b=RjPngEKp76kBfJ
	HpknYKo/rZCZygyWw+bZ7bwENNwVF8fjY+qwV1QhIq+B6SUslr84omR9IeoLhvYJSGwk0CZ8TYsFd
	OiPFCOTspC7Zg6fmE21zYUdD2G8r3GrVTc4H4n+NL1cjQ53gG2cyNYmxilUkTuMXlo+6ch8/wslWx
	1D6mCf2oP/WpRhePnYXPG8kVuQk1O7lXdCKTDuHc5rUZYfPmfLRvbU4Z3y9hQ74pAVTDWmpbcrnV6
	TohDLU+q+IwK0qsVx0xoiDnBaOjDGNkIb9Uu1CLfvuqr/BlRz6smev3JKAdOynzdDazv7SHxLprqo
	x6sLhpzidS2stY9xGOGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipVU9-0003pt-RR; Thu, 09 Jan 2020 10:56:17 +0000
Received: from mail-vi1eur05on2088.outbound.protection.outlook.com
 ([40.107.21.88] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipVTw-0003o7-1q
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 10:56:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FKABXYGq4OjVd9qQ8DeAgvyTkH/chQmH7wuusZ4kKdNyAoDTI1WZS6cnq0+JLPKoi0lp18HmUJOcNFbWgeqHdxS1S/DonBQq5sNBUMvIBpgcgcuOfjIL8UpXHCb5+2w/cnU3BxppRsnnVGpoI0CHnScr84IIoWDVAJTcFBKvBQhYNAVfMDeoVWledYLdAVtt+n7ohndYHWHJcu0a6cvn6C8TT6LIaaiuzQ7/CU/SU3urBE5ZaFsk0h2IMcKK565If1gJ7+3Ffhu3iRgggCkETMOsEKoDp7PPOURzeDr/ZdheLediwAu8B6GkEp9fotyciXBd3OEqI+yhgDVp443LXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CgYlhc7Gk3rUevxUCFgtT1heqpCnClB+4mXI9JUawW0=;
 b=iqhQ9LAURgRI9v7ImsXJLZn45opy810tl2zzqqft4FdMwhPZ3+JVqG7XF/q8ZyNvGAd0RGq9KxYVNpel+oBYZm4FIgGMZvlKniopR8q2+k3c1MOWVG9UkTHasOHBP+A4sSUfO/GofRbPI+D11yHOLsWfOYycydzPnzoeMo2xAjBgEU2w4xl7CEaAM5Xb9CxacChp6wYh8UKU3uUjrw1t+VTygl6uBoaeCMtcYptk04V2YXj7o/ILIe+tOb51XJNbSlLY3nFGcxQnr1zC1W7aE1GwIyyK+IncElb039z9vbNUXshpgN7myUT+Ua1B8TYK8q28HxsDu1ot+maplD6nkQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CgYlhc7Gk3rUevxUCFgtT1heqpCnClB+4mXI9JUawW0=;
 b=S0UUkW5EmXiQO9e2OK5vURpmvHil6g7uy32+btK8WFmZQSfUwgwB22CdE6nyvePmbxfhivKXWVm3dz1tXlYp8c614nM3eHUoFNuwKSbAmwhzBgv4YFkfQPw3sNc4FpBc2EyGnaqfjADb9+Ey7Sg0p/GUve72s9tNzyEnCbdzWEo=
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com (20.178.202.151) by
 AM0PR04MB6324.eurprd04.prod.outlook.com (20.179.34.12) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.9; Thu, 9 Jan 2020 10:55:59 +0000
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::6d52:5678:e02f:95f4]) by AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::6d52:5678:e02f:95f4%3]) with mapi id 15.20.2623.008; Thu, 9 Jan 2020
 10:55:58 +0000
Received: from localhost (89.37.124.34) by
 AM6P193CA0091.EURP193.PROD.OUTLOOK.COM (2603:10a6:209:88::32) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.10 via Frontend Transport; Thu, 9 Jan 2020 10:55:58 +0000
From: Abel Vesa <abel.vesa@nxp.com>
To: Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH 0/4] clk: imx: imx8m: introduce imx8m_clk_hw_core_composite
Thread-Topic: [PATCH 0/4] clk: imx: imx8m: introduce
 imx8m_clk_hw_core_composite
Thread-Index: AQHVxtJpermqa5NGzEysq2aeSusjm6fiKRmA
Date: Thu, 9 Jan 2020 10:55:58 +0000
Message-ID: <20200109105557.gntbgzj3efbqpjwf@fsr-ub1664-175>
References: <1578563269-32710-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1578563269-32710-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM6P193CA0091.EURP193.PROD.OUTLOOK.COM
 (2603:10a6:209:88::32) To AM0PR04MB5779.eurprd04.prod.outlook.com
 (2603:10a6:208:131::23)
x-originating-ip: [89.37.124.34]
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=abel.vesa@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 34a17818-7e82-4fd4-3f15-08d794f2825f
x-ms-traffictypediagnostic: AM0PR04MB6324:|AM0PR04MB6324:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB6324FF8E8061A92F1A19B9EAF6390@AM0PR04MB6324.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 02778BF158
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(7916004)(376002)(39860400002)(366004)(136003)(346002)(396003)(189003)(199004)(6486002)(66476007)(66446008)(956004)(66556008)(5660300002)(66946007)(6496006)(81166006)(64756008)(53546011)(9686003)(478600001)(6862004)(4326008)(86362001)(8676002)(2906002)(186003)(16526019)(316002)(26005)(81156014)(44832011)(71200400001)(1076003)(8936002)(6636002)(33716001)(52116002)(54906003)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6324;
 H:AM0PR04MB5779.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 36Hp7ZAkqORd9O5wSMZdQ7gojPvhAqgGRRyQr/uHSkUsUX1+wxqVNyPaVgrO/Dco9j/rOf1YyBZQCxMyzqTsrOy+KNZbEw17eNN2UXUHImFlShtEvrokiEna3CGFKf/UfCWwlK0TC36RuZf9rbQiPV6IjqKqP/RwaaGPLiNB2tQtijNJg0BClRBl4NznUciwyz/K79J1jRRpOMRv3Mj79bRn64DDO9v+jSK4fdIecO+iYrOyivXQq4k+t6XiFiLBakF2H1wRKkIY/WJ+BuyGa/0z2j6uBVaIxECmBreLTIIyirwo9WTJt5mClvKlWs7hjce8xooBLCwuH9DW3GyR5QL+tuKVtusCoKcHWC0ZFKxPbAa6/Bm+kfMDyOy9ZRF/ACN2X0NC29U+iZ6QQC/E5N/GRQUmN76zrpzmoeML4HsiPr/VEdEjhy5/b3Ewv7NNW1ry72yi6/0XAurUY0wIcfQp53oHx8puYYYouOl+mRGc9wGv2vdQYvn1IKBTmD6c
Content-ID: <205F1779450AE149A9D3ED27732F1C2A@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 34a17818-7e82-4fd4-3f15-08d794f2825f
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jan 2020 10:55:58.8400 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XK9fcP4xxo3+CmZHwNgquuA8ByzqBMP6D4sqqbqBdcOlDa5CYC3Lk3AJqQIE486PBiRIiWVoCPxJYKbjgeNs+w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6324
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_025604_165682_7069F348 
X-CRM114-Status: GOOD (  11.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.21.88 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Jacky Bai <ping.bai@nxp.com>,
 Anson Huang <anson.huang@nxp.com>, "sboyd@kernel.org" <sboyd@kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 20-01-09 09:51:49, Peng Fan wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> To i.MX8M family, there are different types of clock slices,
> bus/core/ip and etc. Currently, the imx8m_clk_hw_composite
> api could only handle bus and ip clock slice, it could
> not handle core slice. The difference is core slice not have
> pre divider and the width of post divider is 3 bits.
> 
> To simplify code and reuse imx8m_clk_hw_composite, introduce a
> flag IMX_COMPOSITE_CORE to differentiate the slices.
> 
> With this new helper, we could simplify i.MX8M SoC clk drivers.
> 

I like the simplification this patchset adds, but maybe we should
keep the extra flags (or clock types) at the end of the API, so 
instead of imx8m_clk_hw_core_composite maybe we could use 
imx8m_clk_hw_composite_core.

Other than that:

Reviewed-by: Abel Vesa <abel.vesa@nxp.com>

> Peng Fan (4):
>   clk: imx: composite-8m: add imx8m_clk_hw_core_composite
>   clk: imx: imx8mq: use imx8m_clk_hw_core_composite
>   clk: imx: imx8mm: use imx8m_clk_hw_core_composite
>   clk: imx: imx8mn: use imx8m_clk_hw_core_composite
> 
>  drivers/clk/imx/clk-composite-8m.c | 18 ++++++++++++++----
>  drivers/clk/imx/clk-imx8mm.c       | 17 +++++------------
>  drivers/clk/imx/clk-imx8mn.c       | 10 +++-------
>  drivers/clk/imx/clk-imx8mq.c       | 19 +++++--------------
>  drivers/clk/imx/clk.h              | 12 ++++++++++--
>  5 files changed, 37 insertions(+), 39 deletions(-)
> 
> -- 
> 2.16.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
