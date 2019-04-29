Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40B38E2B8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 14:33:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q+3tJP9SPvw3NnFzNXM7IjkMak6Jg+qWdJb1snLTplo=; b=gZCWP9TupfVYrj
	QTY1Vq2dekR/V8OMTbVVg9kH4kraaRNhb/cw8YUv2KQnXFXCUbxFY8xnA5e6Wzg/0lWfciMxPSnLY
	479sf8uzmjJad4fA+dZXsRpf91irb//xnTo9RCD+lsz0eIpkXu9TwzrY6uRO5w39DUVqGWnfuvn5m
	TVmfvs8+AF2Zrf364SFuWNgCaBMytItWavYvrXcBClDcfLJaCEaTi5GKyTZBukZipN8hcJ37YigaD
	j+caR4luRrZ6/8aiUBRVTWs7+5KbimBbmkcQX4cL1gFSqGBKwM3jGHef77k0MMj7QNCi7okmxzi4Y
	5wwsyK5OB+87K934SsCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL5TA-0005Xy-CY; Mon, 29 Apr 2019 12:33:16 +0000
Received: from mail-eopbgr70042.outbound.protection.outlook.com ([40.107.7.42]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL5T2-0005XU-Dh
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 12:33:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3mwciFaGHZkXmEc4ttuvaVTUKcIT5pzYMfk5wWbAlOA=;
 b=N80JkWThZ1yVzB8XSuyD8e4WVNrU4Kf5RzlFTfios3jLwE4t4sExyj5nY2dGcBRXtOqzvPaRhQFcajS6E3DTM/czDux/thPsVFfr0jk2/RC9JGE9sDekh2nbsJ+rDwYe6c8Ihg6jKxmA0jwk5k7PKG1J4AEdsCwL97ygzjodj+Q=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3738.eurprd04.prod.outlook.com (52.134.70.145) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.15; Mon, 29 Apr 2019 12:33:04 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e8ca:4f6b:e43:c170]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e8ca:4f6b:e43:c170%3]) with mapi id 15.20.1835.018; Mon, 29 Apr 2019
 12:33:04 +0000
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
Thread-Index: AQHU/jo/D2ZwDi5WREOeVbOKgmEXYaZS+19AgAAF+XCAABEhEA==
Date: Mon, 29 Apr 2019 12:33:04 +0000
Message-ID: <DB3PR0402MB3916926286A5F4AE1B0E82A3F5390@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1556507637-22847-1-git-send-email-Anson.Huang@nxp.com>
 <AM0PR04MB4211D3F29BCA3727E799005F80390@AM0PR04MB4211.eurprd04.prod.outlook.com>
 <AM0PR04MB42114EE6EC3AB19089202B4B80390@AM0PR04MB4211.eurprd04.prod.outlook.com>
In-Reply-To: <AM0PR04MB42114EE6EC3AB19089202B4B80390@AM0PR04MB4211.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4e0337cc-a20b-48f1-5250-08d6cc9ed37f
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3738; 
x-ms-traffictypediagnostic: DB3PR0402MB3738:
x-microsoft-antispam-prvs: <DB3PR0402MB3738BC6F247E7191F7DC8E65F5390@DB3PR0402MB3738.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3173;
x-forefront-prvs: 0022134A87
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(396003)(136003)(39860400002)(366004)(376002)(13464003)(189003)(199004)(110136005)(99286004)(316002)(53936002)(6246003)(9686003)(25786009)(55016002)(33656002)(229853002)(5660300002)(4326008)(76176011)(7696005)(8936002)(97736004)(6436002)(52536014)(446003)(476003)(11346002)(14454004)(26005)(66066001)(71190400001)(6506007)(102836004)(2906002)(486006)(76116006)(53546011)(71200400001)(3846002)(68736007)(186003)(305945005)(2201001)(256004)(2501003)(478600001)(73956011)(86362001)(66946007)(66556008)(64756008)(66446008)(66476007)(74316002)(44832011)(8676002)(7736002)(6116002)(81156014)(81166006)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3738;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: A7/0Fi3O+zXkN3kIKQUl9+TyyZ5mJ3a6g1As7BFMPnJW5+b5bTSx+EtCak9x/DoUBtbeAxRc/GGSUpsqXu3W/5IE+6jDxe6jv4c1yGjvju8vDW2C6eoeHNeSpl6pWDbnlyt++sfY/OOgoN8vdupD3uP5jbZLKComRDIefeZj8FSTXV8YilZctJVI7LhGpAFWEgXRM7L66RMAdL9fQxGy45xJd89xVzqAe43YZPcZadOmMgQiESZVyQ2TQXhTz8/kfmTYXuq/5OzxKbqvW5XvxWEKifzc3wm8FtSOC79fqQd95FrXIYqlclgcwvJuAMOCaIIv2C4f3ks7MkPnLU2O5v8y+jrVV0lDvMcFlwEu7t2OQt+C8dKsmjBdMAJztJQwVs2v8PLALfD86Hy9iwXxGlk+2xQMmHgsmxlXi98UBN4=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4e0337cc-a20b-48f1-5250-08d6cc9ed37f
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Apr 2019 12:33:04.3018 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3738
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_053308_527594_B0F3F46D 
X-CRM114-Status: GOOD (  25.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.42 listed in list.dnswl.org]
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
> Sent: Monday, April 29, 2019 7:36 PM
> To: Anson Huang <anson.huang@nxp.com>; mturquette@baylibre.com;
> sboyd@kernel.org; shawnguo@kernel.org; s.hauer@pengutronix.de;
> kernel@pengutronix.de; festevam@gmail.com; linux-clk@vger.kernel.org;
> linux-arm-kernel@lists.infradead.org; linux-kernel@vger.kernel.org
> Cc: dl-linux-imx <linux-imx@nxp.com>
> Subject: RE: [PATCH] clk: imx: add fractional-N pll support to pllv4
> 
> > From: Aisheng Dong
> > Sent: Monday, April 29, 2019 7:28 PM
> > Subject: RE: [PATCH] clk: imx: add fractional-N pll support to pllv4
> > > The pllv4 supports fractional-N function, the formula is:
> > >
> > > PLL output freq = input * (mult + num/denom),
> > >
> > > This patch adds fractional-N function support, including clock round
> > > rate, calculate rate and set rate, with this patch, the clock rate
> > > of APLL in clock tree is more accurate than before:
> > >
> 
> BTW, one more question:
> Does B0 chip support fractional for SPLL as this patch affects both APLL and
> SPLL?
> I did not see NUM&DENOM register for SPLL in my doc, not sure if it's latest
> version.

There are NUM&DENOM for both SPLL and APLL in reference manual, my RM is
V2(2.0), published on 12/2017.

Anson.

> 
> Regards
> Dong Aisheng
> 
> > > Without fraction:
> > > apll_pre_sel                      1        1        1    24000000
> > > 0     0  50000
> > >    apll_pre_div                   1        1        2    24000000
> > > 0     0  50000
> > >       apll                        1        1        2   528000000
> > > 0     0  50000
> > >          apll_pfd3                0        0        0   792000000
> > > 0     0  50000
> > >          apll_pfd2                0        0        0   339428571
> > > 0     0  50000
> > >          apll_pfd1                0        0        0   352000000
> > > 0     0  50000
> > >             usdhc0                0        0        0
> > 352000000
> > > 0     0  50000
> > >          apll_pfd0                1        1        1   352000000
> > > 0     0  50000
> > >
> > > With fraction:
> > > apll_pre_sel                      1        1        1    24000000
> > > 0     0  50000
> > >    apll_pre_div                   1        1        2    24000000
> > > 0     0  50000
> > >       apll                        1        1        2   529200000
> > > 0     0  50000
> > >          apll_pfd3                0        0        0   793800000
> > > 0     0  50000
> > >          apll_pfd2                0        0        0   340200000
> > > 0     0  50000
> > >          apll_pfd1                0        0        0   352800000
> > > 0     0  50000
> > >             usdhc0                0        0        0
> > 352800000
> > > 0     0  50000
> > >          apll_pfd0                1        1        1   352800000
> > > 0     0  50000
> > >
> > > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > > ---
> > >  drivers/clk/imx/clk-pllv4.c | 68
> > > +++++++++++++++++++++++++++++++++++++++------
> > >  1 file changed, 60 insertions(+), 8 deletions(-)
> > >
> > > diff --git a/drivers/clk/imx/clk-pllv4.c
> > > b/drivers/clk/imx/clk-pllv4.c index d38bc9f..4ced5ca 100644
> > > --- a/drivers/clk/imx/clk-pllv4.c
> > > +++ b/drivers/clk/imx/clk-pllv4.c
> > > @@ -64,13 +64,18 @@ static unsigned long
> > > clk_pllv4_recalc_rate(struct clk_hw *hw,
> > >  					   unsigned long parent_rate)
> > >  {
> > >  	struct clk_pllv4 *pll = to_clk_pllv4(hw);
> > > -	u32 div;
> > > +	u32 mult = readl_relaxed(pll->base + PLL_CFG_OFFSET);
> > > +	u32 mfn = readl_relaxed(pll->base + PLL_NUM_OFFSET);
> > > +	u32 mfd = readl_relaxed(pll->base + PLL_DENOM_OFFSET);
> >
> > Nitpick:
> > We usually don't write code like this.
> > How about separate the assignment from declaration?
> >
> > > +	u64 temp64 = parent_rate;
> > >
> > > -	div = readl_relaxed(pll->base + PLL_CFG_OFFSET);
> > > -	div &= BM_PLL_MULT;
> > > -	div >>= BP_PLL_MULT;
> > > +	mult &= BM_PLL_MULT;
> > > +	mult >>= BP_PLL_MULT;
> > >
> > > -	return parent_rate * div;
> > > +	temp64 *= mfn;
> > > +	do_div(temp64, mfd);
> > > +
> > > +	return (parent_rate * mult) + (u32)temp64;
> > >  }
> > >
> > >  static long clk_pllv4_round_rate(struct clk_hw *hw, unsigned long
> > > rate, @@
> > > -78,14 +83,47 @@ static long clk_pllv4_round_rate(struct clk_hw *hw,
> > > unsigned long rate,  {
> > >  	unsigned long parent_rate = *prate;
> > >  	unsigned long round_rate, i;
> > > +	bool found = false;
> > > +	u32 mfn, mfd = 1000000;
> > > +	u32 max_mfd = 0x3FFFFFFF;
> >
> > Please keep sort from long to short.
> > And the multi Max_mfd definitions could be move out the function and
> > Defined use macro.
> >
> > > +	u64 temp64;
> > >
> > >  	for (i = 0; i < ARRAY_SIZE(pllv4_mult_table); i++) {
> > >  		round_rate = parent_rate * pllv4_mult_table[i];
> > > -		if (rate >= round_rate)
> > > -			return round_rate;
> > > +		if (rate >= round_rate) {
> > > +			found = true;
> > > +			break;
> > > +		}
> > > +	}
> > > +
> > > +	if (!found) {
> > > +		pr_warn("%s: unable to round rate %lu, parent rate %lu\n",
> > > +			clk_hw_get_name(hw), rate, parent_rate);
> > > +		return 0;
> > >  	}
> > >
> > > -	return round_rate;
> > > +	if (parent_rate <= max_mfd)
> > > +		mfd = parent_rate;
> > > +
> > > +	temp64 = (u64)(rate - round_rate);
> > > +	temp64 *= mfd;
> > > +	do_div(temp64, parent_rate);
> > > +	mfn = temp64;
> > > +
> > > +	/*
> > > +	 * NOTE: The value of numerator must always be configured to be
> > > +	 * less than the value of the denominator. If we can't get a proper
> > > +	 * pair of mfn/mfd, we simply return the round_rate without using
> > > +	 * the frac part.
> > > +	 */
> > > +	if (mfn >= mfd)
> > > +		return round_rate;
> > > +
> > > +	temp64 = (u64)parent_rate;
> > > +	temp64 *= mfn;
> > > +	do_div(temp64, mfd);
> > > +
> > > +	return round_rate + (u32)temp64;
> > >  }
> > >
> > >  static bool clk_pllv4_is_valid_mult(unsigned int mult) @@ -106,17
> > > +144,31 @@ static int clk_pllv4_set_rate(struct clk_hw *hw, unsigned
> > > +long
> > rate,  {
> > >  	struct clk_pllv4 *pll = to_clk_pllv4(hw);
> > >  	u32 val, mult;
> > > +	u32 mfn, mfd = 1000000;
> > > +	u32 max_mfd = 0x3FFFFFFF;
> >
> > Ditto
> >
> > Otherwise:
> > Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>
> >
> > Regards
> > Dong Aisheng
> >
> > > +	u64 temp64;
> > >
> > >  	mult = rate / parent_rate;
> > >
> > >  	if (!clk_pllv4_is_valid_mult(mult))
> > >  		return -EINVAL;
> > >
> > > +	if (parent_rate <= max_mfd)
> > > +		mfd = parent_rate;
> > > +
> > > +	temp64 = (u64)(rate - mult * parent_rate);
> > > +	temp64 *= mfd;
> > > +	do_div(temp64, parent_rate);
> > > +	mfn = temp64;
> > > +
> > >  	val = readl_relaxed(pll->base + PLL_CFG_OFFSET);
> > >  	val &= ~BM_PLL_MULT;
> > >  	val |= mult << BP_PLL_MULT;
> > >  	writel_relaxed(val, pll->base + PLL_CFG_OFFSET);
> > >
> > > +	writel_relaxed(mfn, pll->base + PLL_NUM_OFFSET);
> > > +	writel_relaxed(mfd, pll->base + PLL_DENOM_OFFSET);
> > > +
> > >  	return 0;
> > >  }
> > >
> > > --
> > > 2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
