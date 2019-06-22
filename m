Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D46C4F7ED
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 22 Jun 2019 21:27:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jV2LbWPnP/IWnSZyQKM5oaSLHIQHQwsejuINLInPbZM=; b=TVlGOVXQ+qYwwD
	PLhUhDf0Vt2ZiW8qorFidMmfWMaKJXapxtQF/0/El4K7gFdMhTbTMYMSGPXAOkDAlTambWZFbvrlh
	NcFY+qHe+LqqUgs0RHiVihLWa8lL7vagvnXoR/ZxSYEw4VF+5LK2KhLpl/w/SPYxZxgjLXIe6RkZb
	5rbPsedjFeLJPPL89lj22YetWRfQ+13qI5aIulSV4Op2qHy+kOo3L0PUoBLNV9R/jULL6poaUhf9y
	xKdaI3laHx9bQ6fFiv6forOB5qWs1jc89YN86l5W8VSehyR2INqZpmiGvzPfvrGuCkzOJADElpkz5
	WAbJmEdpuqyg9EvdunjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1helfW-00045Q-1b; Sat, 22 Jun 2019 19:27:22 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1helfK-00044f-VM
 for linux-arm-kernel@lists.infradead.org; Sat, 22 Jun 2019 19:27:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LyjzJSypZSrIB4Um/wy3TWsRfkzG5jtre8HrjxOuMmc=; b=cQJtPj83FJrt7MWpdASNDv19D
 EDY4KAle68RyDG8rwkMAuWUZvJb3unIz93Iis8oPIB6/oYRPu0u0nUO9/8SV6eRMopuiQXQQETqIa
 PjrJo0c8cPNcNtMfRtyQVNbAcfq+FME7EwyytHp+uhzVbz6piLUmoSN+R+Br2WZzAnSbVd6y49I4f
 I89rL9sOtU5/3MlTKbqjJf1VRxGmjbnqKxRvczCm0Gsp1Hg5gEAkphPoIVj1zS1KPPXhrsQ2oXZ66
 K9pYhFYbFnq6SN59+zZVtdlfpHCAiUCmLsipsgOTVVbrfK3fNnQaPbYGHIUq2/D8inaqYB1v7dClf
 J7z0D2Vuw==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:58904)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1helf9-0005Xi-E7; Sat, 22 Jun 2019 20:26:59 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.89)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1helf3-0004Ou-S9; Sat, 22 Jun 2019 20:26:53 +0100
Date: Sat, 22 Jun 2019 20:26:53 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Michael Olbrich <m.olbrich@pengutronix.de>,
 Lucas Stach <l.stach@pengutronix.de>, Vinod Koul <vkoul@kernel.org>
Subject: Re: [PATCH v2] dmaengine: imx-sdma: fix incorrect conversion to
 readl_relaxed_poll_timeout_atomic()
Message-ID: <20190622192653.puxds354sx5v3jg7@shell.armlinux.org.uk>
References: <20190622165318.bgyun52hssqmdv4n@shell.armlinux.org.uk>
 <E1helB3-0005d6-7m@rmk-PC.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <E1helB3-0005d6-7m@rmk-PC.armlinux.org.uk>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190622_122711_019362_9643FE24 
X-CRM114-Status: GOOD (  20.08  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, dmaengine@vger.kernel.org,
 Dan Williams <dan.j.williams@intel.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Well, this doesn't appear to completely solve the problem either -
one out of four of my platforms still spat out the error (because
the SDMA initialisation can run on a different CPU to that which
receives the interrupt.)

I've thought about using a completion, but that doesn't work either,
because in the case of a single CPU, the interrupts will be masked,
so we can't wait for completion.  I think we need to eliminate that
spinlock around this code.

On Sat, Jun 22, 2019 at 07:55:53PM +0100, Russell King wrote:
> When imx-sdma was converted to use readl_relaxed_poll_timeout_atomic(),
> the termination condition was inverted.  Fix this.
> 
> Fixes: 1d069bfa3c78 ("dmaengine: imx-sdma: ack channel 0 IRQ in the interrupt handler")
> Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
> ---
>  drivers/dma/imx-sdma.c | 12 +++++++++---
>  1 file changed, 9 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/dma/imx-sdma.c b/drivers/dma/imx-sdma.c
> index 5f3c1378b90e..c45cbdb09714 100644
> --- a/drivers/dma/imx-sdma.c
> +++ b/drivers/dma/imx-sdma.c
> @@ -655,15 +655,21 @@ static void sdma_enable_channel(struct sdma_engine *sdma, int channel)
>  static int sdma_run_channel0(struct sdma_engine *sdma)
>  {
>  	int ret;
> -	u32 reg;
> +	u32 reg, mask;
> +
> +	// Disable channel 0 interrupt
> +	mask = readl_relaxed(sdma->regs + SDMA_H_INTRMSK);
> +	writel_relaxed(mask & ~1, sdma->regs + SDMA_H_INTRMSK);
>  
>  	sdma_enable_channel(sdma, 0);
>  
> -	ret = readl_relaxed_poll_timeout_atomic(sdma->regs + SDMA_H_STATSTOP,
> -						reg, !(reg & 1), 1, 500);
> +	ret = readl_relaxed_poll_timeout_atomic(sdma->regs + SDMA_H_INTR,
> +						reg, reg & 1, 1, 500);
>  	if (ret)
>  		dev_err(sdma->dev, "Timeout waiting for CH0 ready\n");
>  
> +	writel_relaxed(mask, sdma->regs + SDMA_H_INTRMSK);
> +
>  	/* Set bits of CONFIG register with dynamic context switching */
>  	reg = readl(sdma->regs + SDMA_H_CONFIG);
>  	if ((reg & SDMA_H_CONFIG_CSM) == 0) {
> -- 
> 2.7.4
> 
> 

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
