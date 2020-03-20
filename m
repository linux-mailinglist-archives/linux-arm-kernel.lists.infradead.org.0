Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D11F818D256
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 16:05:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nn9QF4DAaBIAEAEhQgWrwKsP71sldfSLeTlVKkT0UaY=; b=RVdXwob/KXcRdx
	XUoGjxq3mSx8r+mMmUutoA9ENrTDCz+RSc/dGe6h4lmOPzbiRYU4sim4TH8TM2y3biaXDCsU7Qly8
	5065jmeW0WAfjR4Dnq08pnh0D8o3eH75zR0z0rk8mfBtqPesyw76syYA4xH9SV6ptdCwpos4nBD6M
	BGXvqQIWin40AomNI36xwtM3V5N+W0K8jkmzBz+593vLBWthCntE8c13mPaqOEDh3f5thktYCNCsY
	CIPNmSoeAIjOhX4PxkBHe2TpKKNXhp70gTSZdzoKssTzbqG+pURZ2rlHgw8WJxbI93VugBs6Hn3pC
	1FJ27z5JjoancUXVhELQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFJD3-0008Ij-Iz; Fri, 20 Mar 2020 15:05:17 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFJCu-0007Y6-6F
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 15:05:09 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1jFJCq-0006FB-DE; Fri, 20 Mar 2020 16:05:04 +0100
Received: from mtr by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1jFJCp-00057K-PK; Fri, 20 Mar 2020 16:05:03 +0100
Date: Fri, 20 Mar 2020 16:05:03 +0100
From: Michael Tretter <m.tretter@pengutronix.de>
To: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 3/6] soc: xilinx: vcu: implement clock provider for
 output clocks
Message-ID: <20200320150503.GB18350@pengutronix.de>
References: <20200317094115.15896-1-m.tretter@pengutronix.de>
 <20200317094115.15896-4-m.tretter@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200317094115.15896-4-m.tretter@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain 0.15
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: mtr@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_080508_237594_29435B01 
X-CRM114-Status: GOOD (  22.82  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Dhaval Shah <dshah@xilinx.com>, Rob Herring <robh+dt@kernel.org>,
 Michal Simek <michal.simek@xilinx.com>, kernel@pengutronix.de,
 Rohit Visavalia <rohit.visavalia@xilinx.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 17, 2020 at 10:41:12AM +0100, Michael Tretter wrote:
> The VCU System-Level Control uses an internal PLL to drive the core and
> MCU clock for the allegro encoder and decoder based on an external PL
> clock.
> 
> In order be able to ensure that the clocks are enabled and to get their
> rate from other drivers, the module must implement a clock provider and
> register the clocks at the common clock framework. Other drivers are
> then able to access the clock via devicetree bindings.
> 
> Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
> ---
>  drivers/soc/xilinx/Kconfig    |  2 +-
>  drivers/soc/xilinx/xlnx_vcu.c | 69 ++++++++++++++++++++++++++++++++++-
>  2 files changed, 68 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/soc/xilinx/Kconfig b/drivers/soc/xilinx/Kconfig
> index 223f1f9d0922..331f124902e8 100644
> --- a/drivers/soc/xilinx/Kconfig
> +++ b/drivers/soc/xilinx/Kconfig
> @@ -3,7 +3,7 @@ menu "Xilinx SoC drivers"
>  
>  config XILINX_VCU
>  	tristate "Xilinx VCU logicoreIP Init"
> -	depends on HAS_IOMEM
> +	depends on HAS_IOMEM && COMMON_CLK
>  	help
>  	  Provides the driver to enable and disable the isolation between the
>  	  processing system and programmable logic part by using the logicoreIP
> diff --git a/drivers/soc/xilinx/xlnx_vcu.c b/drivers/soc/xilinx/xlnx_vcu.c
> index dcd8e7824b06..d69e671efeab 100644
> --- a/drivers/soc/xilinx/xlnx_vcu.c
> +++ b/drivers/soc/xilinx/xlnx_vcu.c
> @@ -7,6 +7,7 @@
>   * Contacts   Dhaval Shah <dshah@xilinx.com>
>   */
>  #include <linux/clk.h>
> +#include <linux/clk-provider.h>
>  #include <linux/device.h>
>  #include <linux/errno.h>
>  #include <linux/io.h>
> @@ -14,6 +15,8 @@
>  #include <linux/of_platform.h>
>  #include <linux/platform_device.h>
>  
> +#include <dt-bindings/clock/xlnx-vcu.h>
> +
>  /* Address map for different registers implemented in the VCU LogiCORE IP. */
>  #define VCU_ECODER_ENABLE		0x00
>  #define VCU_DECODER_ENABLE		0x04
> @@ -108,7 +111,9 @@ struct xvcu_device {
>  	struct clk *aclk;
>  	void __iomem *logicore_reg_ba;
>  	void __iomem *vcu_slcr_ba;
> +	struct clk_onecell_data clk_data;
>  	u32 coreclk;
> +	u32 mcuclk;
>  };
>  
>  /**
> @@ -375,10 +380,10 @@ static int xvcu_set_vcu_pll_info(struct xvcu_device *xvcu)
>  	}
>  
>  	xvcu->coreclk = pll_clk / divisor_core;
> -	mcuclk = pll_clk / divisor_mcu;
> +	xvcu->mcuclk = pll_clk / divisor_mcu;
>  	dev_dbg(xvcu->dev, "Actual Ref clock freq is %uHz\n", refclk);
>  	dev_dbg(xvcu->dev, "Actual Core clock freq is %uHz\n", xvcu->coreclk);
> -	dev_dbg(xvcu->dev, "Actual Mcu clock freq is %uHz\n", mcuclk);
> +	dev_dbg(xvcu->dev, "Actual Mcu clock freq is %uHz\n", xvcu->mcuclk);
>  
>  	vcu_pll_ctrl &= ~(VCU_PLL_CTRL_FBDIV_MASK << VCU_PLL_CTRL_FBDIV_SHIFT);
>  	vcu_pll_ctrl |= (found->fbdiv & VCU_PLL_CTRL_FBDIV_MASK) <<
> @@ -485,6 +490,56 @@ static int xvcu_set_pll(struct xvcu_device *xvcu)
>  	return -ETIMEDOUT;
>  }
>  
> +static int xvcu_register_clock_provider(struct xvcu_device *xvcu)
> +{
> +	struct device *dev = xvcu->dev;
> +	const char *parent_name = __clk_get_name(xvcu->pll_ref);
> +	struct clk_onecell_data *data = &xvcu->clk_data;
> +	struct clk **clks;
> +	size_t num_clks = CLK_XVCU_MAX;
> +
> +	clks = devm_kcalloc(dev, num_clks, sizeof(*clks), GFP_KERNEL);
> +	if (!clks)
> +		return -ENOMEM;
> +
> +	data->clk_num = num_clks;
> +	data->clks = clks;
> +
> +	clks[CLK_XVCU_ENC_CORE] =
> +		clk_register_fixed_rate(dev, "venc_core_clk",
> +					parent_name, 0, xvcu->coreclk);
> +	clks[CLK_XVCU_ENC_MCU] =
> +		clk_register_fixed_rate(dev, "venc_mcu_clk",
> +					parent_name, 0, xvcu->mcuclk);
> +	clks[CLK_XVCU_DEC_CORE] =
> +		clk_register_fixed_rate(dev, "vdec_core_clk",
> +					parent_name, 0, xvcu->coreclk);
> +	clks[CLK_XVCU_DEC_MCU] =
> +		clk_register_fixed_rate(dev, "vdec_mcu_clk",
> +					parent_name, 0, xvcu->mcuclk);
> +
> +	return of_clk_add_provider(dev->of_node, of_clk_src_onecell_get, data);
> +}
> +
> +static void xvcu_unregister_clock_provider(struct xvcu_device *xvcu)
> +{
> +	struct device *dev = xvcu->dev;
> +
> +	of_clk_del_provider(dev->of_node);
> +}
> +
> +static void xvcu_reset(struct xvcu_device *xvcu)
> +{
> +	if (!xvcu->reset_gpio)
> +		return;
> +
> +	gpiod_set_value(xvcu->reset_gpio, 0);
> +	/* min 2 clock cycle of vcu pll_ref, slowest freq is 33.33KHz */
> +	usleep_range(60, 120);
> +	gpiod_set_value(xvcu->reset_gpio, 1);
> +	usleep_range(60, 120);
> +}
> +
>  /**
>   * xvcu_probe - Probe existence of the logicoreIP
>   *			and initialize PLL
> @@ -569,10 +624,18 @@ static int xvcu_probe(struct platform_device *pdev)
>  		goto error_pll_ref;
>  	}
>  
> +	ret = xvcu_register_clock_provider(xvcu);
> +	if (ret) {
> +		dev_err(&pdev->dev, "failed to register clock provider\n");
> +		goto error_clk_provider;
> +	}
> +
>  	dev_set_drvdata(&pdev->dev, xvcu);
>  
>  	return 0;
>  
> +error_clk_provider:
> +	xvcu_unregister_clock_provider(xvcu);
>  error_pll_ref:
>  	clk_disable_unprepare(xvcu->pll_ref);
>  error_aclk:
> @@ -596,6 +659,8 @@ static int xvcu_remove(struct platform_device *pdev)
>  	if (!xvcu)
>  		return -ENODEV;
>  
> +	xvcu_unregister_clock_provider(xvcu);
> +

The removal code is missing clk_unregister_fixed_rate() for all registered
clocks when the clock provider is unregistered. Otherwise unbinding and
binding the driver is not working correctly.

I will wait for some more review feedback and fix this in a v2.

Michael

>  	/* Add the the Gasket isolation and put the VCU in reset. */
>  	xvcu_write(xvcu->logicore_reg_ba, VCU_GASKET_INIT, 0);
>  
> -- 
> 2.20.1
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
