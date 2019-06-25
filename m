Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BEBD5590B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 22:39:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=047aNLfSr7gDql5FFnkSSJ3ZmpE5afu9LsI7Ul6I/3g=; b=BXiWHeMbIV0ubM
	s0hHiZqzA1O+z4WKwq/IBl5SanyQYpuO2Qc33j4yI9YyXB4O+nddbRkps3oBYtkimLweuyXRqlMe9
	LHr9FB0EMbv4vLvoLJ4LHi8WjQtgsGS2UB2UiRX4QeDwPMQxj5BRAUb3Jmyx0+8PzCjbNgyebK0xZ
	lyK8Jr90lsyoU1+yTi/nsbemF398nWf+EfLh9q5JMFJIXLmcb+Q92RZwofksdt3mj3YGzeuC3EP7j
	3JU8HTxu/sHwXJFz1xkfyj3/1d43nxrQUn16JrrRkVcozwumKkbkXN/1dSessBhj5rXv+G1oa3xDF
	osdRdbsGd37LwUcjvGXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfsEO-0007NF-GR; Tue, 25 Jun 2019 20:39:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfsE9-0007Mo-Du
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 20:39:42 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 15C94205ED;
 Tue, 25 Jun 2019 20:39:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561495181;
 bh=j3KZFviB5Xle6qBDzGdMd3VNiDKlu0Os1FHRxXh+iWE=;
 h=In-Reply-To:References:To:From:Subject:Cc:Date:From;
 b=xUFoVMMARF1CYfZ3FYmhyNeW9XHtmic9ocPCrbnTXm90L1w97pfhFjGEWr55wLxa4
 ROSkUwmC8AKfCd63ZqTeQh1+ic2CEJIeGW/yM8H0Y67yBEdMYOnvEOkCOISqoh0h6t
 tfDb3nBB6leXGBqFZc1m+hvKt4/dzPM7a92iMM+c=
MIME-Version: 1.0
In-Reply-To: <1561373672-3533-1-git-send-email-abel.vesa@nxp.com>
References: <1561373672-3533-1-git-send-email-abel.vesa@nxp.com>
To: Abel Vesa <abel.vesa@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 Fabio Estevam <fabio.estevam@nxp.com>, Jacky Bai <ping.bai@nxp.com>,
 Mike Turquette <mturquette@baylibre.com>, Sascha Hauer <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH] clk: imx8mm: Switch to platform driver
User-Agent: alot/0.8.1
Date: Tue, 25 Jun 2019 13:39:40 -0700
Message-Id: <20190625203941.15C94205ED@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_133941_485343_686D7FF9 
X-CRM114-Status: GOOD (  12.40  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Abel Vesa <abel.vesa@nxp.com>, NXP Linux Team <linux-imx@nxp.com>,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Abel Vesa (2019-06-24 03:54:32)
> In order to make the clock provider a platform driver
> all the data and code needs to be outside of .init section.

Yes, but why are you making this change in general?

> 
> Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
[...]
> @@ -480,7 +481,7 @@ static int __init imx8mm_clocks_init(struct device_node *ccm_node)
>         clks[IMX8MM_SYS_PLL2_500M] = imx_clk_fixed_factor("sys_pll2_500m", "sys_pll2_out", 1, 2);
>         clks[IMX8MM_SYS_PLL2_1000M] = imx_clk_fixed_factor("sys_pll2_1000m", "sys_pll2_out", 1, 1);
>  
> -       np = ccm_node;
> +       np = dev->of_node;
>         base = of_iomap(np, 0);

If we're using platform device here it would be nice to also use
platform device APIs to map memory and request resources, etc.

>         if (WARN_ON(!base))
>                 return -ENOMEM;
> @@ -682,4 +683,19 @@ static int __init imx8mm_clocks_init(struct device_node *ccm_node)
>  
>         return 0;
>  }
> -CLK_OF_DECLARE_DRIVER(imx8mm, "fsl,imx8mm-ccm", imx8mm_clocks_init);
> +
> +static const struct of_device_id imx8mm_clk_of_match[] = {
> +       { .compatible = "fsl,imx8mm-ccm" },
> +       { /* Sentinel */ },
> +};
> +MODULE_DEVICE_TABLE(of, imx8mm_clk_of_match);
> +
> +

Nitpick: Drop the second newline.

> +static struct platform_driver imx8mm_clk_driver = {
> +       .probe = imx8mm_clocks_probe,
> +       .driver = {
> +               .name = "imx8mm-ccm",
> +               .of_match_table = of_match_ptr(imx8mm_clk_of_match),
> +       },
> +};
> +module_platform_driver(imx8mm_clk_driver);

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
