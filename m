Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8E8D1841B9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 08:50:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+jZ+bc/8K5qLt8DzNR2v/+vowO7tIDx2AGrB/zJhnXE=; b=ka6nagMyWeDelU
	or7fieqc7frrE9hKhamqlZKPP/2/cEDii/gUPw8jcUp08OSDXzsqC7/cus4srdbW0O2Gvh60XX6Po
	gZaqEpdu2hoYTRqF+r9F4qR57HVV6e2YW1bz2v3+YzNFsK33oNSRZaixYuA5+5Z/eFxP9d1mP+p4N
	f/bbw3V7i7AioR55Q8MLRYumpXTX5RU7nRZ5bF+QYic9IfW24Y9a4kJFxG0/agsxfGQezoPS0BEid
	Fj4GHEnNsVhLFetWK0KFt53Z8rvtHWvQn9dV4txoK73aG8+Y3uueZ+kD3rKKUYUD2UPWbAjaJw/hS
	h0C0MgdhEAWNfujHT2Mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCf5a-00084E-UW; Fri, 13 Mar 2020 07:50:38 +0000
Received: from mail-am6eur05on2041.outbound.protection.outlook.com
 ([40.107.22.41] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCf5Q-00083o-95
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 07:50:29 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ATYqDknmVJkDoQOL0pkar+kS4DsULiOgzk2wocdGb2F1XWlqqanpUUo4T3+MdB41au2jKCJxqXc+/d83Ui8tpbD3BeSJ4ws66QSaMmr3lAyGrz/UPwL3W4qBq4HpcKnzt/rVBG8mntbykpXye//lJouXUsNyE0Z4Nr6m6YuNySY190sBz/+JUyyIbaQe/N9pbrxXM9D/kO+rA7AL0ufIKZa8IwRYrKehS+AQ+5i1tRrI8jV4n994KWHwPkxB0H6VSmwxN9dz62sTx6iR/rsPZgTB/Vns5X3kSoOvltEjGVvRqpq1rVIElE9cyyNCLpMrQgS0p40uL6W2WMApOW3Qbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=396Fj1KO0nbAAJhkFByrZk35HAQqKfAN6Nj6pzl/MiM=;
 b=NiieKqN3fg4G3ga+EXb91EYbPtGaAGie5TYROLac7u8K9cht4whAfOZ2zJnk018/JA4Im/nqa+jBezoYVj30FiuLLp9ZYKEyPjL8DLiJZI9ckG5DZt8l0OZTIexgY0oxv9soNVzvPcxUOUv2rr/gqPLgx5lVPrV0tkzZPXlGKy7l8YCk1vjn159Wlwss2haHCtdZhRCV5Kw1F9WHVwjpeuNLQWfmKjxbCH2nrOy0PaOj2Z53WnC50uLmCfc/kHU9MKcWPKewpwnlpJr7NA0qIP75xwvnDWR6uTxDe1VMaRZjj9aSvq6Bt2tyNyWOEVlam00/ei0zpw5SS4J0BiiRpQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=396Fj1KO0nbAAJhkFByrZk35HAQqKfAN6Nj6pzl/MiM=;
 b=dJ201kCuG1PBENwMYNeb01ih6ejDKYd2mm1TnolrvUBB5c9N4VLMX8oPyNiJPWp+B1u2ZOCWffy/3HwJvjS4A/oTYxUBz4rLtoZUYAh1I1igZP6MyulDML4NfEqawO/S2Z66Fq5vNEIdu/oV+q1ZXqAuaBXJZFOPlgzlv8h17kk=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5201.eurprd04.prod.outlook.com (20.177.42.18) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.17; Fri, 13 Mar 2020 07:50:22 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::548f:4941:d4eb:4c11]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::548f:4941:d4eb:4c11%6]) with mapi id 15.20.2793.018; Fri, 13 Mar 2020
 07:50:22 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Abel Vesa <abel.vesa@nxp.com>, Rob Herring <robh@kernel.org>, Shawn Guo
 <shawnguo@kernel.org>, Sascha Hauer <kernel@pengutronix.de>, Fabio Estevam
 <fabio.estevam@nxp.com>, Mike Turquette <mturquette@baylibre.com>, Stephen
 Boyd <sboyd@kernel.org>, Lee Jones <lee.jones@linaro.org>, Anson Huang
 <anson.huang@nxp.com>, Leonard Crestez <leonard.crestez@nxp.com>, Jacky Bai
 <ping.bai@nxp.com>
Subject: RE: [RFC 05/11] clk: imx: pll14xx: Add the device as argument when
 registering
Thread-Topic: [RFC 05/11] clk: imx: pll14xx: Add the device as argument when
 registering
Thread-Index: AQHV8Tqm6hhuyxWdyECiv/PnMMpDi6hGNWjA
Date: Fri, 13 Mar 2020 07:50:22 +0000
Message-ID: <AM0PR04MB4481D97D0FBEF70D422B6BD588FA0@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1583226206-19758-1-git-send-email-abel.vesa@nxp.com>
 <1583226206-19758-6-git-send-email-abel.vesa@nxp.com>
In-Reply-To: <1583226206-19758-6-git-send-email-abel.vesa@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 8f80edb9-db98-4e8c-7ce9-08d7c7232ef6
x-ms-traffictypediagnostic: AM0PR04MB5201:|AM0PR04MB5201:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB520131A8D3F9D575A3EEF54688FA0@AM0PR04MB5201.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2733;
x-forefront-prvs: 034119E4F6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(346002)(39860400002)(376002)(136003)(366004)(199004)(66946007)(76116006)(9686003)(64756008)(478600001)(186003)(66476007)(66446008)(55016002)(71200400001)(8676002)(8936002)(81156014)(81166006)(2906002)(86362001)(316002)(4326008)(5660300002)(7416002)(66556008)(54906003)(110136005)(33656002)(52536014)(6506007)(6636002)(26005)(7696005)(44832011)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5201;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +o7G2cW1uYoUzVjCkEpqpyiIHL0wC6pUNUOMoJEdyaqZXOUIivPlva2pMecprmcP3PZ5fkhD6sba92lJ3ue1IkfdFCMstPBNvAPsVuEZcYuiiO2NMPyhttMo6PsNWpaYlqyF3mAymMiuJ0F4SpQeXAoG3Z8wAXDdfEl/UTY8Pu/RaJLHj+q0preStREi6zKwt5GBYRG8k4DK7PPXNN8ft5WqPghb8oS31dCAK87GcjUdxKvCqSyUMLkeNUr1a67FySUtGEjm6EPiaKEXg4CBSR9rL8lbNPjhPtSkj7+0yME+s9HIdXsK5tCLDNo4s4hoh+T9FsXIvGBrpC1xujxpKEQXIXzW/8dozGzFgDDZpK4dGlgHRbjs7a8auTzVJFD9FSQaJifyHcmb+g5FkODPWzKQ7frTvdpl+TM0xuLXk6uKbuv72YKb9rRtlGzWV39flvpCNXQ1EB0dqRboWTbZPlsp1EH3BjSLHKUttqRMKo4aHWZ7FSL6eI//+YGjQX2c
x-ms-exchange-antispam-messagedata: hV63XJ7WKq4bqxeAz5bhzfSjDXnSBWi45MlV3kd/GcWzNEk1th76vwiyfO2P5WG2MK6wb7mLV4WBGnD/9a2/HTlUXZiAx1HpIJjCRuACgqWoOIp09ACXiuEBhGUULqnSsHB/TMy6u5IbZr/p5YhInA==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8f80edb9-db98-4e8c-7ce9-08d7c7232ef6
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2020 07:50:22.0873 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: F6EQuPxepz6B6WU+WzSlyMIuT8l9mHBZ++zKJc8DkHk90LwacqXwpjUl+6vFDy0CuuWDwtpVuCOsyYY/Ks5nNA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5201
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_005028_324799_A0EB3F97 
X-CRM114-Status: GOOD (  15.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.22.41 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Abel Vesa <abel.vesa@nxp.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Subject: [RFC 05/11] clk: imx: pll14xx: Add the device as argument when
> registering
> 
> In order to allow runtime PM, the device needs to be passed on to the register
> function. Audiomix clock controller, used on i.MX8MP and future platforms,
> registers a pll14xx and has runtime PM support.
> 
> Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
> ---
>  drivers/clk/imx/clk-pll14xx.c |  6 +++---
>  drivers/clk/imx/clk.h         | 13 ++++++++++---
>  2 files changed, 13 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/clk/imx/clk-pll14xx.c b/drivers/clk/imx/clk-pll14xx.c index
> a83bbbe..2fbc28c 100644
> --- a/drivers/clk/imx/clk-pll14xx.c
> +++ b/drivers/clk/imx/clk-pll14xx.c
> @@ -378,9 +378,9 @@ static const struct clk_ops clk_pll1443x_ops = {
>  	.set_rate	= clk_pll1443x_set_rate,
>  };
> 
> -struct clk_hw *imx_clk_hw_pll14xx(const char *name, const char
> *parent_name,
> -				  void __iomem *base,
> -				  const struct imx_pll14xx_clk *pll_clk)
> +struct clk_hw *imx_dev_clk_hw_pll14xx(struct device *dev, const char
> *name,
> +                            const char *parent_name, void __iomem
> *base,
> +                            const struct imx_pll14xx_clk *pll_clk)
>  {

Should the pointer dev be passed to clk_hw_register?

Thanks,
Peng.

>  	struct clk_pll14xx *pll;
>  	struct clk_hw *hw;
> diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h index
> 51d6c26..cb28f06 100644
> --- a/drivers/clk/imx/clk.h
> +++ b/drivers/clk/imx/clk.h
> @@ -131,9 +131,9 @@ struct clk *imx_clk_pll14xx(const char *name, const
> char *parent_name,  #define imx_clk_pll14xx(name, parent_name, base,
> pll_clk) \
>  	to_clk(imx_clk_hw_pll14xx(name, parent_name, base, pll_clk))
> 
> -struct clk_hw *imx_clk_hw_pll14xx(const char *name, const char
> *parent_name,
> -				  void __iomem *base,
> -				  const struct imx_pll14xx_clk *pll_clk);
> +struct clk_hw *imx_dev_clk_hw_pll14xx(struct device *dev, const char
> *name,
> +                            const char *parent_name, void __iomem
> *base,
> +                            const struct imx_pll14xx_clk *pll_clk);
> 
>  struct clk_hw *imx_clk_hw_pllv1(enum imx_pllv1_type type, const char
> *name,
>  		const char *parent, void __iomem *base); @@ -244,6 +244,13 @@
> static inline struct clk *to_clk(struct clk_hw *hw)
>  	return hw->clk;
>  }
> 
> +static inline struct clk_hw *imx_clk_hw_pll14xx(const char *name, const
> char *parent_name,
> +				  void __iomem *base,
> +				  const struct imx_pll14xx_clk *pll_clk) {
> +	return imx_dev_clk_hw_pll14xx(NULL, name, parent_name, base,
> pll_clk);
> +}
> +
>  static inline struct clk_hw *imx_clk_hw_fixed(const char *name, int rate)  {
>  	return clk_hw_register_fixed_rate(NULL, name, NULL, 0, rate);
> --
> 2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
