Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFA10E6FEA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 11:51:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GsMhppi0HwwkTb5ySjyXHpGVwS8FZqq/4Ld8b5Qb6Is=; b=aQG8VbxeMVCPQ2
	w/2ieKo4gcJ7cgnz5dPtSx14Qbbv+lkN6CFSDITRMkfysCLcDy0r2TvWE8yMeWhVFsB7817de43FN
	Zan3KQxAw1XQNLRmbqfNtSJfrOMKV6sq8Oy0+laQXUsztjv/mIVdeAn1hODQBmWtY6GpMGc70NlzG
	ywQ0MElvpO04ue1GbdQD8ivR7cYkdgnErI3M1i3aL6wSLqFWVDReeN9oODeF3K4NekrY9+lCVrYSg
	k+rkHshRIUzZqjOaZa3TA3cx2DtmyWNCa2sWu5RPIfyYoQbpl97+Q5hGrTLW4WyXlLvTKFC7m7lGm
	x5XPAyxMbzXgTysagh3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP2cB-0007vY-TQ; Mon, 28 Oct 2019 10:51:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP2c1-0007uc-Ce
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 10:51:02 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B62B820873;
 Mon, 28 Oct 2019 10:50:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572259860;
 bh=9OhlQBQfGJwsaiYR0zQLkgRNjoR5DNpZiAm81WHbbLs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=p0+JkOhaq96U+qp1FtMCnoQh25qovOzVvaK0XbvsxNlL6o/ivlM38FyDig2PM5jPw
 ix1nl7s6ElT53Ah3vTvvkjhPLi9FzNMvMjPVh4h1C68GZlmlPOj5bBz1lt639hBz6U
 972wNv6KP7fM88gg8bUFRslUrGRjhchW6LOPUhFg=
Date: Mon, 28 Oct 2019 18:50:39 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Fancy Fang <chen.fang@nxp.com>
Subject: Re: [PATCH v4] clk: imx7ulp: do not export out IMX7ULP_CLK_MIPI_PLL
 clock
Message-ID: <20191028105038.GB16985@dragon>
References: <20191028080545.28275-1-chen.fang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191028080545.28275-1-chen.fang@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_035101_471698_77D727CB 
X-CRM114-Status: GOOD (  19.60  )
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
Cc: "sboyd@kernel.org" <sboyd@kernel.org>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 28, 2019 at 08:07:59AM +0000, Fancy Fang wrote:
> The mipi pll clock comes from the MIPI PHY PLL output, so
> it should not be a fixed clock.
> 
> MIPI PHY PLL is in the MIPI DSI space, and it is used as
> the bit clock for transferring the pixel data out and its
> output clock is configured according to the display mode.
> 
> So it should be used only for MIPI DSI and not be exported
> out for other usages.
> 
> Signed-off-by: Fancy Fang <chen.fang@nxp.com>
> ---
> ChangeLog v3->v4:
>  * Add some comments to 'IMX7ULP_CLK_MIPI_PLL'
>    clock.
> 
>  Documentation/devicetree/bindings/clock/imx7ulp-clock.txt | 1 -
>  drivers/clk/imx/clk-imx7ulp.c                             | 3 +--
>  include/dt-bindings/clock/imx7ulp-clock.h                 | 6 ++++++
>  3 files changed, 7 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/clock/imx7ulp-clock.txt b/Documentation/devicetree/bindings/clock/imx7ulp-clock.txt
> index a4f8cd478f92..93d89adb7afe 100644
> --- a/Documentation/devicetree/bindings/clock/imx7ulp-clock.txt
> +++ b/Documentation/devicetree/bindings/clock/imx7ulp-clock.txt
> @@ -82,7 +82,6 @@ pcc2: pcc2@403f0000 {
>  		 <&scg1 IMX7ULP_CLK_APLL_PFD0>,
>  		 <&scg1 IMX7ULP_CLK_UPLL>,
>  		 <&scg1 IMX7ULP_CLK_SOSC_BUS_CLK>,
> -		 <&scg1 IMX7ULP_CLK_MIPI_PLL>,
>  		 <&scg1 IMX7ULP_CLK_FIRC_BUS_CLK>,
>  		 <&scg1 IMX7ULP_CLK_ROSC>,
>  		 <&scg1 IMX7ULP_CLK_SPLL_BUS_CLK>;
> diff --git a/drivers/clk/imx/clk-imx7ulp.c b/drivers/clk/imx/clk-imx7ulp.c
> index 2022d9bead91..459b120b71d5 100644
> --- a/drivers/clk/imx/clk-imx7ulp.c
> +++ b/drivers/clk/imx/clk-imx7ulp.c
> @@ -28,7 +28,7 @@ static const char * const scs_sels[]		= { "dummy", "sosc", "sirc", "firc", "dumm
>  static const char * const ddr_sels[]		= { "apll_pfd_sel", "upll", };
>  static const char * const nic_sels[]		= { "firc", "ddr_clk", };
>  static const char * const periph_plat_sels[]	= { "dummy", "nic1_bus_clk", "nic1_clk", "ddr_clk", "apll_pfd2", "apll_pfd1", "apll_pfd0", "upll", };
> -static const char * const periph_bus_sels[]	= { "dummy", "sosc_bus_clk", "mpll", "firc_bus_clk", "rosc", "nic1_bus_clk", "nic1_clk", "spll_bus_clk", };
> +static const char * const periph_bus_sels[]	= { "dummy", "sosc_bus_clk", "dummy", "firc_bus_clk", "rosc", "nic1_bus_clk", "nic1_clk", "spll_bus_clk", };
>  static const char * const arm_sels[]		= { "divcore", "dummy", "dummy", "hsrun_divcore", };
>  
>  /* used by sosc/sirc/firc/ddr/spll/apll dividers */
> @@ -75,7 +75,6 @@ static void __init imx7ulp_clk_scg1_init(struct device_node *np)
>  	clks[IMX7ULP_CLK_SOSC]		= imx_obtain_fixed_clk_hw(np, "sosc");
>  	clks[IMX7ULP_CLK_SIRC]		= imx_obtain_fixed_clk_hw(np, "sirc");
>  	clks[IMX7ULP_CLK_FIRC]		= imx_obtain_fixed_clk_hw(np, "firc");
> -	clks[IMX7ULP_CLK_MIPI_PLL]	= imx_obtain_fixed_clk_hw(np, "mpll");
>  	clks[IMX7ULP_CLK_UPLL]		= imx_obtain_fixed_clk_hw(np, "upll");
>  
>  	/* SCG1 */
> diff --git a/include/dt-bindings/clock/imx7ulp-clock.h b/include/dt-bindings/clock/imx7ulp-clock.h
> index 6f66f9005c81..e9ef62f211fe 100644
> --- a/include/dt-bindings/clock/imx7ulp-clock.h
> +++ b/include/dt-bindings/clock/imx7ulp-clock.h
> @@ -49,7 +49,13 @@
>  #define IMX7ULP_CLK_NIC1_DIV		36
>  #define IMX7ULP_CLK_NIC1_BUS_DIV	37
>  #define IMX7ULP_CLK_NIC1_EXT_DIV	38
> +
> +/* mpll clock is a special clock comes from
> + * mipi DPHY PLL and should be used only for
> + * mipi dsi instead of any other peripheral.
> + */
>  #define IMX7ULP_CLK_MIPI_PLL		39
> +

The point of comment is to tell that the clock ID is unsupported and
shouldn't be used in DT.

I reworded the comment and applied the patch.

Shawn

>  #define IMX7ULP_CLK_SIRC		40
>  #define IMX7ULP_CLK_SOSC_BUS_CLK	41
>  #define IMX7ULP_CLK_FIRC_BUS_CLK	42
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
