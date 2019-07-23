Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 707F571168
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 07:50:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l0Fj6GtaT7gR8tgBvwL5iieBrpIBuQJvPjg5QDnX538=; b=iqaHvf7vY5+JVO
	uN8q+e4Ky2A9juTp2WUDr5BgMUCBaBU3BqYTN82Z6BMgHLYAtAfi1eLdxt4n9aPNVpX3o2U8bTw46
	sH9EKqgcEdaEoV8o1+yg6kjrHQ6setcxRiNPKVDipcEp7I6qHhkoP9qZTP/B9gwL0FlUeHMTY6TxQ
	q1BzdKqgZIION0oVEms+9WrvzEouOtha5hU/VWLFy6zhwg5DHeXgjEZ7H8QI0vpsj+UcJTCmYgUNf
	xhG/fcGHX8zZJFlGZrWzS4W3srO/JuH/0u1XskvusYkamaWJUeQTLOSUuPTbaoTUVQrnvvNU1il94
	ugvF9DnYYoMtgE0piCyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpnhI-00037E-SZ; Tue, 23 Jul 2019 05:50:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpnh1-00036t-16
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 05:50:32 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 672BC2229A;
 Tue, 23 Jul 2019 05:50:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563861030;
 bh=X9bwV9KQ0C2xh1Si9PIyaiK/1l55d3v6Empbinif5Zo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=C3w7CafeqVLS3SThwm3ee45OdUjeJps03yo9EBaoC7uPaZH+8gINJE2AZGjA8TGus
 fdTyIyyPvOeXIFKeWqZulPXfmqP8bQGAGKl2+M3VYe2PCz9XoS9/zEOmbdm2ixriHc
 RoGwTCrjL+Aoyo5DiqMa4TfmOtBXp+YrbONRbn4E=
Date: Tue, 23 Jul 2019 13:49:58 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Fancy Fang <chen.fang@nxp.com>
Subject: Re: [RESEND PATCH 1/2] clk: imx8mm: rename lcdif pixel clock
Message-ID: <20190723054957.GO3738@dragon>
References: <20190710041546.23422-1-chen.fang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190710041546.23422-1-chen.fang@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_225031_111332_A3C41D22 
X-CRM114-Status: GOOD (  15.20  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jacky Bai <ping.bai@nxp.com>, "sboyd@kernel.org" <sboyd@kernel.org>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 10, 2019 at 04:13:37AM +0000, Fancy Fang wrote:
> Rename 'lcdif' pixel clock related names to 'disp' names, since:
> 
> First, the lcdif pixel clock is not supplied to LCDIF controller
> directly, but to some LPCG clock in display mix. So rename it to
> 'disp' pixel clock is more accurate.
> 
> Second, in the imx8mn CCM specification which is designed after
> imx8mm, this same pixel root clock name has been modified from
> 'LCDIF_PIXEL_CLK_ROOT' to 'DISPLAY_PIXEL_CLK_ROOT'.
> 
> Signed-off-by: Fancy Fang <chen.fang@nxp.com>
> ---

When you resend patches, please state the reason for resending.

Shawn

>  drivers/clk/imx/clk-imx8mm.c             | 4 ++--
>  include/dt-bindings/clock/imx8mm-clock.h | 2 +-
>  2 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/clk/imx/clk-imx8mm.c b/drivers/clk/imx/clk-imx8mm.c
> index 6b8e75df994d..42f1227a4952 100644
> --- a/drivers/clk/imx/clk-imx8mm.c
> +++ b/drivers/clk/imx/clk-imx8mm.c
> @@ -210,7 +210,7 @@ static const char *imx8mm_pcie1_aux_sels[] = {"osc_24m", "sys_pll2_200m", "sys_p
>  static const char *imx8mm_dc_pixel_sels[] = {"osc_24m", "video_pll1_out", "audio_pll2_out", "audio_pll1_out",
>  					     "sys_pll1_800m", "sys_pll2_1000m", "sys_pll3_out", "clk_ext4", };
>  
> -static const char *imx8mm_lcdif_pixel_sels[] = {"osc_24m", "video_pll1_out", "audio_pll2_out", "audio_pll1_out",
> +static const char *imx8mm_disp_pixel_sels[] = {"osc_24m", "video_pll1_out", "audio_pll2_out", "audio_pll1_out",
>  						"sys_pll1_800m", "sys_pll2_1000m", "sys_pll3_out", "clk_ext4", };
>  
>  static const char *imx8mm_sai1_sels[] = {"osc_24m", "audio_pll1_out", "audio_pll2_out", "video_pll1_out",
> @@ -535,7 +535,7 @@ static int __init imx8mm_clocks_init(struct device_node *ccm_node)
>  	clks[IMX8MM_CLK_PCIE1_PHY] = imx8m_clk_composite("pcie1_phy", imx8mm_pcie1_phy_sels, base + 0xa380);
>  	clks[IMX8MM_CLK_PCIE1_AUX] = imx8m_clk_composite("pcie1_aux", imx8mm_pcie1_aux_sels, base + 0xa400);
>  	clks[IMX8MM_CLK_DC_PIXEL] = imx8m_clk_composite("dc_pixel", imx8mm_dc_pixel_sels, base + 0xa480);
> -	clks[IMX8MM_CLK_LCDIF_PIXEL] = imx8m_clk_composite("lcdif_pixel", imx8mm_lcdif_pixel_sels, base + 0xa500);
> +	clks[IMX8MM_CLK_DISP_PIXEL] = imx8m_clk_composite("disp_pixel", imx8mm_disp_pixel_sels, base + 0xa500);
>  	clks[IMX8MM_CLK_SAI1] = imx8m_clk_composite("sai1", imx8mm_sai1_sels, base + 0xa580);
>  	clks[IMX8MM_CLK_SAI2] = imx8m_clk_composite("sai2", imx8mm_sai2_sels, base + 0xa600);
>  	clks[IMX8MM_CLK_SAI3] = imx8m_clk_composite("sai3", imx8mm_sai3_sels, base + 0xa680);
> diff --git a/include/dt-bindings/clock/imx8mm-clock.h b/include/dt-bindings/clock/imx8mm-clock.h
> index 07e6c686f3ef..91ef77efebd9 100644
> --- a/include/dt-bindings/clock/imx8mm-clock.h
> +++ b/include/dt-bindings/clock/imx8mm-clock.h
> @@ -119,7 +119,7 @@
>  #define IMX8MM_CLK_PCIE1_PHY			104
>  #define IMX8MM_CLK_PCIE1_AUX			105
>  #define IMX8MM_CLK_DC_PIXEL			106
> -#define IMX8MM_CLK_LCDIF_PIXEL			107
> +#define IMX8MM_CLK_DISP_PIXEL			107
>  #define IMX8MM_CLK_SAI1				108
>  #define IMX8MM_CLK_SAI2				109
>  #define IMX8MM_CLK_SAI3				110
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
