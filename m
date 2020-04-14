Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 597C11A76B0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 10:55:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zlev30S966ft/QjqSd7w6zrxkPKrz95+IaJ0ydYEhwY=; b=UOYCmb6Y5Y1Tx7
	HXqmpUCHwV3WLhFLM6VCO3DSLjEkX92/2lIcXmRKjAmwv8QcvytmsBi2Nd1mvWlEvZgCzy08+gLZ1
	3C8ESTBPs4OCyCnubRd2gkCaPQCj/TjVvt11CrFQHUTTeVnHo7OTCwKRf7u89NVLh0TNL/AZXHrne
	Vc4sVDfGm6i/XSs43ASFDnOxTu4thX5a0/UNL3Xd9xKDtCmlbEFkxOGlqtkM7q+MCdDIdopYQ2GLh
	MSMAXT1UtPscA+n+cIOXCnJ4mNpKojD1Ak/pbhzQIRBxpiDUjT41jHKIn8pK7yqI+UD9ditsmFHEu
	IOmI3eOOwNHu4KcG6n4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOHLW-0006Sc-Nf; Tue, 14 Apr 2020 08:55:06 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOHLN-0006SF-7L
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 08:54:59 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 3D21420038D;
 Tue, 14 Apr 2020 10:54:55 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 300F5200358;
 Tue, 14 Apr 2020 10:54:55 +0200 (CEST)
Received: from localhost (fsr-ub1664-175.ea.freescale.net [10.171.82.40])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 1982B204D3;
 Tue, 14 Apr 2020 10:54:55 +0200 (CEST)
Date: Tue, 14 Apr 2020 11:54:54 +0300
From: Abel Vesa <abel.vesa@nxp.com>
To: peng.fan@nxp.com
Subject: Re: [PATCH V3] clk: imx7ulp: make it easy to change ARM core clk
Message-ID: <20200414085454.emvw6nlknniaeaug@fsr-ub1664-175>
References: <1584347553-2654-1-git-send-email-peng.fan@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1584347553-2654-1-git-send-email-peng.fan@nxp.com>
User-Agent: NeoMutt/20180622
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_015457_545426_41F41394 
X-CRM114-Status: GOOD (  16.05  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: aisheng.dong@nxp.com, Anson.Huang@nxp.com, sboyd@kernel.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, linux-kernel@vger.kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, festevam@gmail.com,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 20-03-16 16:32:33, peng.fan@nxp.com wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> ARM clk could only source from divcore or hsrun_divcore.
> 
> Follow what we already used on i.MX7D and i.MX8M SoCs, use
> imx_clk_hw_cpu API. When ARM core is running normaly,
> whether divcore or hwrun_divcore will finally source
> from SPLL_PFD0. However SPLL_PFD0 is marked with CLK_SET_GATE,
> so we need to disable SPLL_PFD0, when configure the rate.
> So add CORE and HSRUN_CORE virtual clk to make it easy to
> configure the clk using imx_clk_hw_cpu API.
> 
> Since CORE and HSRUN_CORE already marked with CLK_IS_CRITICAL, no
> need to set ARM as CLK_IS_CRITICAL. And when set the rate of ARM clk,
> prograting it the parent with CLK_SET_RATE_PARENT will finally set
> the SPLL_PFD0 clk.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

Reviewed-by: Abel Vesa <abel.vesa@nxp.com>

> ---
> 
> V3:
>  Update commit log. Make this a standalone patch from V2 
> V2:
>  https://patchwork.kernel.org/patch/11390595/
>  No change
> 
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
