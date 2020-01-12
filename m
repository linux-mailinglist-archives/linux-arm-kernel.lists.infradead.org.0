Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0BD8138492
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 Jan 2020 03:33:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mVb2uGv45HFO5qGeFr5GnFFD1CddtD/QCTH5GrmjNVY=; b=X6FOEYV5PRYLPf
	Ohps3rH0YTbB9ql61MZ0tA95ICuvVJXbTHNyprB+XsXkNSYwf3LsQsPsQnJGkcOfPheRUpSbaW+Yw
	DcBuv8DgyNnzJocmM7vsfbxWRj9AcXGZQy1plIzUA/Xywuk431Ien3zCDhPkWLOH3pCUBMa65LEfw
	7JXJF8/8ZZ4ysi3JKp2IDsxzQlOqgBTPCR4RGk4nRUGVKGsXwMLVxkA4EjyxZQvjxem1xDHFMliFg
	aSRHVCjgz2Sv4ybSYh+Z0AXXsMEHebuaPRTlz16gbZRnPCkuh36Ihi2FEpU+KBjOREQwuuXYFgFal
	cjhjIBZmVpLmTEXMi4LA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqT3s-0006KK-GP; Sun, 12 Jan 2020 02:33:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqT3k-0006Jx-P0
 for linux-arm-kernel@lists.infradead.org; Sun, 12 Jan 2020 02:33:02 +0000
Received: from T480 (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 645F020848;
 Sun, 12 Jan 2020 02:32:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578796380;
 bh=YRjvlsgTQuj3u/TvrEuaCjHvc+8K0Fs4QuWe6tKRScc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=l6g4ajT4+0Mr+WYNrKFrvvSJJNJvYkHNG0j9MSzzXTtNPmBFoqpQR4MOkTSIhcuLk
 F/MC8iFih1/iDbLj1m7bHlBuGzm84duo4vQoLt6B2IRW6ktcMWr4gtM+y9VSYaqXp8
 J3UIhN+oAHG0CI70PyjrR2yFE20OakC10FSx24BE=
Date: Sun, 12 Jan 2020 10:32:49 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Peng Fan <peng.fan@nxp.com>, Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH 1/3] clk: imx: pll14xx: avoid modify dram pll
Message-ID: <20200112023248.GY4456@T480>
References: <1577696903-27870-1-git-send-email-peng.fan@nxp.com>
 <1577696903-27870-2-git-send-email-peng.fan@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1577696903-27870-2-git-send-email-peng.fan@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200111_183300_835568_0A96381F 
X-CRM114-Status: GOOD (  15.77  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <anson.huang@nxp.com>, "sboyd@kernel.org" <sboyd@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 30, 2019 at 09:13:00AM +0000, Peng Fan wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> The dram pll is only expected to be modified in firmware,
> so we should only support read clk frequency in Linux Kernel.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

@Leonard, do you agree?

Shawn

> ---
>  drivers/clk/imx/clk-pll14xx.c | 11 ++++++++---
>  1 file changed, 8 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/clk/imx/clk-pll14xx.c b/drivers/clk/imx/clk-pll14xx.c
> index 5b0519a81a7a..9288b21d4d59 100644
> --- a/drivers/clk/imx/clk-pll14xx.c
> +++ b/drivers/clk/imx/clk-pll14xx.c
> @@ -69,8 +69,6 @@ struct imx_pll14xx_clk imx_1443x_pll = {
>  
>  struct imx_pll14xx_clk imx_1443x_dram_pll = {
>  	.type = PLL_1443X,
> -	.rate_table = imx_pll1443x_tbl,
> -	.rate_count = ARRAY_SIZE(imx_pll1443x_tbl),
>  	.flags = CLK_GET_RATE_NOCACHE,
>  };
>  
> @@ -376,6 +374,10 @@ static const struct clk_ops clk_pll1443x_ops = {
>  	.set_rate	= clk_pll1443x_set_rate,
>  };
>  
> +static const struct clk_ops clk_pll1443x_min_ops = {
> +	.recalc_rate	= clk_pll1443x_recalc_rate,
> +};
> +
>  struct clk_hw *imx_clk_hw_pll14xx(const char *name, const char *parent_name,
>  				  void __iomem *base,
>  				  const struct imx_pll14xx_clk *pll_clk)
> @@ -403,7 +405,10 @@ struct clk_hw *imx_clk_hw_pll14xx(const char *name, const char *parent_name,
>  			init.ops = &clk_pll1416x_ops;
>  		break;
>  	case PLL_1443X:
> -		init.ops = &clk_pll1443x_ops;
> +		if (!pll_clk->rate_table)
> +			init.ops = &clk_pll1443x_min_ops;
> +		else
> +			init.ops = &clk_pll1443x_ops;
>  		break;
>  	default:
>  		pr_err("%s: Unknown pll type for pll clk %s\n",
> -- 
> 2.16.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
