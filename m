Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC321E164
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 13:36:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JhE9kKnQrEbcwdYB8L21fxb1UuBZBfudVR49Gxoa9+o=; b=AZHF7K4S/VKD2n
	KwuvamfIW+x+42QpLEnbOaGIkLXPx0b2JAM5REWjwc433coH2qIf0vMNew/Vig201nw20kwRQB/xw
	icZgIhVca96c9TrhJfJo8RsQDWgJsKvjmomYUZoqFqRcpJtxE1tjo8QvgZYUIkPs1jkeyQUiynHDB
	mW9zJlneTT/YuDhWDPMj0SlBOQZWtm+Lz0hwhJ1r+aUbcWrWpzYvC8sa+OdFSahZ2xBVo++wWcQBy
	wdea2SOn5UKQnE3uWsUZFBESjGoa7zM9vaL+U6uQw7FUVTNlCL5PVZsitoX2+0NRdtgR/av0KpSjR
	Wmgoh2eHLm7qsaIE7taQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL4Zn-00039a-0u; Mon, 29 Apr 2019 11:36:03 +0000
Received: from mail-ve1eur01on061b.outbound.protection.outlook.com
 ([2a01:111:f400:fe1f::61b]
 helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL4Zf-000398-AI
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 11:35:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jV4/6Lujlp5jIxWhQum3Fei2QB+WFq541K+dMe5UHME=;
 b=KRJTgEDBYu7c6vKTdAUWDNle4aYUlZSwfUOcGpKS8OEUWYoEAd6e0SFD7ER2kk/zLFWsw2OvSylDeyH3X4bjw7cFXIFKmhx9fuTMB08MJpAYuX8jcVZpsCTqbqeeuJ5phmX+XmYoQepFpMbNamJ4gqivNxAfrKUzgKamD6nJHq0=
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com (52.134.92.158) by
 AM0PR04MB4801.eurprd04.prod.outlook.com (20.177.41.155) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.15; Mon, 29 Apr 2019 11:35:49 +0000
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::8cda:4e52:8e87:8f0e]) by AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::8cda:4e52:8e87:8f0e%2]) with mapi id 15.20.1835.018; Mon, 29 Apr 2019
 11:35:49 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "mturquette@baylibre.com"
 <mturquette@baylibre.com>, "sboyd@kernel.org" <sboyd@kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, "linux-clk@vger.kernel.org"
 <linux-clk@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH] clk: imx: add fractional-N pll support to pllv4
Thread-Topic: [PATCH] clk: imx: add fractional-N pll support to pllv4
Thread-Index: AQHU/jo/D2ZwDi5WREOeVbOKgmEXYaZS+19AgAAF+XA=
Date: Mon, 29 Apr 2019 11:35:49 +0000
Message-ID: <AM0PR04MB42114EE6EC3AB19089202B4B80390@AM0PR04MB4211.eurprd04.prod.outlook.com>
References: <1556507637-22847-1-git-send-email-Anson.Huang@nxp.com>
 <AM0PR04MB4211D3F29BCA3727E799005F80390@AM0PR04MB4211.eurprd04.prod.outlook.com>
In-Reply-To: <AM0PR04MB4211D3F29BCA3727E799005F80390@AM0PR04MB4211.eurprd04.prod.outlook.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e79beced-3fa8-4795-89c5-08d6cc96d3e2
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4801; 
x-ms-traffictypediagnostic: AM0PR04MB4801:
x-microsoft-antispam-prvs: <AM0PR04MB4801275F50015D9EC602C0E780390@AM0PR04MB4801.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0022134A87
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(136003)(346002)(396003)(366004)(39860400002)(199004)(189003)(99286004)(66946007)(14454004)(66476007)(76116006)(64756008)(66446008)(66556008)(76176011)(53546011)(102836004)(486006)(476003)(446003)(26005)(6506007)(186003)(71190400001)(71200400001)(11346002)(5660300002)(3846002)(73956011)(256004)(6116002)(86362001)(2201001)(55016002)(7696005)(2906002)(229853002)(478600001)(6436002)(53936002)(9686003)(74316002)(81156014)(7736002)(66066001)(2940100002)(305945005)(93156006)(6246003)(97736004)(2501003)(316002)(8936002)(33656002)(44832011)(52536014)(4326008)(81166006)(25786009)(110136005)(8676002)(68736007)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4801;
 H:AM0PR04MB4211.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: LZKrC8ZK3UWipHhDTMzUJhP1l9rYzNqLu2wNTKO1FR1sKA518tSGmhGDKwGtcQOpRb//pudONUogbTOKlfNVFCLSfnIxCH+LCFDfJqj5qQgdYYI0oCvuTpJdzLRrxys5vOYFCyfOEUsKwVlm28pGsbc+7YzvH/oJpA6OZCjIAbBXDet05rX/hXOFRrnLkJ8W2W7ZPFbyQZ7YF+YQEkMV/G78qLPuO8B28DhklVavNPqTidhb8iy+ic/An6jGvi3wxswAFKEj6OusPZZ/sok6hJkSJu7ulllCd9HSJo2T5CQRN8T31W6JRda1/RRGtvlcz3001yOsw3yby4WXcljCeJ7ly40dy/fhL3jPh5tV7cQsuuXjIHIWPFcKn0ODUeXR2ztbi1ky+PiM4Zfd/i6glJ/QZP1cKyGUxaJcFiYsCCg=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e79beced-3fa8-4795-89c5-08d6cc96d3e2
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Apr 2019 11:35:49.0632 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4801
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_043555_364121_76223360 
X-CRM114-Status: GOOD (  24.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe1f:0:0:0:61b listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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

> From: Aisheng Dong
> Sent: Monday, April 29, 2019 7:28 PM
> Subject: RE: [PATCH] clk: imx: add fractional-N pll support to pllv4
> > The pllv4 supports fractional-N function, the formula is:
> >
> > PLL output freq = input * (mult + num/denom),
> >
> > This patch adds fractional-N function support, including clock round
> > rate, calculate rate and set rate, with this patch, the clock rate of
> > APLL in clock tree is more accurate than before:
> >

BTW, one more question:
Does B0 chip support fractional for SPLL as this patch affects both APLL and SPLL?
I did not see NUM&DENOM register for SPLL in my doc, not sure if it's latest version.

Regards
Dong Aisheng

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
> >             usdhc0                0        0        0
> 352000000
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
> >             usdhc0                0        0        0
> 352800000
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
