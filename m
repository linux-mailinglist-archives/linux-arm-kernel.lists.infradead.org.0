Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86D71E144
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 13:28:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0EAzJO9hsVZeZIY6jq4L4izE7Merd81J8w0r2r8tiV4=; b=KJq7aCKjXuqMIn
	V1uPG+bdN3gVxfMbhK8CA9ctC/rdVD6hhPhz1LQOg3jEGMLqEGMtcBuz4TSbeFvMWgqvwlquEsL8o
	VR8aMvcAvGY8FlDHlfost1IPrKKRfht2syJkE5Wzb3GGlGCNpy0i5HIWhCGrOisJIIhpgrrEMrNX0
	Y5NqVbd9VWuq/gQucR86qtx2XhyPCM4Mvscmp91j7Gnna8+r0sAibbND5AAtsiduVr4YEQXpyPkMB
	+GWqBmfw/go1AkBkYKx7zEzaHz7mKmzlVAVzqjsjppxv2DYyVjGQeV/sCgnX6ERyP5GQCDfYPaxFp
	HBaxhZUnqGr2/g5lqrTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL4SX-00088b-D1; Mon, 29 Apr 2019 11:28:33 +0000
Received: from mail-eopbgr10088.outbound.protection.outlook.com ([40.107.1.88]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL4SP-000889-E2
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 11:28:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SuAPYH8onV8p+o4fwQ4cbwM57P+pq8KZDTReELUQ8xg=;
 b=T4b7i5aFZLq8+ZRqWZrE1zs/UF85GAhdgXzFxofxE0+oFUY+Yt9ebGf9HxWvNl7altWwxEGJL+eI3gf15lsGIu6W3J33UEB/wASo4y876YK1RV3DVkC/ruAMjJi0KR9tFj/mr3n0ZoUvPNDZVG03qrKmiJSbtTYyIOU5OvfCkZM=
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com (52.134.92.158) by
 AM0PR04MB5955.eurprd04.prod.outlook.com (20.178.112.75) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.13; Mon, 29 Apr 2019 11:28:21 +0000
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::8cda:4e52:8e87:8f0e]) by AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::8cda:4e52:8e87:8f0e%2]) with mapi id 15.20.1835.018; Mon, 29 Apr 2019
 11:28:21 +0000
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
Thread-Index: AQHU/jo/D2ZwDi5WREOeVbOKgmEXYaZS+19A
Date: Mon, 29 Apr 2019 11:28:21 +0000
Message-ID: <AM0PR04MB4211D3F29BCA3727E799005F80390@AM0PR04MB4211.eurprd04.prod.outlook.com>
References: <1556507637-22847-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1556507637-22847-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f3be9bbf-0288-458a-83a6-08d6cc95c934
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB5955; 
x-ms-traffictypediagnostic: AM0PR04MB5955:
x-microsoft-antispam-prvs: <AM0PR04MB595598056691505BEF31D68C80390@AM0PR04MB5955.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-forefront-prvs: 0022134A87
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(396003)(376002)(136003)(346002)(366004)(189003)(199004)(26005)(86362001)(6436002)(186003)(476003)(7696005)(11346002)(99286004)(229853002)(486006)(74316002)(71200400001)(6506007)(316002)(33656002)(55016002)(97736004)(256004)(9686003)(8936002)(44832011)(71190400001)(305945005)(68736007)(102836004)(7736002)(2201001)(2501003)(73956011)(66476007)(6116002)(76116006)(66066001)(446003)(25786009)(66446008)(3846002)(64756008)(66556008)(81166006)(4326008)(2906002)(66946007)(110136005)(81156014)(6246003)(52536014)(14454004)(76176011)(53936002)(478600001)(8676002)(5660300002)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5955;
 H:AM0PR04MB4211.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 0bG7w104ECuOkT4DOz574ISk7hnNW1HpyKlAcDbt9Q9klsuSrcL8K8aytoRD3cyNs6Ua03AsixWg67J2wQ4xRK5rveocUP7Qmb2CUHMsWyLXaEzKvHSP2fZ8B5uGoubIy415l1kQGXW+WeWdSw6Nft6QeAlRWcFEmV529JIFoC+erkn1eAIlH7idcApvoa/a41zVJaaCYeuSuMnHuZb3ozhsIK7wzYAPn8QwDQzays93NrCmD+94mahpYO81k7tFGioyVFyOH2/QESkCie7btn70VfCPzV3w7LlgHRk4FSY12irohN3KNipVnFeQM3eN9EkVcq4m+/V/W9bYHaL0UtTIuGSbyugT9g3V/CuYdlgLzcDgaKnnp52NFl9a5cPBCcZqUaD0Yjo+Ib3+Q8hwynkVD8quLUU8TyVEBNB/D8U=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f3be9bbf-0288-458a-83a6-08d6cc95c934
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Apr 2019 11:28:21.6418 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5955
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_042825_566825_C983984E 
X-CRM114-Status: GOOD (  22.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.88 listed in list.dnswl.org]
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

> From: Anson Huang
> Sent: Monday, April 29, 2019 11:19 AM
> 

clk: imx: pllv4: add fractional-N pll support

> The pllv4 supports fractional-N function, the formula is:
> 
> PLL output freq = input * (mult + num/denom),
> 
> This patch adds fractional-N function support, including clock round rate,
> calculate rate and set rate, with this patch, the clock rate of APLL in clock tree
> is more accurate than before:
> 
> Without fraction:
> apll_pre_sel                      1        1        1    24000000
> 0     0  50000
>    apll_pre_div                   1        1        2    24000000
> 0     0  50000
>       apll                        1        1        2   528000000
> 0     0  50000
>          apll_pfd3                0        0        0   792000000
> 0     0  50000
>          apll_pfd2                0        0        0   339428571
> 0     0  50000
>          apll_pfd1                0        0        0   352000000
> 0     0  50000
>             usdhc0                0        0        0   352000000
> 0     0  50000
>          apll_pfd0                1        1        1   352000000
> 0     0  50000
> 
> With fraction:
> apll_pre_sel                      1        1        1    24000000
> 0     0  50000
>    apll_pre_div                   1        1        2    24000000
> 0     0  50000
>       apll                        1        1        2   529200000
> 0     0  50000
>          apll_pfd3                0        0        0   793800000
> 0     0  50000
>          apll_pfd2                0        0        0   340200000
> 0     0  50000
>          apll_pfd1                0        0        0   352800000
> 0     0  50000
>             usdhc0                0        0        0   352800000
> 0     0  50000
>          apll_pfd0                1        1        1   352800000
> 0     0  50000
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
>  drivers/clk/imx/clk-pllv4.c | 68
> +++++++++++++++++++++++++++++++++++++++------
>  1 file changed, 60 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/clk/imx/clk-pllv4.c b/drivers/clk/imx/clk-pllv4.c index
> d38bc9f..4ced5ca 100644
> --- a/drivers/clk/imx/clk-pllv4.c
> +++ b/drivers/clk/imx/clk-pllv4.c
> @@ -64,13 +64,18 @@ static unsigned long clk_pllv4_recalc_rate(struct
> clk_hw *hw,
>  					   unsigned long parent_rate)
>  {
>  	struct clk_pllv4 *pll = to_clk_pllv4(hw);
> -	u32 div;
> +	u32 mult = readl_relaxed(pll->base + PLL_CFG_OFFSET);
> +	u32 mfn = readl_relaxed(pll->base + PLL_NUM_OFFSET);
> +	u32 mfd = readl_relaxed(pll->base + PLL_DENOM_OFFSET);

Nitpick:
We usually don't write code like this.
How about separate the assignment from declaration?

> +	u64 temp64 = parent_rate;
> 
> -	div = readl_relaxed(pll->base + PLL_CFG_OFFSET);
> -	div &= BM_PLL_MULT;
> -	div >>= BP_PLL_MULT;
> +	mult &= BM_PLL_MULT;
> +	mult >>= BP_PLL_MULT;
> 
> -	return parent_rate * div;
> +	temp64 *= mfn;
> +	do_div(temp64, mfd);
> +
> +	return (parent_rate * mult) + (u32)temp64;
>  }
> 
>  static long clk_pllv4_round_rate(struct clk_hw *hw, unsigned long rate, @@
> -78,14 +83,47 @@ static long clk_pllv4_round_rate(struct clk_hw *hw,
> unsigned long rate,  {
>  	unsigned long parent_rate = *prate;
>  	unsigned long round_rate, i;
> +	bool found = false;
> +	u32 mfn, mfd = 1000000;
> +	u32 max_mfd = 0x3FFFFFFF;

Please keep sort from long to short.
And the multi Max_mfd definitions could be move out the function and
Defined use macro.

> +	u64 temp64;
> 
>  	for (i = 0; i < ARRAY_SIZE(pllv4_mult_table); i++) {
>  		round_rate = parent_rate * pllv4_mult_table[i];
> -		if (rate >= round_rate)
> -			return round_rate;
> +		if (rate >= round_rate) {
> +			found = true;
> +			break;
> +		}
> +	}
> +
> +	if (!found) {
> +		pr_warn("%s: unable to round rate %lu, parent rate %lu\n",
> +			clk_hw_get_name(hw), rate, parent_rate);
> +		return 0;
>  	}
> 
> -	return round_rate;
> +	if (parent_rate <= max_mfd)
> +		mfd = parent_rate;
> +
> +	temp64 = (u64)(rate - round_rate);
> +	temp64 *= mfd;
> +	do_div(temp64, parent_rate);
> +	mfn = temp64;
> +
> +	/*
> +	 * NOTE: The value of numerator must always be configured to be
> +	 * less than the value of the denominator. If we can't get a proper
> +	 * pair of mfn/mfd, we simply return the round_rate without using
> +	 * the frac part.
> +	 */
> +	if (mfn >= mfd)
> +		return round_rate;
> +
> +	temp64 = (u64)parent_rate;
> +	temp64 *= mfn;
> +	do_div(temp64, mfd);
> +
> +	return round_rate + (u32)temp64;
>  }
> 
>  static bool clk_pllv4_is_valid_mult(unsigned int mult) @@ -106,17 +144,31
> @@ static int clk_pllv4_set_rate(struct clk_hw *hw, unsigned long rate,  {
>  	struct clk_pllv4 *pll = to_clk_pllv4(hw);
>  	u32 val, mult;
> +	u32 mfn, mfd = 1000000;
> +	u32 max_mfd = 0x3FFFFFFF;

Ditto

Otherwise:
Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>

Regards
Dong Aisheng

> +	u64 temp64;
> 
>  	mult = rate / parent_rate;
> 
>  	if (!clk_pllv4_is_valid_mult(mult))
>  		return -EINVAL;
> 
> +	if (parent_rate <= max_mfd)
> +		mfd = parent_rate;
> +
> +	temp64 = (u64)(rate - mult * parent_rate);
> +	temp64 *= mfd;
> +	do_div(temp64, parent_rate);
> +	mfn = temp64;
> +
>  	val = readl_relaxed(pll->base + PLL_CFG_OFFSET);
>  	val &= ~BM_PLL_MULT;
>  	val |= mult << BP_PLL_MULT;
>  	writel_relaxed(val, pll->base + PLL_CFG_OFFSET);
> 
> +	writel_relaxed(mfn, pll->base + PLL_NUM_OFFSET);
> +	writel_relaxed(mfd, pll->base + PLL_DENOM_OFFSET);
> +
>  	return 0;
>  }
> 
> --
> 2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
