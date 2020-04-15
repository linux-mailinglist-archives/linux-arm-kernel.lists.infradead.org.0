Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56EEE1A933A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 08:27:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n18UrAbent4lT5FxDEPOVxZY65JlmELdEWMXEhBuo94=; b=tfScXRhWZQDMNF
	tsywKSN5lglg8tWBG0rVbzdgC7vH5R1MwDafj33/Is6zC3dBDu2XnsUv1Js+YNdbIyelYNoF34cp1
	yLSzSgxkQ6AiDh9w5uCrphsxz30y2RX9n/h4+EkkPqP52LH6KQr9VvRQtFPchPFORGSa4s0/wV4MG
	QnEDP7fbFzRKivxF2xPqrGgh71ei+2LqMIgOueCFqatp7qWjsSJg3IwAJ9pQDi6bAePBmvxayXdtG
	8/t9XryPu8PL6rs3PGcLzGWCmdJFbv0BHl5J1u+IO97c4P2QcZUZZmpsHxDl1ayIhk+1wF8gvJxbo
	HeLmwKPwj2sEKpwC5RmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jObVn-0007QV-CQ; Wed, 15 Apr 2020 06:27:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jObVe-0007Pa-4f
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 06:26:55 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1jObVc-0002qR-TC; Wed, 15 Apr 2020 08:26:52 +0200
Received: from mtr by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1jObVc-0000vN-CE; Wed, 15 Apr 2020 08:26:52 +0200
Date: Wed, 15 Apr 2020 08:26:52 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
To: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 3/6] soc: xilinx: vcu: implement clock provider for
 output clocks
Message-ID: <20200415062652.GB1078@pengutronix.de>
References: <20200414103202.4288-1-m.tretter@pengutronix.de>
 <20200414103202.4288-4-m.tretter@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200414103202.4288-4-m.tretter@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:23:31 up 55 days, 13:54, 86 users,  load average: 0.02, 0.10, 0.14
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: mtr@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_232654_179990_AB648E5C 
X-CRM114-Status: GOOD (  19.28  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Rohit Visavalia <rohit.visavalia@xilinx.com>,
 Rob Herring <robh+dt@kernel.org>, Michal Simek <michal.simek@xilinx.com>,
 kernel@pengutronix.de, Dhaval Shah <dshah@xilinx.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 14, 2020 at 12:31:59PM +0200, Michael Tretter wrote:
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
> Changelog:
> 
> v1 -> v2:
> - unregister registered clocks when removing the driver
> ---
>  drivers/soc/xilinx/Kconfig    |  2 +-
>  drivers/soc/xilinx/xlnx_vcu.c | 76 ++++++++++++++++++++++++++++++++++-
>  2 files changed, 75 insertions(+), 3 deletions(-)
> 
[...]
> diff --git a/drivers/soc/xilinx/xlnx_vcu.c b/drivers/soc/xilinx/xlnx_vcu.c
> index dcd8e7824b06..f07a1361a2a8 100644
> --- a/drivers/soc/xilinx/xlnx_vcu.c
> +++ b/drivers/soc/xilinx/xlnx_vcu.c
[...]
> @@ -485,6 +490,63 @@ static int xvcu_set_pll(struct xvcu_device *xvcu)
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
> +	struct clk_onecell_data *data = &xvcu->clk_data;
> +	struct clk **clks = data->clks;
> +
> +	of_clk_del_provider(dev->of_node);
> +
> +	clk_unregister_fixed_rate(clks[CLK_XVCU_DEC_MCU]);
> +	clk_unregister_fixed_rate(clks[CLK_XVCU_DEC_CORE]);
> +	clk_unregister_fixed_rate(clks[CLK_XVCU_ENC_MCU]);
> +	clk_unregister_fixed_rate(clks[CLK_XVCU_ENC_CORE]);
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

The xvcu_reset function shouldn't have been there at all. Looks like it
slipped through, when I rebased the patches. I'll send a v3.

Michael

>  /**
>   * xvcu_probe - Probe existence of the logicoreIP
>   *			and initialize PLL
> @@ -569,10 +631,18 @@ static int xvcu_probe(struct platform_device *pdev)
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
> @@ -596,6 +666,8 @@ static int xvcu_remove(struct platform_device *pdev)
>  	if (!xvcu)
>  		return -ENODEV;
>  
> +	xvcu_unregister_clock_provider(xvcu);
> +
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
