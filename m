Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 071ACAF613
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 08:46:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lPuw7pqPHXOmAB4aJld5s50vmqohLIMxfFqlR8Spzbk=; b=WAGZbcLN8u1Qot
	XMD8mEwATJ2lh6p4lxxUa5A5DDadCwtcmNeR4qG9Dwrbm/aJy8eYj6SjCazc80/x+JbJIOweN0FRM
	Q84HQzuMl+MjxDfxiBxROmBvdtXk+vKutNf02IYH12AzYpht5DRxCocLQM9JACd6b0S+JdQBOrLHf
	IVUKrAcZ9c2IAc4EsbhnOO+T720QgDZReH0AOS5AykC3dtLGObjithooXDm5XNlBMOzHH1wUyLUg2
	KdE0GsPJaNwilRjvrxZ3FVcwZlR0W7G/e96dFswXQsNCFf02Ugm3/kJKGExGdf4DN0Ey4ynyN/ez7
	5qG304tSlp5YuVJrJf7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7wOX-0005Oe-PP; Wed, 11 Sep 2019 06:46:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7wOK-0005OI-V9
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 06:46:14 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8C39E21928;
 Wed, 11 Sep 2019 06:46:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568184372;
 bh=qIBVFBd3Uzn1ZDrcBL8VAS5pV0/6Y6gy5xboCpJ+3/g=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=y714A/OZ45VZt+Bk1N9sfI0EdgWcR7HUGZ9LgvsRB4mLhZ0T6qhLi2kX+E7Til6gF
 pq2q/RPs2GxKEJXiXnSRX6X8xzZNNtZDW79t9kbutbowD1zlW70J8WhOFQinZBckzb
 S3BXq+PGPVQZkJQ3slRkMVX+7x18y6zvP/QslzsI=
Date: Wed, 11 Sep 2019 14:45:58 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Fancy Fang <chen.fang@nxp.com>
Subject: Re: [PATCH 2/2] clk: imx7ulp: remove IMX7ULP_CLK_MIPI_PLL clock
Message-ID: <20190911064556.GD17142@dragon>
References: <20190823003600.8317-1-chen.fang@nxp.com>
 <20190823003600.8317-2-chen.fang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190823003600.8317-2-chen.fang@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_234613_050745_A9174E23 
X-CRM114-Status: GOOD (  18.05  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 Jana Build <jana.build@nxp.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 LnxRevLi <LnxRevLi@nxp.com>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 23, 2019 at 12:37:35AM +0000, Fancy Fang wrote:
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
>  .../devicetree/bindings/clock/imx7ulp-clock.txt   |  1 -
>  drivers/clk/imx/clk-imx7ulp.c                     |  3 +--
>  include/dt-bindings/clock/imx7ulp-clock.h         | 15 +++++++--------
>  3 files changed, 8 insertions(+), 11 deletions(-)
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
> index 6f66f9005c81..f8d34fb4378f 100644
> --- a/include/dt-bindings/clock/imx7ulp-clock.h
> +++ b/include/dt-bindings/clock/imx7ulp-clock.h
> @@ -49,15 +49,14 @@
>  #define IMX7ULP_CLK_NIC1_DIV		36
>  #define IMX7ULP_CLK_NIC1_BUS_DIV	37
>  #define IMX7ULP_CLK_NIC1_EXT_DIV	38
> -#define IMX7ULP_CLK_MIPI_PLL		39
> -#define IMX7ULP_CLK_SIRC		40
> -#define IMX7ULP_CLK_SOSC_BUS_CLK	41
> -#define IMX7ULP_CLK_FIRC_BUS_CLK	42
> -#define IMX7ULP_CLK_SPLL_BUS_CLK	43
> -#define IMX7ULP_CLK_HSRUN_SYS_SEL	44
> -#define IMX7ULP_CLK_HSRUN_CORE_DIV	45
> +#define IMX7ULP_CLK_SIRC		39
> +#define IMX7ULP_CLK_SOSC_BUS_CLK	40
> +#define IMX7ULP_CLK_FIRC_BUS_CLK	41
> +#define IMX7ULP_CLK_SPLL_BUS_CLK	42
> +#define IMX7ULP_CLK_HSRUN_SYS_SEL	43
> +#define IMX7ULP_CLK_HSRUN_CORE_DIV	44

No.  These clock IDs need to be stable, as they are referred by DT.
If you want to remove an ID, just remove it, keep others unchanged.

Shawn

>  
> -#define IMX7ULP_CLK_SCG1_END		46
> +#define IMX7ULP_CLK_SCG1_END		45
>  
>  /* PCC2 */
>  #define IMX7ULP_CLK_DMA1		0
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
