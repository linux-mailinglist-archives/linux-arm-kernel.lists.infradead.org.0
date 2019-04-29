Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF944E2BC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 14:34:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f+k0u63SYl5LlHE79z67KdNOvAg+fkUa69QxYqXviho=; b=bV9tiP+w0cDHYt
	Ojf5aQbxwN9S75bhNZZQBBA/Sic+NsdFxAfjsbNVF7mq+L3/8ITHINCXN78KvQyM5Rg95CX95YpzO
	USdfRRGmc1SRlhKDKnuIf6WJozT0a5CE5Likhdj4/stZTs9wXFjydnwdvUJD/pfJzXfwg8HkLFvBL
	E55cPi8ojPxWmhExfR9zq/LWXqsx/6SBTTQgfjLGzmbJJlQvB7A+KYa336Rtspu+7UknxWFfh5yqf
	ND663svx0tWhnMPQot0BNc0p/ulnC5DUg3leN0OXMl3q8WC75sPw7I4QmQJvYt6uLeFb9Xtc9iGqL
	2JcNfuCroEot4le6CSFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL5Ue-0005tG-E5; Mon, 29 Apr 2019 12:34:48 +0000
Received: from mail-eopbgr150055.outbound.protection.outlook.com
 ([40.107.15.55] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL5UW-0005sm-Rk
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 12:34:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1tCQODn8B9suG6zD9VA54Wls7OaoMge7cK25IlRJ/+o=;
 b=kXMVbLydF9bZmjl4n5PNHJ/Xz0q9SB7DI4b/1JWZ7IIF7Kinb4CONzT0h4aO6SBFgjMHPBDMvhhkArxIDreDi18fsv8CLb9cjFzQWtMg8hbY9Zq1Iy1WHmjKXCrtJnUMtxa7YHKPQWiWOH+rwjOLXyMtYJpRs/vb+UDMz69JmaU=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3898.eurprd04.prod.outlook.com (52.134.65.139) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.12; Mon, 29 Apr 2019 12:34:36 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e8ca:4f6b:e43:c170]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e8ca:4f6b:e43:c170%3]) with mapi id 15.20.1835.018; Mon, 29 Apr 2019
 12:34:36 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Aisheng Dong <aisheng.dong@nxp.com>, "mturquette@baylibre.com"
 <mturquette@baylibre.com>, "sboyd@kernel.org" <sboyd@kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, "linux-clk@vger.kernel.org"
 <linux-clk@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH] clk: imx: add fractional-N pll support to pllv4
Thread-Topic: [PATCH] clk: imx: add fractional-N pll support to pllv4
Thread-Index: AQHU/jo/D2ZwDi5WREOeVbOKgmEXYaZS+19AgAAXj0A=
Date: Mon, 29 Apr 2019 12:34:36 +0000
Message-ID: <DB3PR0402MB3916BF3B94E3F2206D0C7954F5390@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1556507637-22847-1-git-send-email-Anson.Huang@nxp.com>
 <AM0PR04MB4211D3F29BCA3727E799005F80390@AM0PR04MB4211.eurprd04.prod.outlook.com>
In-Reply-To: <AM0PR04MB4211D3F29BCA3727E799005F80390@AM0PR04MB4211.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 24701db4-af4c-471a-a2b2-08d6cc9f0a42
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3898; 
x-ms-traffictypediagnostic: DB3PR0402MB3898:
x-microsoft-antispam-prvs: <DB3PR0402MB389890097C797635E402387FF5390@DB3PR0402MB3898.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:785;
x-forefront-prvs: 0022134A87
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(366004)(346002)(396003)(136003)(376002)(13464003)(189003)(199004)(71190400001)(102836004)(6246003)(256004)(2201001)(110136005)(97736004)(2906002)(64756008)(66556008)(66476007)(476003)(5660300002)(71200400001)(478600001)(86362001)(11346002)(446003)(73956011)(66066001)(76116006)(66446008)(66946007)(186003)(7696005)(76176011)(26005)(33656002)(55016002)(486006)(6436002)(7736002)(14454004)(52536014)(8936002)(68736007)(99286004)(74316002)(44832011)(305945005)(6116002)(81156014)(229853002)(8676002)(3846002)(53546011)(53936002)(81166006)(4326008)(2501003)(9686003)(316002)(25786009)(6506007)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3898;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 74wgxQUEIzZmuQbpArzFyBYCzxC6nsgqwsKnnVvzi7pRifgmdxvRVirRkUeZnzj4I6Zr0g+dd60KG1/KabTj2LwjUnpuD/38jfXZQTVWAOEyP1o7aLYXlAaHAt27o5Mk5ylAdckE7bNbItN/1i1GU6P/BNMS0xGaAh7nuLTw9A2xjW28+y27NTSUN4VQP9YVgR3uaPXSY/UEWcBaxhnD94XpBnNm/j/vVtzudH48H2Yg+tTuHBQ6By3QRik2+/fvnBElNFHsVwwgwVoovZEqyDj5hxuJGZ2DWc08zEAH3kzz43mzOGyOkwyHsfQKGwNeUhpC2nRZylwEhWUizij+9NtGXflKSiImkyk65domLdxfBegIBBUGiHROA0SyZjqFLHubdho/OL7+1o/N7MuJqSTW5G6M1l6Q86wYuWmo2p0=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 24701db4-af4c-471a-a2b2-08d6cc9f0a42
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Apr 2019 12:34:36.2588 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3898
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_053440_904050_99A7E9C1 
X-CRM114-Status: GOOD (  25.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.55 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Hi, Aisheng

> -----Original Message-----
> From: Aisheng Dong
> Sent: Monday, April 29, 2019 7:28 PM
> To: Anson Huang <anson.huang@nxp.com>; mturquette@baylibre.com;
> sboyd@kernel.org; shawnguo@kernel.org; s.hauer@pengutronix.de;
> kernel@pengutronix.de; festevam@gmail.com; linux-clk@vger.kernel.org;
> linux-arm-kernel@lists.infradead.org; linux-kernel@vger.kernel.org
> Cc: dl-linux-imx <linux-imx@nxp.com>
> Subject: RE: [PATCH] clk: imx: add fractional-N pll support to pllv4
> 
> > From: Anson Huang
> > Sent: Monday, April 29, 2019 11:19 AM
> >
> 
> clk: imx: pllv4: add fractional-N pll support

Will improve it in V2.

> > The pllv4 supports fractional-N function, the formula is:
> >
> > PLL output freq = input * (mult + num/denom),
> >
> > This patch adds fractional-N function support, including clock round
> > rate, calculate rate and set rate, with this patch, the clock rate of
> > APLL in clock tree is more accurate than before:
> >
> > Without fraction:
> > apll_pre_sel                      1        1        1    24000000
> > 0     0  50000
> >    apll_pre_div                   1        1        2    24000000
> > 0     0  50000
> >       apll                        1        1        2   528000000
> > 0     0  50000
> >          apll_pfd3                0        0        0   792000000
> > 0     0  50000
> >          apll_pfd2                0        0        0   339428571
> > 0     0  50000
> >          apll_pfd1                0        0        0   352000000
> > 0     0  50000
> >             usdhc0                0        0        0   352000000
> > 0     0  50000
> >          apll_pfd0                1        1        1   352000000
> > 0     0  50000
> >
> > With fraction:
> > apll_pre_sel                      1        1        1    24000000
> > 0     0  50000
> >    apll_pre_div                   1        1        2    24000000
> > 0     0  50000
> >       apll                        1        1        2   529200000
> > 0     0  50000
> >          apll_pfd3                0        0        0   793800000
> > 0     0  50000
> >          apll_pfd2                0        0        0   340200000
> > 0     0  50000
> >          apll_pfd1                0        0        0   352800000
> > 0     0  50000
> >             usdhc0                0        0        0   352800000
> > 0     0  50000
> >          apll_pfd0                1        1        1   352800000
> > 0     0  50000
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > ---
> >  drivers/clk/imx/clk-pllv4.c | 68
> > +++++++++++++++++++++++++++++++++++++++------
> >  1 file changed, 60 insertions(+), 8 deletions(-)
> >
> > diff --git a/drivers/clk/imx/clk-pllv4.c b/drivers/clk/imx/clk-pllv4.c
> > index d38bc9f..4ced5ca 100644
> > --- a/drivers/clk/imx/clk-pllv4.c
> > +++ b/drivers/clk/imx/clk-pllv4.c
> > @@ -64,13 +64,18 @@ static unsigned long clk_pllv4_recalc_rate(struct
> > clk_hw *hw,
> >  					   unsigned long parent_rate)
> >  {
> >  	struct clk_pllv4 *pll = to_clk_pllv4(hw);
> > -	u32 div;
> > +	u32 mult = readl_relaxed(pll->base + PLL_CFG_OFFSET);
> > +	u32 mfn = readl_relaxed(pll->base + PLL_NUM_OFFSET);
> > +	u32 mfd = readl_relaxed(pll->base + PLL_DENOM_OFFSET);
> 
> Nitpick:
> We usually don't write code like this.
> How about separate the assignment from declaration?

I will improve them in V2.

> 
> > +	u64 temp64 = parent_rate;
> >
> > -	div = readl_relaxed(pll->base + PLL_CFG_OFFSET);
> > -	div &= BM_PLL_MULT;
> > -	div >>= BP_PLL_MULT;
> > +	mult &= BM_PLL_MULT;
> > +	mult >>= BP_PLL_MULT;
> >
> > -	return parent_rate * div;
> > +	temp64 *= mfn;
> > +	do_div(temp64, mfd);
> > +
> > +	return (parent_rate * mult) + (u32)temp64;
> >  }
> >
> >  static long clk_pllv4_round_rate(struct clk_hw *hw, unsigned long
> > rate, @@
> > -78,14 +83,47 @@ static long clk_pllv4_round_rate(struct clk_hw *hw,
> > unsigned long rate,  {
> >  	unsigned long parent_rate = *prate;
> >  	unsigned long round_rate, i;
> > +	bool found = false;
> > +	u32 mfn, mfd = 1000000;
> > +	u32 max_mfd = 0x3FFFFFFF;
> 
> Please keep sort from long to short.
> And the multi Max_mfd definitions could be move out the function and
> Defined use macro.

OK, will improve them in V2.

> 
> > +	u64 temp64;
> >
> >  	for (i = 0; i < ARRAY_SIZE(pllv4_mult_table); i++) {
> >  		round_rate = parent_rate * pllv4_mult_table[i];
> > -		if (rate >= round_rate)
> > -			return round_rate;
> > +		if (rate >= round_rate) {
> > +			found = true;
> > +			break;
> > +		}
> > +	}
> > +
> > +	if (!found) {
> > +		pr_warn("%s: unable to round rate %lu, parent rate %lu\n",
> > +			clk_hw_get_name(hw), rate, parent_rate);
> > +		return 0;
> >  	}
> >
> > -	return round_rate;
> > +	if (parent_rate <= max_mfd)
> > +		mfd = parent_rate;
> > +
> > +	temp64 = (u64)(rate - round_rate);
> > +	temp64 *= mfd;
> > +	do_div(temp64, parent_rate);
> > +	mfn = temp64;
> > +
> > +	/*
> > +	 * NOTE: The value of numerator must always be configured to be
> > +	 * less than the value of the denominator. If we can't get a proper
> > +	 * pair of mfn/mfd, we simply return the round_rate without using
> > +	 * the frac part.
> > +	 */
> > +	if (mfn >= mfd)
> > +		return round_rate;
> > +
> > +	temp64 = (u64)parent_rate;
> > +	temp64 *= mfn;
> > +	do_div(temp64, mfd);
> > +
> > +	return round_rate + (u32)temp64;
> >  }
> >
> >  static bool clk_pllv4_is_valid_mult(unsigned int mult) @@ -106,17
> > +144,31 @@ static int clk_pllv4_set_rate(struct clk_hw *hw, unsigned long
> rate,  {
> >  	struct clk_pllv4 *pll = to_clk_pllv4(hw);
> >  	u32 val, mult;
> > +	u32 mfn, mfd = 1000000;
> > +	u32 max_mfd = 0x3FFFFFFF;
> 
> Ditto

OK.

Thanks, 
Anson.

> 
> Otherwise:
> Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>
> 
> Regards
> Dong Aisheng
> 
> > +	u64 temp64;
> >
> >  	mult = rate / parent_rate;
> >
> >  	if (!clk_pllv4_is_valid_mult(mult))
> >  		return -EINVAL;
> >
> > +	if (parent_rate <= max_mfd)
> > +		mfd = parent_rate;
> > +
> > +	temp64 = (u64)(rate - mult * parent_rate);
> > +	temp64 *= mfd;
> > +	do_div(temp64, parent_rate);
> > +	mfn = temp64;
> > +
> >  	val = readl_relaxed(pll->base + PLL_CFG_OFFSET);
> >  	val &= ~BM_PLL_MULT;
> >  	val |= mult << BP_PLL_MULT;
> >  	writel_relaxed(val, pll->base + PLL_CFG_OFFSET);
> >
> > +	writel_relaxed(mfn, pll->base + PLL_NUM_OFFSET);
> > +	writel_relaxed(mfd, pll->base + PLL_DENOM_OFFSET);
> > +
> >  	return 0;
> >  }
> >
> > --
> > 2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
