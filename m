Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A0721810E3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 07:40:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QSIdKDz1fX1O7I0D64flKMZvV09zsosELfEyfY5n8WY=; b=qNssN5igwiBNk1
	dInDmRnfREITvBgbTyCtfLgbjtfh1V90t0tRea4Y6czPsbCrFlMTw7rTkMembF1MFh9bOuEhCVPb9
	huaqSlnGKIBYwiMOm+ywmBc/qBU5Xa3SJf3w3+PkC3anD0KySUUIbsp5wpUf236iqhJp41+NSM5B5
	nqK3Ci6ttawdlcYSi/CWOL397ShSjfdVlbmwvmegBuT2J1ITZOIJNFat276eDgUaNM5U4aMTrk/EF
	PkyzDRTTb9ir2Pd4c/KAvqCz3KWUHeErE5CSYKEOhM4JzAxP/3dfqHDjXYCkwgcUdLqWC+xAMphDm
	R7kyf/NYT1Mwe+UqDcOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBv2V-0007yY-4Z; Wed, 11 Mar 2020 06:40:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBv2M-0007y3-VS
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 06:40:16 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1E2DB2192A;
 Wed, 11 Mar 2020 06:40:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583908814;
 bh=pmJS1KPAVu0tCjnfh13UknbuRkIWI610a6eXK2eKvFU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=din59zveAKkT42o8gjyMV9c31EJn1iJ/B75t1hHffEOkhU4QFIcVZ6M7l40ltYyD0
 4/axfTn//VT63Z/66gWFkte+SDZP2uiUoQdnywhYphWU3+2O7XRmpKd7YKwfnpVSew
 hrKlx4q9/mJ8sfF1bHt4Mo7YHXlN+82wH0w214Wg=
Date: Wed, 11 Mar 2020 14:40:05 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH 1/4] clk: imx8mn: A53 core clock no need to be critical
Message-ID: <20200311064005.GE29269@dragon>
References: <1582620554-32689-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1582620554-32689-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_234015_037690_0D425EE2 
X-CRM114-Status: GOOD (  14.46  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: peng.fan@nxp.com, fugang.duan@nxp.com, abel.vesa@nxp.com, sboyd@kernel.org,
 mturquette@baylibre.com, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, Linux-imx@nxp.com, kernel@pengutronix.de,
 leonard.crestez@nxp.com, festevam@gmail.com, s.hauer@pengutronix.de,
 linux-arm-kernel@lists.infradead.org, ping.bai@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 25, 2020 at 04:49:11PM +0800, Anson Huang wrote:
> 'A53_CORE' is just a mux and no need to be critical, being critical
> will cause its parent clock always ON which does NOT make sense,

I do not quite understand what problem this patch is trying to fix.  In
the end, all the ancestor clocks of "arm", including "arm_a53_core" will
still be ON, as "arm" has CLK_IS_CRITICAL flag.  What is the difference
you are trying to make here?

Shawn

> to make sure CPU's hardware clock source NOT being disabled during
> clock tree setup, need to move the 'A53_SRC'/'A53_CORE' reparent
> operations to after critical clock 'ARM_CLK' setup finished.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
>  drivers/clk/imx/clk-imx8mn.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/clk/imx/clk-imx8mn.c b/drivers/clk/imx/clk-imx8mn.c
> index 83618af..0bc7070 100644
> --- a/drivers/clk/imx/clk-imx8mn.c
> +++ b/drivers/clk/imx/clk-imx8mn.c
> @@ -428,7 +428,7 @@ static int imx8mn_clocks_probe(struct platform_device *pdev)
>  	hws[IMX8MN_CLK_GPU_SHADER_DIV] = hws[IMX8MN_CLK_GPU_SHADER];
>  
>  	/* CORE SEL */
> -	hws[IMX8MN_CLK_A53_CORE] = imx_clk_hw_mux2_flags("arm_a53_core", base + 0x9880, 24, 1, imx8mn_a53_core_sels, ARRAY_SIZE(imx8mn_a53_core_sels), CLK_IS_CRITICAL);
> +	hws[IMX8MN_CLK_A53_CORE] = imx_clk_hw_mux2("arm_a53_core", base + 0x9880, 24, 1, imx8mn_a53_core_sels, ARRAY_SIZE(imx8mn_a53_core_sels));
>  
>  	/* BUS */
>  	hws[IMX8MN_CLK_MAIN_AXI] = imx8m_clk_hw_composite_critical("main_axi", imx8mn_main_axi_sels, base + 0x8800);
> @@ -559,15 +559,15 @@ static int imx8mn_clocks_probe(struct platform_device *pdev)
>  
>  	hws[IMX8MN_CLK_DRAM_ALT_ROOT] = imx_clk_hw_fixed_factor("dram_alt_root", "dram_alt", 1, 4);
>  
> -	clk_hw_set_parent(hws[IMX8MN_CLK_A53_SRC], hws[IMX8MN_SYS_PLL1_800M]);
> -	clk_hw_set_parent(hws[IMX8MN_CLK_A53_CORE], hws[IMX8MN_ARM_PLL_OUT]);
> -
>  	hws[IMX8MN_CLK_ARM] = imx_clk_hw_cpu("arm", "arm_a53_core",
>  					   hws[IMX8MN_CLK_A53_CORE]->clk,
>  					   hws[IMX8MN_CLK_A53_CORE]->clk,
>  					   hws[IMX8MN_ARM_PLL_OUT]->clk,
>  					   hws[IMX8MN_CLK_A53_DIV]->clk);
>  
> +	clk_hw_set_parent(hws[IMX8MN_CLK_A53_SRC], hws[IMX8MN_SYS_PLL1_800M]);
> +	clk_hw_set_parent(hws[IMX8MN_CLK_A53_CORE], hws[IMX8MN_ARM_PLL_OUT]);
> +
>  	imx_check_clk_hws(hws, IMX8MN_CLK_END);
>  
>  	ret = of_clk_add_hw_provider(np, of_clk_hw_onecell_get, clk_hw_data);
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
