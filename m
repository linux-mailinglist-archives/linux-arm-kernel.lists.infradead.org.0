Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFE5FE6E8A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 09:53:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cIFVY+6o6tiDZRQJesPuQCa6liMExy3JSUpky+ew4WA=; b=bpitZ6LEK74qIY
	WA+1/VNK5Y8tLig7mrpjBHVy9ui0rw2RtwSzfcoP13nf655zZBaKwGos5FwGJRGIQEGMHrdtiQAMC
	OiKEG0uigEv/7JefCR26HZJmPEGOB5pjpOWB4wDDYaN3Xtm5eAPhKAiBNqQZn4/JExvzS6SpRHgSI
	oR/gQCyx1bWA1ljnIPReJ/CJsRGydwkKOTF9YNX+PPNsGb9OTSh2sx/LpnlsnUfMzbbT9MNPvSGXm
	pwro25RAcrM511k6SETaokgvlTkEbEaPiHETrWwj8CrkueuVyLuORU13PEb+5L6A/o3d3x+mo5wqo
	V4JxYPP8Xk2P/mncpzKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP0mH-0002mZ-T2; Mon, 28 Oct 2019 08:53:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP0m8-0002m1-LZ
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 08:53:22 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A049320B7C;
 Mon, 28 Oct 2019 08:53:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572252800;
 bh=sje/naToVwhIk0khoE4ly4GBr5AykbI6l4IxHlquzXI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=eirtUJY0Fn/DBz9mj7Na0vO1p409aFKZz7RA1F8MCV7EZ2SRt3xK79XUE0jaPSQGT
 VxjmVFXe9hYUoWrnMmU7MeZTWCSULuRJqSp+kdy7ayLuL498nhbF4I53DLMG7DkVbj
 ZI0reb0b8x/gXa9dHhpAqOYspEtPIYsKo/XMOdwQ=
Date: Mon, 28 Oct 2019 16:53:00 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH] clk: imx: imx8mq: fix sys2/3_pll_out_sels
Message-ID: <20191028085258.GZ16985@dragon>
References: <1571900044-22079-1-git-send-email-peng.fan@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1571900044-22079-1-git-send-email-peng.fan@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_015320_747706_3D742329 
X-CRM114-Status: GOOD (  15.52  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

@Abel, comments?

Shawn

On Thu, Oct 24, 2019 at 06:57:21AM +0000, Peng Fan wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> The current clk tree shows:
>  osc_25m                              9       11        0    25000000          0     0  50000
>     sys2_pll1_ref_sel                 1        1        0    25000000          0     0  50000
>        sys3_pll_out                   1        1        0    25000000          0     0  50000
>     sys1_pll1_ref_sel                 2        2        0    25000000          0     0  50000
>        sys2_pll_out                   6        6        0  1000000000          0     0  50000
> 
> It is not correct that sys3_pll_out use sys2_pll1_ref_sel as parent,
> sys2_pll_out use sys1_pll1_ref_sel as parent.
> 
> According to the current imx_clk_sccg_pll design, it uses both
> bypass1/2, however set bypass2 as 1 is not correct, because it will
> make sys[x]_pll_out use wrong parent and might access wrong registers.
> 
> So correct bypass2 to 0 and fix sys2/3_pll_out_sels.
> 
> After fix, the tree shows:
>  osc_25m                             10       12        0    25000000          0     0  50000
>     sys3_pll1_ref_sel                 1        1        0    25000000          0     0  50000
>        sys3_pll_out                   1        1        0    25000000          0     0  50000
>     sys2_pll1_ref_sel                 1        1        0    25000000          0     0  50000
>        sys2_pll_out                   6        6        0  1000000000          0     0  50000
>     sys1_pll1_ref_sel                 1        1        0    25000000          0     0  50000
>        sys1_pll_out                   5        5        0   800000000          0     0  50000
> 
> Fixes: e9dda4af685f ("clk: imx: Refactor entire sccg pll clk")
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>  drivers/clk/imx/clk-imx8mq.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/clk/imx/clk-imx8mq.c b/drivers/clk/imx/clk-imx8mq.c
> index 05ece7b5da54..e17f0ebfacb0 100644
> --- a/drivers/clk/imx/clk-imx8mq.c
> +++ b/drivers/clk/imx/clk-imx8mq.c
> @@ -35,8 +35,8 @@ static const char * const audio_pll2_bypass_sels[] = {"audio_pll2", "audio_pll2_
>  static const char * const video_pll1_bypass_sels[] = {"video_pll1", "video_pll1_ref_sel", };
>  
>  static const char * const sys1_pll_out_sels[] = {"sys1_pll1_ref_sel", };
> -static const char * const sys2_pll_out_sels[] = {"sys1_pll1_ref_sel", "sys2_pll1_ref_sel", };
> -static const char * const sys3_pll_out_sels[] = {"sys3_pll1_ref_sel", "sys2_pll1_ref_sel", };
> +static const char * const sys2_pll_out_sels[] = {"sys2_pll1_ref_sel", };
> +static const char * const sys3_pll_out_sels[] = {"sys3_pll1_ref_sel", };
>  static const char * const dram_pll_out_sels[] = {"dram_pll1_ref_sel", };
>  static const char * const video2_pll_out_sels[] = {"video2_pll1_ref_sel", };
>  
> @@ -345,8 +345,8 @@ static int imx8mq_clocks_probe(struct platform_device *pdev)
>  	clks[IMX8MQ_VIDEO_PLL1_OUT] = imx_clk_gate("video_pll1_out", "video_pll1_bypass", base + 0x10, 21);
>  
>  	clks[IMX8MQ_SYS1_PLL_OUT] = imx_clk_sccg_pll("sys1_pll_out", sys1_pll_out_sels, ARRAY_SIZE(sys1_pll_out_sels), 0, 0, 0, base + 0x30, CLK_IS_CRITICAL);
> -	clks[IMX8MQ_SYS2_PLL_OUT] = imx_clk_sccg_pll("sys2_pll_out", sys2_pll_out_sels, ARRAY_SIZE(sys2_pll_out_sels), 0, 0, 1, base + 0x3c, CLK_IS_CRITICAL);
> -	clks[IMX8MQ_SYS3_PLL_OUT] = imx_clk_sccg_pll("sys3_pll_out", sys3_pll_out_sels, ARRAY_SIZE(sys3_pll_out_sels), 0, 0, 1, base + 0x48, CLK_IS_CRITICAL);
> +	clks[IMX8MQ_SYS2_PLL_OUT] = imx_clk_sccg_pll("sys2_pll_out", sys2_pll_out_sels, ARRAY_SIZE(sys2_pll_out_sels), 0, 0, 0, base + 0x3c, CLK_IS_CRITICAL);
> +	clks[IMX8MQ_SYS3_PLL_OUT] = imx_clk_sccg_pll("sys3_pll_out", sys3_pll_out_sels, ARRAY_SIZE(sys3_pll_out_sels), 0, 0, 0, base + 0x48, CLK_IS_CRITICAL);
>  	clks[IMX8MQ_DRAM_PLL_OUT] = imx_clk_sccg_pll("dram_pll_out", dram_pll_out_sels, ARRAY_SIZE(dram_pll_out_sels), 0, 0, 0, base + 0x60, CLK_IS_CRITICAL);
>  	clks[IMX8MQ_VIDEO2_PLL_OUT] = imx_clk_sccg_pll("video2_pll_out", video2_pll_out_sels, ARRAY_SIZE(video2_pll_out_sels), 0, 0, 0, base + 0x54, 0);
>  
> -- 
> 2.16.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
