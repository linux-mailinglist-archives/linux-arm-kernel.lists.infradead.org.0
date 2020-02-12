Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F25A15AA3F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 14:43:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v9AmhI52c3pFmEqY35e4FoOjQ/vBVE7yTy2eLuH1kjQ=; b=CEbOfI8I5Z+hP5
	6fQOqgOmrl0/65FX9uBAq8o3lMCU0v9AworTQ/K9spYFGrCb5J/ISPgUCKdPPYkA+nCwlfPtGSLLz
	aRHDax3zkU6CDr1Il1mwLZ/RchhIjyFX0oqFex1firdBgRqG3B2GzVvIRQQuyjUR637Comf5ClehI
	tJ2zHFJiigWnv6HeSQbbUfrxLonrJUi9qGxK9P3/ZvH/UhdpDAt0I9XWRT+hQoBhzd4nNY7HCFhi0
	oxmwl5cLuKtSmJn/VMa9K+7lPvVuePZ/wXs16o8eviy2XvOIxbjLR2mbvU/uUpgcMCHB2PNWwAsee
	h+kPIh2YH+HFOpeEp8hQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1sIa-0007K4-5s; Wed, 12 Feb 2020 13:43:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1sIS-0007JV-V3
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 13:43:22 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9472B20659;
 Wed, 12 Feb 2020 13:43:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581515000;
 bh=RyH5BpIDL+snfwEceJMsCwZMW95mIcwtxxUrP+t4iMk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=yHxUXOC/S2bhTnBm9s8RmqKobxJpohO/5ffVQyQEefl8GQ7QntBoeBNH3NbTekfC5
 t4LqfUYeg20fwLzINNmzQOdtJ2sL27RA+2qlePMD7bldk9rEpTgDEjshtQDhNoA9Ez
 yPPJLaTluvjyNuUXZp/lmIeNfATxxAngQJ6gNZV8=
Date: Wed, 12 Feb 2020 21:43:12 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH V2 1/4] clk: imx: imx8mq: fix a53 cpu clock
Message-ID: <20200212134310.GG11096@dragon>
References: <1578986576-6168-1-git-send-email-peng.fan@nxp.com>
 <1578986576-6168-2-git-send-email-peng.fan@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1578986576-6168-2-git-send-email-peng.fan@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_054321_046978_A981EC9E 
X-CRM114-Status: GOOD (  18.62  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <anson.huang@nxp.com>, "sboyd@kernel.org" <sboyd@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 14, 2020 at 07:27:15AM +0000, Peng Fan wrote:
> From: Peng Fan <peng.fan@nxp.com>

The 'imx: ' in subject is not really needed.  'clk: imx8mq: ' should be
already clear enough.

> 
> The A53 CCM clk root only accepts input up to 1GHz, CCM A53 root
> signoff timing is 1Ghz,

Is this restriction mentioned in any document? 

> however the A53 core which sources from CCM
> root could run above 1GHz which voilates the CCM.

s/voilates/violates

> 
> There is a CORE_SEL slice before A53 core, we need configure the

s/need/need to

> CORE_SEL slice source from ARM PLL, not A53 CCM clk root.
> 
> The A53 CCM clk root should only be used when need to change ARM PLL
> frequency.
> 
> Add arm_a53_core clk that could source from arm_a53_div and arm_pll_out.
> Configure a53 ccm root sources from 800MHz sys pll
> Configure a53 core sources from arm_pll_out
> Mark arm_a53_core as critical clock
> 
> Fixes: db27e40b27f1 ("clk: imx8mq: Add the missing ARM clock")

We have been running this for quite a while with OPPs above 1GHz.  Why
didn't we hear any issue report?

Shawn

> Reviewed-by: Jacky Bai <ping.bai@nxp.com>
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
> 
> V2:
>  None
> 
>  drivers/clk/imx/clk-imx8mq.c             | 16 ++++++++++++----
>  include/dt-bindings/clock/imx8mq-clock.h |  4 +++-
>  2 files changed, 15 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/clk/imx/clk-imx8mq.c b/drivers/clk/imx/clk-imx8mq.c
> index b031183ff427..82a16b8e98a9 100644
> --- a/drivers/clk/imx/clk-imx8mq.c
> +++ b/drivers/clk/imx/clk-imx8mq.c
> @@ -41,6 +41,8 @@ static const char * const video2_pll_out_sels[] = {"video2_pll1_ref_sel", };
>  static const char * const imx8mq_a53_sels[] = {"osc_25m", "arm_pll_out", "sys2_pll_500m", "sys2_pll_1000m",
>  					"sys1_pll_800m", "sys1_pll_400m", "audio_pll1_out", "sys3_pll_out", };
>  
> +static const char * const imx8mq_a53_core_sels[] = {"arm_a53_div", "arm_pll_out", };
> +
>  static const char * const imx8mq_arm_m4_sels[] = {"osc_25m", "sys2_pll_200m", "sys2_pll_250m", "sys1_pll_266m",
>  					"sys1_pll_800m", "audio_pll1_out", "video_pll1_out", "sys3_pll_out", };
>  
> @@ -411,6 +413,9 @@ static int imx8mq_clocks_probe(struct platform_device *pdev)
>  	hws[IMX8MQ_CLK_GPU_CORE_DIV] = imx8m_clk_hw_composite_core("gpu_core_div", imx8mq_gpu_core_sels, base + 0x8180);
>  	hws[IMX8MQ_CLK_GPU_SHADER_DIV] = imx8m_clk_hw_composite("gpu_shader_div", imx8mq_gpu_shader_sels, base + 0x8200);
>  
> +	/* CORE SEL */
> +	hws[IMX8MQ_CLK_A53_CORE] = imx_clk_hw_mux2_flags("arm_a53_core", base + 0x9880, 24, 1, imx8mq_a53_core_sels, ARRAY_SIZE(imx8mq_a53_core_sels), CLK_IS_CRITICAL);
> +
>  	/* BUS */
>  	hws[IMX8MQ_CLK_MAIN_AXI] = imx8m_clk_hw_composite_critical("main_axi", imx8mq_main_axi_sels, base + 0x8800);
>  	hws[IMX8MQ_CLK_ENET_AXI] = imx8m_clk_hw_composite("enet_axi", imx8mq_enet_axi_sels, base + 0x8880);
> @@ -574,11 +579,14 @@ static int imx8mq_clocks_probe(struct platform_device *pdev)
>  	hws[IMX8MQ_GPT_3M_CLK] = imx_clk_hw_fixed_factor("gpt_3m", "osc_25m", 1, 8);
>  	hws[IMX8MQ_CLK_DRAM_ALT_ROOT] = imx_clk_hw_fixed_factor("dram_alt_root", "dram_alt", 1, 4);
>  
> -	hws[IMX8MQ_CLK_ARM] = imx_clk_hw_cpu("arm", "arm_a53_div",
> -					   hws[IMX8MQ_CLK_A53_DIV]->clk,
> -					   hws[IMX8MQ_CLK_A53_SRC]->clk,
> +	clk_hw_set_parent(hws[IMX8MQ_CLK_A53_SRC], hws[IMX8MQ_SYS1_PLL_800M]);
> +	clk_hw_set_parent(hws[IMX8MQ_CLK_A53_CORE], hws[IMX8MQ_ARM_PLL_OUT]);
> +
> +	hws[IMX8MQ_CLK_ARM] = imx_clk_hw_cpu("arm", "arm_a53_core",
> +					   hws[IMX8MQ_CLK_A53_CORE]->clk,
> +					   hws[IMX8MQ_CLK_A53_CORE]->clk,
>  					   hws[IMX8MQ_ARM_PLL_OUT]->clk,
> -					   hws[IMX8MQ_SYS1_PLL_800M]->clk);
> +					   hws[IMX8MQ_CLK_A53_DIV]->clk);
>  
>  	imx_check_clk_hws(hws, IMX8MQ_CLK_END);
>  
> diff --git a/include/dt-bindings/clock/imx8mq-clock.h b/include/dt-bindings/clock/imx8mq-clock.h
> index 3bab9b21c8d7..ac71e9e502b8 100644
> --- a/include/dt-bindings/clock/imx8mq-clock.h
> +++ b/include/dt-bindings/clock/imx8mq-clock.h
> @@ -424,6 +424,8 @@
>  #define IMX8MQ_SYS2_PLL_500M_CG			283
>  #define IMX8MQ_SYS2_PLL_1000M_CG		284
>  
> -#define IMX8MQ_CLK_END				285
> +#define IMX8MQ_CLK_A53_CORE			285
> +
> +#define IMX8MQ_CLK_END				286
>  
>  #endif /* __DT_BINDINGS_CLOCK_IMX8MQ_H */
> -- 
> 2.16.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
