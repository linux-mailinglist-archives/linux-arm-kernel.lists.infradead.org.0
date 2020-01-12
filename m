Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A17F13849D
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 Jan 2020 03:41:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/Icq3BhqaTLs44P3aQ0jT8lDh4biac8550dMC9+nvPc=; b=MRvGFVLCw2RFgJ
	wTy+37JFtPhnuiCrdQbPt5CpkSa3RWHonXsSKOkIoW+a2vt4u3gkWMndZWMA/aKBLncU/8Qoxj1LY
	TNKp19G043vecshvxfDnR8ch2kIx2Pe70nkhcd9yS7+lL5gX7D4OyKppfAVNXSN/qSV9wOUAuKz/R
	AiSRXZJYwZeRRFThXpVUrutUgqALLfO/9tB0h8YvmsHa/bW+YwCA6Pi8rXn0wvxmCjuXMcbjastkQ
	ZGQQPUDYBv6FHOpPjBfnl28sbofL0nEl4VCPy2iuEebRHp8Yz31PJHg5F4jw8PoSdJvmLHJi7Hiye
	fFsqIYzT9fFkFWoI9Dbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqTBY-0001Ac-DK; Sun, 12 Jan 2020 02:41:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqTBS-0001AD-AH
 for linux-arm-kernel@lists.infradead.org; Sun, 12 Jan 2020 02:40:59 +0000
Received: from T480 (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5380C2084D;
 Sun, 12 Jan 2020 02:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578796858;
 bh=/IIGU/qgpqqRTXW8bMohqvTwPewVuB6W2G42p3yc9HE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ImEJwUTEMXWvenNIqnbvhqnBQZTjX3B2m84HwCyMPCThfYeDfZcKPhf5Ad1ba/AGu
 3jUgo70nCH90gVas+ybFyBfGoQ6IH50MOlI9oC3FUlmnda/OMf6m0Tn/YnQ/tMYwSq
 2U2c4xFwQS/G9z1C/+zgJZGiNu5kQQ126qwJYp+0=
Date: Sun, 12 Jan 2020 10:40:48 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH 3/3] clk: imx: imx8m: use imx_clk_hw_pll14xx_flags for
 dram pll
Message-ID: <20200112024046.GZ4456@T480>
References: <1577696903-27870-1-git-send-email-peng.fan@nxp.com>
 <1577696903-27870-4-git-send-email-peng.fan@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1577696903-27870-4-git-send-email-peng.fan@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200111_184058_398631_77E2805F 
X-CRM114-Status: GOOD (  17.06  )
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
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 30, 2019 at 09:13:10AM +0000, Peng Fan wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> Use imx_clk_hw_pll14xx_flags for dram pll.
> Modify imx_1443x_dram_pll to imx_1443x_dram_readonly, because dram pll
> is not expected to be modified from Linux.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>  drivers/clk/imx/clk-imx8mm.c  | 2 +-
>  drivers/clk/imx/clk-imx8mn.c  | 2 +-
>  drivers/clk/imx/clk-pll14xx.c | 3 +--
>  drivers/clk/imx/clk.h         | 2 +-
>  4 files changed, 4 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/clk/imx/clk-imx8mm.c b/drivers/clk/imx/clk-imx8mm.c
> index 2ed93fc25087..55862652b19f 100644
> --- a/drivers/clk/imx/clk-imx8mm.c
> +++ b/drivers/clk/imx/clk-imx8mm.c
> @@ -337,7 +337,7 @@ static int imx8mm_clocks_probe(struct platform_device *pdev)
>  	hws[IMX8MM_AUDIO_PLL1] = imx_clk_hw_pll14xx("audio_pll1", "audio_pll1_ref_sel", base, &imx_1443x_pll);
>  	hws[IMX8MM_AUDIO_PLL2] = imx_clk_hw_pll14xx("audio_pll2", "audio_pll2_ref_sel", base + 0x14, &imx_1443x_pll);
>  	hws[IMX8MM_VIDEO_PLL1] = imx_clk_hw_pll14xx("video_pll1", "video_pll1_ref_sel", base + 0x28, &imx_1443x_pll);
> -	hws[IMX8MM_DRAM_PLL] = imx_clk_hw_pll14xx("dram_pll", "dram_pll_ref_sel", base + 0x50, &imx_1443x_dram_pll);
> +	hws[IMX8MM_DRAM_PLL] = imx_clk_hw_pll14xx_flags("dram_pll", "dram_pll_ref_sel", base + 0x50, &imx_1443x_pll_readonly, CLK_GET_RATE_NOCACHE);
>  	hws[IMX8MM_GPU_PLL] = imx_clk_hw_pll14xx("gpu_pll", "gpu_pll_ref_sel", base + 0x64, &imx_1416x_pll);
>  	hws[IMX8MM_VPU_PLL] = imx_clk_hw_pll14xx("vpu_pll", "vpu_pll_ref_sel", base + 0x74, &imx_1416x_pll);
>  	hws[IMX8MM_ARM_PLL] = imx_clk_hw_pll14xx("arm_pll", "arm_pll_ref_sel", base + 0x84, &imx_1416x_pll);
> diff --git a/drivers/clk/imx/clk-imx8mn.c b/drivers/clk/imx/clk-imx8mn.c
> index c5e7316b4c66..e4710d3cf3e0 100644
> --- a/drivers/clk/imx/clk-imx8mn.c
> +++ b/drivers/clk/imx/clk-imx8mn.c
> @@ -334,7 +334,7 @@ static int imx8mn_clocks_probe(struct platform_device *pdev)
>  	hws[IMX8MN_AUDIO_PLL1] = imx_clk_hw_pll14xx("audio_pll1", "audio_pll1_ref_sel", base, &imx_1443x_pll);
>  	hws[IMX8MN_AUDIO_PLL2] = imx_clk_hw_pll14xx("audio_pll2", "audio_pll2_ref_sel", base + 0x14, &imx_1443x_pll);
>  	hws[IMX8MN_VIDEO_PLL1] = imx_clk_hw_pll14xx("video_pll1", "video_pll1_ref_sel", base + 0x28, &imx_1443x_pll);
> -	hws[IMX8MN_DRAM_PLL] = imx_clk_hw_pll14xx("dram_pll", "dram_pll_ref_sel", base + 0x50, &imx_1443x_dram_pll);
> +	hws[IMX8MN_DRAM_PLL] = imx_clk_hw_pll14xx_flags("dram_pll", "dram_pll_ref_sel", base + 0x50, &imx_1443x_pll_readonly, CLK_GET_RATE_NOCACHE);
>  	hws[IMX8MN_GPU_PLL] = imx_clk_hw_pll14xx("gpu_pll", "gpu_pll_ref_sel", base + 0x64, &imx_1416x_pll);
>  	hws[IMX8MN_VPU_PLL] = imx_clk_hw_pll14xx("vpu_pll", "vpu_pll_ref_sel", base + 0x74, &imx_1416x_pll);
>  	hws[IMX8MN_ARM_PLL] = imx_clk_hw_pll14xx("arm_pll", "arm_pll_ref_sel", base + 0x84, &imx_1416x_pll);
> diff --git a/drivers/clk/imx/clk-pll14xx.c b/drivers/clk/imx/clk-pll14xx.c
> index 030159dc4884..33236d8580a6 100644
> --- a/drivers/clk/imx/clk-pll14xx.c
> +++ b/drivers/clk/imx/clk-pll14xx.c
> @@ -67,9 +67,8 @@ struct imx_pll14xx_clk imx_1443x_pll = {
>  	.rate_count = ARRAY_SIZE(imx_pll1443x_tbl),
>  };
>  
> -struct imx_pll14xx_clk imx_1443x_dram_pll = {
> +struct imx_pll14xx_clk imx_1443x_pll_readonly = {
>  	.type = PLL_1443X,
> -	.flags = CLK_GET_RATE_NOCACHE,

Not really sure what we gain from creating a new function and moving the
flag from here to there.  I'm personally not fond of it.

Shawn

>  };
>  
>  struct imx_pll14xx_clk imx_1416x_pll = {
> diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
> index 35a9d294b6df..ea84d2993b57 100644
> --- a/drivers/clk/imx/clk.h
> +++ b/drivers/clk/imx/clk.h
> @@ -53,7 +53,7 @@ struct imx_pll14xx_clk {
>  
>  extern struct imx_pll14xx_clk imx_1416x_pll;
>  extern struct imx_pll14xx_clk imx_1443x_pll;
> -extern struct imx_pll14xx_clk imx_1443x_dram_pll;
> +extern struct imx_pll14xx_clk imx_1443x_pll_readonly;
>  
>  #define imx_clk_cpu(name, parent_name, div, mux, pll, step) \
>  	to_clk(imx_clk_hw_cpu(name, parent_name, div, mux, pll, step))
> -- 
> 2.16.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
