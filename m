Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ED041BFE71
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 16:35:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OZXwwRmnGE789DrW7b7bLR/nDpU0fVukfXUPF9bx7xo=; b=F6CingvWeZ4j6Q
	VhL1LbxcCS/frWLRh6XOHwKw3l2qbSXb1o/t7YRg9grRGu+UPvCKTbMQUxNCPizpsP84m9z0V6zyk
	xTpYl/ksEuW/cJiTjvZ2fnLxxh8HYap2tM1UuxciMg6JHDVsIK9xdk8ti1FvpWV1QNg6nghl+dOmS
	VN73a+JbcWSHOJdctC12rD8YUdah1JbKfl5z3zx90TnY5QzeZtx6fH+am095SQP5IzGf2ep7MX0UZ
	GciQqkuTMOZ/ItJzEWOfIw0qmU6rRHClNdf+RmBCH4+NtaNgsO8jthId+DMeWNuEZlm6keU0S1yPo
	xki/7EBzlHZ8Ol12XJ7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUAHw-0006rG-Pp; Thu, 30 Apr 2020 14:35:44 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUAHW-0006qA-1n
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 14:35:19 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=localhost)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>)
 id 1jUAHL-0000D2-Lw; Thu, 30 Apr 2020 16:35:07 +0200
Message-ID: <3895f202cf5919e41a56878a62f6d5259dea12d3.camel@pengutronix.de>
Subject: Re: [RFC PATCH 3/4] drm/etnaviv: Change order of enabling clocks to
 fix boot on i.MX8MM
From: Lucas Stach <l.stach@pengutronix.de>
To: Schrempf Frieder <frieder.schrempf@kontron.de>, Adam Ford
 <aford173@gmail.com>, Anson Huang <Anson.Huang@nxp.com>, Christian Gmeiner
 <christian.gmeiner@gmail.com>, Daniel Baluta <daniel.baluta@nxp.com>, Fabio
 Estevam <festevam@gmail.com>, Leonard Crestez <leonard.crestez@nxp.com>, Li
 Jun <jun.li@nxp.com>,  NXP Linux Team <linux-imx@nxp.com>, Peng Fan
 <peng.fan@nxp.com>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Russell King <linux+etnaviv@armlinux.org.uk>, Sascha Hauer
 <s.hauer@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>, "S.j. Wang"
 <shengjiu.wang@nxp.com>
Date: Thu, 30 Apr 2020 16:35:06 +0200
In-Reply-To: <20200430124602.14463-4-frieder.schrempf@kontron.de>
References: <20200430124602.14463-1-frieder.schrempf@kontron.de>
 <20200430124602.14463-4-frieder.schrempf@kontron.de>
User-Agent: Evolution 3.36.1 (3.36.1-1.fc32) 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_073518_094826_0B552B7D 
X-CRM114-Status: GOOD (  19.27  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "etnaviv@lists.freedesktop.org" <etnaviv@lists.freedesktop.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Donnerstag, den 30.04.2020, 12:46 +0000 schrieb Schrempf Frieder:
> From: Frieder Schrempf <frieder.schrempf@kontron.de>
> 
> On some i.MX8MM devices the boot hangs when enabling the GPU clocks.
> Changing the order of clock initalization to
> 
> core -> shader -> bus -> reg
> 
> fixes the issue. This is the same order used in the imx platform code
> of the downstream GPU driver in the NXP kernel [1]. For the sake of
> consistency we also adjust the order of disabling the clocks to the
> reverse.
> 
> [1] https://source.codeaurora.org/external/imx/linux-imx/tree/drivers/mxc/gpu-viv/hal/os/linux/kernel/platform/freescale/gc_hal_kernel_platform_imx.c?h=imx_5.4.3_2.0.0#n1538

I don't see why the order of the clocks is important. Is this really a
GPU issue? As in: does a GPU access hang when enabling the clocks in
the wrong order? Or is this a clock driver issue with a clock access
hanging due to an upstream clock still being disabled?

Regards,
Lucas

> Signed-off-by: Frieder Schrempf <frieder.schrempf@kontron.de>
> ---
>  drivers/gpu/drm/etnaviv/etnaviv_gpu.c | 42 +++++++++++++--------------
>  1 file changed, 21 insertions(+), 21 deletions(-)
> 
> diff --git a/drivers/gpu/drm/etnaviv/etnaviv_gpu.c b/drivers/gpu/drm/etnaviv/etnaviv_gpu.c
> index 7b138d4dd068..424b2e5951f0 100644
> --- a/drivers/gpu/drm/etnaviv/etnaviv_gpu.c
> +++ b/drivers/gpu/drm/etnaviv/etnaviv_gpu.c
> @@ -1487,55 +1487,55 @@ static int etnaviv_gpu_clk_enable(struct etnaviv_gpu *gpu)
>  {
>  	int ret;
>  
> -	if (gpu->clk_reg) {
> -		ret = clk_prepare_enable(gpu->clk_reg);
> +	if (gpu->clk_core) {
> +		ret = clk_prepare_enable(gpu->clk_core);
>  		if (ret)
>  			return ret;
>  	}
>  
> -	if (gpu->clk_bus) {
> -		ret = clk_prepare_enable(gpu->clk_bus);
> +	if (gpu->clk_shader) {
> +		ret = clk_prepare_enable(gpu->clk_shader);
>  		if (ret)
> -			goto disable_clk_reg;
> +			goto disable_clk_core;
>  	}
>  
> -	if (gpu->clk_core) {
> -		ret = clk_prepare_enable(gpu->clk_core);
> +	if (gpu->clk_bus) {
> +		ret = clk_prepare_enable(gpu->clk_bus);
>  		if (ret)
> -			goto disable_clk_bus;
> +			goto disable_clk_shader;
>  	}
>  
> -	if (gpu->clk_shader) {
> -		ret = clk_prepare_enable(gpu->clk_shader);
> +	if (gpu->clk_reg) {
> +		ret = clk_prepare_enable(gpu->clk_reg);
>  		if (ret)
> -			goto disable_clk_core;
> +			goto disable_clk_bus;
>  	}
>  
>  	return 0;
>  
> -disable_clk_core:
> -	if (gpu->clk_core)
> -		clk_disable_unprepare(gpu->clk_core);
>  disable_clk_bus:
>  	if (gpu->clk_bus)
>  		clk_disable_unprepare(gpu->clk_bus);
> -disable_clk_reg:
> -	if (gpu->clk_reg)
> -		clk_disable_unprepare(gpu->clk_reg);
> +disable_clk_shader:
> +	if (gpu->clk_shader)
> +		clk_disable_unprepare(gpu->clk_shader);
> +disable_clk_core:
> +	if (gpu->clk_core)
> +		clk_disable_unprepare(gpu->clk_core);
>  
>  	return ret;
>  }
>  
>  static int etnaviv_gpu_clk_disable(struct etnaviv_gpu *gpu)
>  {
> +	if (gpu->clk_reg)
> +		clk_disable_unprepare(gpu->clk_reg);
> +	if (gpu->clk_bus)
> +		clk_disable_unprepare(gpu->clk_bus);
>  	if (gpu->clk_shader)
>  		clk_disable_unprepare(gpu->clk_shader);
>  	if (gpu->clk_core)
>  		clk_disable_unprepare(gpu->clk_core);
> -	if (gpu->clk_bus)
> -		clk_disable_unprepare(gpu->clk_bus);
> -	if (gpu->clk_reg)
> -		clk_disable_unprepare(gpu->clk_reg);
>  
>  	return 0;
>  }


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
