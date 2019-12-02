Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE58010E489
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 03:26:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EqCN9OY6Ebgkde8G/a217OT+EEiL1WJ0qHcqbTVViWk=; b=XgDZjYuMNsK8W3
	fUiLEf7SudNYQ0q6PCzYs1toBEDEvQFLVwNwVhbKnCjXjzwr6E6SshLHX49RD5PXDm0LP919CuEze
	pwX7iAVkcUrHtYfpbwFfjZ5/18coT0ikSDufEKul8hNClgzAfF975OwVfhi2VjfG2Vs7JLQC0Yn9p
	nWDiEXG9ALxC3ZNKFE1Uojmw6ucG04eU5XQcuWr6k4FbL5/V6tUwvTond10teyCH8nIJEWCzfMc1o
	mfQ4Ocy497St/+GAmZ6beuvIjM5MeFDI8ldnSWiY7KCICLGf/4cWtuokZxPQ4aPzkTOPqalSiyjFT
	7cuHPOJo53C5BaxKu7RA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibbPv-0004Tk-Tm; Mon, 02 Dec 2019 02:26:27 +0000
Received: from mail-eopbgr20088.outbound.protection.outlook.com ([40.107.2.88]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibbPn-0004TJ-KU
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 02:26:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BVM0k1i+of/HWd8QkQHur08CGFnjarR1KNM0PfmUxbUpa8UpaKcdQVvWSFEfG8Qt8R7T3lDzPktHAm3qSBhkwPkEwDhmAsqxNIm1IpZHnSSAfvKChm1mE+dVoU7wdzhFawu5pmk3fH+gya1G2y2k+GYiEDiFAH8yuj8nNSSIyrEu9ZxsZGbAiX5HCbyRAcXmaeLEEXAqhP0Ck9z7Ofa2IQVbWSfvBWdD0bJjg8DTdfwcvdOqTb7Vuj+0Hp2jColduJNgXU+IFsO6PkjkK3q1MebjyiVY722+X6ojfR3QcIWqR7X92kjvKHnyCsovO81o6kXl/yTZeS7Blmualr44+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5kIUixMufIu7+rJnTokU8mYcYxADOy/1RquD0Q9HsQQ=;
 b=X7EcZjiKN0E9BjUINt5aJY/rYRbOLp2v6YS+QqAhWn+g3oc+ooMoagdSAUwdCeI8OtppwvPAkLlcuFM2QgiTDhUFVh6/ZRJtb/ZTHJJYTkHqbVMnszTA8PJO4hRQfMv66dB5BNehByXY8Tgg6CyOHUONZ3HHegqL+eQfqdMSxR3jpiN/g2NR6Y/hrYOPjHoNc2kS2vp0odNl5qwJXT6Cq7DgLiyS6I7hPJiElELWMIOPRayNbwFF4POtzXUcttcm/hSotoqaBFU1wn6ZOOoj6fWoq6YglUnnXKagTMqQWR9RYdHVEeV82hH6PRnEczV6/acXicZb1GC9QTdFzgtKTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5kIUixMufIu7+rJnTokU8mYcYxADOy/1RquD0Q9HsQQ=;
 b=MDshhyamSI+kNFJOoz8dhgzP49MY7DnZlq8ZOOKdAy/FLjU7ApU2ik5qvrIcIkKdjaFkhPB39lpwO8WgmNoXCUtDlAouk9bHLnp9jZHZ+gOSKHNE+IL2YAohpisWNPRxCcBZ+mGlxCEAZoNShn0h4T5GeUk0dRqqjCjD+Yo1qAs=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6772.eurprd04.prod.outlook.com (52.132.214.200) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2495.20; Mon, 2 Dec 2019 02:26:13 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::f16d:a26a:840:f97c]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::f16d:a26a:840:f97c%4]) with mapi id 15.20.2495.014; Mon, 2 Dec 2019
 02:26:13 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>
Subject: RE: [PATCH 1/7] clk: imx: clk-pll14xx: Switch to clk_hw based API
Thread-Topic: [PATCH 1/7] clk: imx: clk-pll14xx: Switch to clk_hw based API
Thread-Index: AQHVjl58vmyH5lHO9kisrA51FWxJAKemP8QAgAATAjA=
Date: Mon, 2 Dec 2019 02:26:13 +0000
Message-ID: <AM0PR04MB4481B7D74A1861558523F21488430@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1572356175-24950-1-git-send-email-peng.fan@nxp.com>
 <1572356175-24950-2-git-send-email-peng.fan@nxp.com>
 <20191202011721.GA17574@dragon>
In-Reply-To: <20191202011721.GA17574@dragon>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [114.220.170.63]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 03794538-4e63-40ea-cea8-08d776cf0095
x-ms-traffictypediagnostic: AM0PR04MB6772:|AM0PR04MB6772:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB6772E5E0CBF3DCFF1C0CCD5288430@AM0PR04MB6772.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:883;
x-forefront-prvs: 0239D46DB6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(39860400002)(366004)(376002)(396003)(346002)(199004)(189003)(6916009)(9686003)(4326008)(66476007)(66066001)(5660300002)(25786009)(478600001)(7736002)(6116002)(71190400001)(71200400001)(3846002)(33656002)(256004)(305945005)(74316002)(86362001)(2906002)(8676002)(8936002)(81156014)(76176011)(6436002)(55016002)(446003)(99286004)(11346002)(76116006)(44832011)(66946007)(66556008)(7696005)(81166006)(52536014)(102836004)(6506007)(316002)(6246003)(26005)(14454004)(229853002)(66446008)(64756008)(54906003)(186003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6772;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: OBFYz8i/nb//8lJJ6hs30SPC8frdfpTVRlOoz9u9Yc+cz6hRPwSKUHdQTBS0qYsD3dZN7n/LxebWY/Iyq0Wx/HDXTkWPL8bLfy0L9mwZds+9PtQ6pcECsoMGBuYMXIrwMEem+6LlzJcRWWAlVwCCh+zWbsMjI7npFeDoOz2R1xmlK9AZPHQsb2e1dGnxLryd6yZ+eu8xOgZ/YXrdb6Sy8q1OJffK/9rmfWb54uiQzRwDRaW0QAj+NflbcbI31LXa7mimB/aYgx/OOsXbQvRtFpOONj4u9+Gu/AuMlXYIjs8px2ZtwGTKL1YTJbghsFH8Yzmr7ejHTNz2+hYucoOpPK/QUaBjwHKtG9Jvzh3hSIdcsq3Y25NXL3/myD52GgrJxhUWSmF3eJh6KfTE3tnckAY0Vm96hEoM9ErerpI6Qk9Neog2nhkGHqg9R8ojT6PA
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 03794538-4e63-40ea-cea8-08d776cf0095
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Dec 2019 02:26:13.5850 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vpZSElb5AIH4zDQjXuBVSlquVjjUs+1KBSrFsE4b/0RMOV3diboI9Wt3TaRD2/ff8W22KsSc/9C1GvcKJ77c4Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6772
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191201_182619_775210_C7A9B0FB 
X-CRM114-Status: GOOD (  19.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.88 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Abel Vesa <abel.vesa@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "sboyd@kernel.org" <sboyd@kernel.org>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Shawn,

> Subject: Re: [PATCH 1/7] clk: imx: clk-pll14xx: Switch to clk_hw based API
> 
> On Tue, Oct 29, 2019 at 01:40:54PM +0000, Peng Fan wrote:
> > From: Peng Fan <peng.fan@nxp.com>
> >
> > Switch the imx_clk_pll14xx function to clk_hw based API, rename
> > accordingly and add a macro for clk based legacy. This allows us to
> > move closer to a clear split between consumer and provider clk APIs.
> >
> > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > ---
> >  drivers/clk/imx/clk-pll14xx.c | 22 +++++++++++++---------
> >  drivers/clk/imx/clk.h         |  8 ++++++--
> >  2 files changed, 19 insertions(+), 11 deletions(-)
> >
> > diff --git a/drivers/clk/imx/clk-pll14xx.c
> > b/drivers/clk/imx/clk-pll14xx.c index 5c458199060a..fa76e04251c4
> > 100644
> > --- a/drivers/clk/imx/clk-pll14xx.c
> > +++ b/drivers/clk/imx/clk-pll14xx.c
> > @@ -369,13 +369,14 @@ static const struct clk_ops clk_pll1443x_ops = {
> >  	.set_rate	= clk_pll1443x_set_rate,
> >  };
> >
> > -struct clk *imx_clk_pll14xx(const char *name, const char *parent_name,
> > -			    void __iomem *base,
> > -			    const struct imx_pll14xx_clk *pll_clk)
> > +struct clk_hw *imx_clk_hw_pll14xx(const char *name, const char
> *parent_name,
> > +				  void __iomem *base,
> > +				  const struct imx_pll14xx_clk *pll_clk)
> >  {
> >  	struct clk_pll14xx *pll;
> > -	struct clk *clk;
> > +	struct clk_hw *hw;
> >  	struct clk_init_data init;
> > +	int ret;
> >  	u32 val;
> >
> >  	pll = kzalloc(sizeof(*pll), GFP_KERNEL); @@ -412,12 +413,15 @@
> > struct clk *imx_clk_pll14xx(const char *name, const char *parent_name,
> >  	val &= ~BYPASS_MASK;
> >  	writel_relaxed(val, pll->base + GNRL_CTL);
> >
> > -	clk = clk_register(NULL, &pll->hw);
> > -	if (IS_ERR(clk)) {
> > -		pr_err("%s: failed to register pll %s %lu\n",
> > -			__func__, name, PTR_ERR(clk));
> > +	hw = &pll->hw;
> > +
> > +	ret = clk_hw_register(NULL, hw);
> > +	if (ret) {
> > +		pr_err("%s: failed to register pll %s %d\n",
> > +			__func__, name, ret);
> >  		kfree(pll);
> > +		return ERR_PTR(ret);
> >  	}
> >
> > -	return clk;
> > +	return hw;
> >  }
> > diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h index
> > bc5bb6ac8636..5038622f1a72 100644
> > --- a/drivers/clk/imx/clk.h
> > +++ b/drivers/clk/imx/clk.h
> > @@ -97,8 +97,12 @@ extern struct imx_pll14xx_clk imx_1443x_pll;
> > #define imx_clk_mux(name, reg, shift, width, parents, num_parents) \
> >  	imx_clk_hw_mux(name, reg, shift, width, parents, num_parents)->clk
> >
> > -struct clk *imx_clk_pll14xx(const char *name, const char *parent_name,
> > -		 void __iomem *base, const struct imx_pll14xx_clk *pll_clk);
> > +#define imx_clk_pll14xx(name, parent_name, base, pll_clk) \
> > +	imx_clk_hw_pll14xx(name, parent_name, base, pll_clk)->clk
> > +
> 
> I would suggest to use an inline function for this, which will be more readable
> and complying to kernel coding style.

ok, I'll send out v2.

Thanks,
Peng.

> 
> Shawn
> 
> > +struct clk_hw *imx_clk_hw_pll14xx(const char *name, const char
> *parent_name,
> > +				  void __iomem *base,
> > +				  const struct imx_pll14xx_clk *pll_clk);
> >
> >  struct clk *imx_clk_pllv1(enum imx_pllv1_type type, const char *name,
> >  		const char *parent, void __iomem *base);
> > --
> > 2.16.4
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
