Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFB0110E429
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 02:18:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IS0Ggd1Powd6Q0zABC5V9wzUcL3fD0+HNkk6zPRtxsk=; b=IUTPLPhHZ1uL5R
	PHd91gTFH2sRqPreXoJZj8LWIzm+eQfwkK/+omnbCy13xSPhSymTEQ8ipfaxzZFEUHzBa92K8Uj9+
	EV4pfSl5PDwhPmbXyU4bTy8U2NCoXD7KMQhmKYH5Nj7j3LsD0K0aoyURS2NpC/nFkQg1nPmqvjKnJ
	niuMk3rCoNU0vCDnqPYTu+Pq7PNf7wuwuMOz5ncuX1i+vyRqWCHW03uWfjumumcD77htpABQef/nZ
	WQqqZCp/h6AaE5fjh8IQrtH2wSxLjXfMb/+PildgGs43shcMsY8r//E25Ar1jbss213hm2R8tASls
	FyhyF2R48IZfvLRVkabw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibaLc-0005cF-3G; Mon, 02 Dec 2019 01:17:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibaLU-0005bp-Ci
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 01:17:49 +0000
Received: from dragon (li2093-158.members.linode.com [172.105.159.158])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E5F972146E;
 Mon,  2 Dec 2019 01:17:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575249467;
 bh=r++ufhdV5NVlSi05PmMJPmTLWPGMRkuNwvrCIPM7vWw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=dBh24tZKD/7zjoNqX/NGFOhKLsn/+CaaH6xJ3LPngO06Ux87Flqd/FQZcn/gD86TC
 PXD0O7Ra/Us4zbtu5wLWVxbed0ogucnybU2uYKmfnrm2+MhEXa2aLS8IBync2gsJdP
 Jo+cRbi2jWVEXggGXxMViRUsGUUwX3ebLPAmux4k=
Date: Mon, 2 Dec 2019 09:17:24 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH 1/7] clk: imx: clk-pll14xx: Switch to clk_hw based API
Message-ID: <20191202011721.GA17574@dragon>
References: <1572356175-24950-1-git-send-email-peng.fan@nxp.com>
 <1572356175-24950-2-git-send-email-peng.fan@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1572356175-24950-2-git-send-email-peng.fan@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191201_171748_473294_E2595D76 
X-CRM114-Status: GOOD (  16.90  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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

On Tue, Oct 29, 2019 at 01:40:54PM +0000, Peng Fan wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> Switch the imx_clk_pll14xx function to clk_hw based API, rename
> accordingly and add a macro for clk based legacy. This allows us to
> move closer to a clear split between consumer and provider clk APIs.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>  drivers/clk/imx/clk-pll14xx.c | 22 +++++++++++++---------
>  drivers/clk/imx/clk.h         |  8 ++++++--
>  2 files changed, 19 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/clk/imx/clk-pll14xx.c b/drivers/clk/imx/clk-pll14xx.c
> index 5c458199060a..fa76e04251c4 100644
> --- a/drivers/clk/imx/clk-pll14xx.c
> +++ b/drivers/clk/imx/clk-pll14xx.c
> @@ -369,13 +369,14 @@ static const struct clk_ops clk_pll1443x_ops = {
>  	.set_rate	= clk_pll1443x_set_rate,
>  };
>  
> -struct clk *imx_clk_pll14xx(const char *name, const char *parent_name,
> -			    void __iomem *base,
> -			    const struct imx_pll14xx_clk *pll_clk)
> +struct clk_hw *imx_clk_hw_pll14xx(const char *name, const char *parent_name,
> +				  void __iomem *base,
> +				  const struct imx_pll14xx_clk *pll_clk)
>  {
>  	struct clk_pll14xx *pll;
> -	struct clk *clk;
> +	struct clk_hw *hw;
>  	struct clk_init_data init;
> +	int ret;
>  	u32 val;
>  
>  	pll = kzalloc(sizeof(*pll), GFP_KERNEL);
> @@ -412,12 +413,15 @@ struct clk *imx_clk_pll14xx(const char *name, const char *parent_name,
>  	val &= ~BYPASS_MASK;
>  	writel_relaxed(val, pll->base + GNRL_CTL);
>  
> -	clk = clk_register(NULL, &pll->hw);
> -	if (IS_ERR(clk)) {
> -		pr_err("%s: failed to register pll %s %lu\n",
> -			__func__, name, PTR_ERR(clk));
> +	hw = &pll->hw;
> +
> +	ret = clk_hw_register(NULL, hw);
> +	if (ret) {
> +		pr_err("%s: failed to register pll %s %d\n",
> +			__func__, name, ret);
>  		kfree(pll);
> +		return ERR_PTR(ret);
>  	}
>  
> -	return clk;
> +	return hw;
>  }
> diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
> index bc5bb6ac8636..5038622f1a72 100644
> --- a/drivers/clk/imx/clk.h
> +++ b/drivers/clk/imx/clk.h
> @@ -97,8 +97,12 @@ extern struct imx_pll14xx_clk imx_1443x_pll;
>  #define imx_clk_mux(name, reg, shift, width, parents, num_parents) \
>  	imx_clk_hw_mux(name, reg, shift, width, parents, num_parents)->clk
>  
> -struct clk *imx_clk_pll14xx(const char *name, const char *parent_name,
> -		 void __iomem *base, const struct imx_pll14xx_clk *pll_clk);
> +#define imx_clk_pll14xx(name, parent_name, base, pll_clk) \
> +	imx_clk_hw_pll14xx(name, parent_name, base, pll_clk)->clk
> +

I would suggest to use an inline function for this, which will be more
readable and complying to kernel coding style.

Shawn

> +struct clk_hw *imx_clk_hw_pll14xx(const char *name, const char *parent_name,
> +				  void __iomem *base,
> +				  const struct imx_pll14xx_clk *pll_clk);
>  
>  struct clk *imx_clk_pllv1(enum imx_pllv1_type type, const char *name,
>  		const char *parent, void __iomem *base);
> -- 
> 2.16.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
