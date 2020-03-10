Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF4DA17F05C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 07:10:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SmmLs/rF5AvxooWSJVRcVXlvdcxwb+et92kZ6sCq11A=; b=N+BxVKtj0DXqrC
	ZC6N/MIHuTiT4rmoC5WjI6zC0ij+ycrNJljTX1kBLHBZXfUPu3bgdnuZBifzfDNPlDtDUd0NAANkh
	Z7+PraN6ZfHYTpPL7/S7yftVwyZlV9YAEwXmqsw33i0tmtNmdS5F8Gwh33gIZpgi/9e5sYijHZYGX
	vFL7tSQoTTI6wcFS7IjQfR3GzUgaFk8lPhwrTARk0wvvy4aezsjo3w3JH5+QBJwf2J5bVl2tXOBnU
	FIjv8hmuix7B2JUzUe0ts1BaqJpJqSKaGXshiCN4hq6LbUwNZ83FIieZiN6ESovCKvMF/Sr8rtoDH
	o0JPfBpKxF1ywsTmEhAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBY5s-0000cy-4p; Tue, 10 Mar 2020 06:10:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBY5c-0000cd-Jj
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 06:10:06 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0F9AA24679;
 Tue, 10 Mar 2020 06:10:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583820603;
 bh=lmofL6zPOTUwW96AcgEjrGHpaVnxI5v52+JtS/JQTNI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=SBRbs6BB1k1h6caHA4WGw4wD6FbTVztn/TNZK4Vt6hYEuE+Cvk+y/f4euXdZ5PATb
 lnsTozuhbGsL2u0noyToPDFTRZvx0k9LTDxGDKor7LPwp+iyG1dW+vUI2JNAJem/aR
 ekzbRxk6lEKmnLF+soelrVZA5iue/mxlru1hx3pk=
Date: Tue, 10 Mar 2020 14:09:57 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: peng.fan@nxp.com
Subject: Re: [PATCH v2 07/14] clk: imx7ulp: make it easy to change ARM core clk
Message-ID: <20200310060956.GJ15729@dragon>
References: <1582099197-20327-1-git-send-email-peng.fan@nxp.com>
 <1582099197-20327-8-git-send-email-peng.fan@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1582099197-20327-8-git-send-email-peng.fan@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_231004_698929_D2F32A36 
X-CRM114-Status: GOOD (  18.24  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: abel.vesa@nxp.com, Anson.Huang@nxp.com, sboyd@kernel.org,
 viresh.kumar@linaro.org, s.hauer@pengutronix.de, rjw@rjwysocki.net,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 19, 2020 at 03:59:50PM +0800, peng.fan@nxp.com wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> ARM clk could only source from divcore or hsrun_divcore.
> 
> However when ARM core is running normaly, whether divcore or
> hwrun_divcore will finally source from SPLL_PFD0. However SPLL_PFD0
> is marked with CLK_SET_GATE, so we need to disable SPLL_PFD0, when
> configure the rate. So add CORE and HSRUN_CORE virtual clk to make it
> easy to configure the clk using imx_clk_hw_cpu API.

It sounds a bit hackish, so would like to hear an ACK from Stephen on
it.

Shawn

> 
> Since CORE and HSRUN_CORE already marked with CLK_IS_CRITICAL, no
> need to set ARM as CLK_IS_CRITICAL. And when set the rate of ARM clk,
> prograting it the parent with CLK_SET_RATE_PARENT will finally set
> the SPLL_PFD0 clk.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>  drivers/clk/imx/clk-imx7ulp.c             | 6 ++++--
>  include/dt-bindings/clock/imx7ulp-clock.h | 5 ++++-
>  2 files changed, 8 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/clk/imx/clk-imx7ulp.c b/drivers/clk/imx/clk-imx7ulp.c
> index 3710aa0dee9b..634c0b6636b0 100644
> --- a/drivers/clk/imx/clk-imx7ulp.c
> +++ b/drivers/clk/imx/clk-imx7ulp.c
> @@ -29,7 +29,7 @@ static const char * const ddr_sels[]		= { "apll_pfd_sel", "dummy", "dummy", "dum
>  static const char * const nic_sels[]		= { "firc", "ddr_clk", };
>  static const char * const periph_plat_sels[]	= { "dummy", "nic1_bus_clk", "nic1_clk", "ddr_clk", "apll_pfd2", "apll_pfd1", "apll_pfd0", "upll", };
>  static const char * const periph_bus_sels[]	= { "dummy", "sosc_bus_clk", "dummy", "firc_bus_clk", "rosc", "nic1_bus_clk", "nic1_clk", "spll_bus_clk", };
> -static const char * const arm_sels[]		= { "divcore", "dummy", "dummy", "hsrun_divcore", };
> +static const char * const arm_sels[]		= { "core", "dummy", "dummy", "hsrun_core", };
>  
>  /* used by sosc/sirc/firc/ddr/spll/apll dividers */
>  static const struct clk_div_table ulp_div_table[] = {
> @@ -121,7 +121,9 @@ static void __init imx7ulp_clk_scg1_init(struct device_node *np)
>  	hws[IMX7ULP_CLK_DDR_SEL]	= imx_clk_hw_mux_flags("ddr_sel", base + 0x30, 24, 2, ddr_sels, ARRAY_SIZE(ddr_sels), CLK_SET_RATE_PARENT | CLK_OPS_PARENT_ENABLE);
>  
>  	hws[IMX7ULP_CLK_CORE_DIV]	= imx_clk_hw_divider_flags("divcore",	"scs_sel",  base + 0x14, 16, 4, CLK_SET_RATE_PARENT);
> +	hws[IMX7ULP_CLK_CORE]		= imx_clk_hw_cpu("core", "divcore", hws[IMX7ULP_CLK_CORE_DIV]->clk, hws[IMX7ULP_CLK_SYS_SEL]->clk, hws[IMX7ULP_CLK_SPLL_SEL]->clk, hws[IMX7ULP_CLK_FIRC]->clk);
>  	hws[IMX7ULP_CLK_HSRUN_CORE_DIV] = imx_clk_hw_divider_flags("hsrun_divcore", "hsrun_scs_sel", base + 0x1c, 16, 4, CLK_SET_RATE_PARENT);
> +	hws[IMX7ULP_CLK_HSRUN_CORE] = imx_clk_hw_cpu("hsrun_core", "hsrun_divcore", hws[IMX7ULP_CLK_HSRUN_CORE_DIV]->clk, hws[IMX7ULP_CLK_HSRUN_SYS_SEL]->clk, hws[IMX7ULP_CLK_SPLL_SEL]->clk, hws[IMX7ULP_CLK_FIRC]->clk);
>  
>  	hws[IMX7ULP_CLK_DDR_DIV]	= imx_clk_hw_divider_gate("ddr_clk", "ddr_sel", CLK_SET_RATE_PARENT | CLK_IS_CRITICAL, base + 0x30, 0, 3,
>  							       0, ulp_div_table, &imx_ccm_lock);
> @@ -270,7 +272,7 @@ static void __init imx7ulp_clk_smc1_init(struct device_node *np)
>  	base = of_iomap(np, 0);
>  	WARN_ON(!base);
>  
> -	hws[IMX7ULP_CLK_ARM] = imx_clk_hw_mux_flags("arm", base + 0x10, 8, 2, arm_sels, ARRAY_SIZE(arm_sels), CLK_IS_CRITICAL);
> +	hws[IMX7ULP_CLK_ARM] = imx_clk_hw_mux_flags("arm", base + 0x10, 8, 2, arm_sels, ARRAY_SIZE(arm_sels), CLK_SET_RATE_PARENT);
>  
>  	imx_check_clk_hws(hws, clk_data->num);
>  
> diff --git a/include/dt-bindings/clock/imx7ulp-clock.h b/include/dt-bindings/clock/imx7ulp-clock.h
> index 38145bdcd975..b58370d146e2 100644
> --- a/include/dt-bindings/clock/imx7ulp-clock.h
> +++ b/include/dt-bindings/clock/imx7ulp-clock.h
> @@ -58,7 +58,10 @@
>  #define IMX7ULP_CLK_HSRUN_SYS_SEL	44
>  #define IMX7ULP_CLK_HSRUN_CORE_DIV	45
>  
> -#define IMX7ULP_CLK_SCG1_END		46
> +#define IMX7ULP_CLK_CORE		46
> +#define IMX7ULP_CLK_HSRUN_CORE		47
> +
> +#define IMX7ULP_CLK_SCG1_END		48
>  
>  /* PCC2 */
>  #define IMX7ULP_CLK_DMA1		0
> -- 
> 2.16.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
