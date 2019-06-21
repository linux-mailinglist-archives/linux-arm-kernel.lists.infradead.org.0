Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBBBA4E854
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 14:53:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zXAA2XElH2ui6AEMI0EzM6lXtL18ZTQnNBQhE8fhlas=; b=WIHYrjWnj28T3t
	u+ZKqh/A9401R8seZgHYRVLbPIW2JQaLGCt9b2gjkIFMJlU6O9Zuc1N/5eUgc3Oup8QbMIZIM3HGV
	FZ3qlxuK5RkXRYONYaVGTQgpEjXjvinf/dLRgtFxhLBloTXlOyOcHjf4Iyu1wMJdAGm5/Xprn0RdB
	FXQROYumtV/IreUwF5lddaxDvfXVTg7kKzs/GllEYOU2Im67VW2J0q4gcJeoOU52CoZNw5tJ6zEmT
	rFGPp5l+dx+6+EzddFjLWfbB7l3kaiVTp2kB7jRvzBo1YoTzCgJ4rXdsNo9uRes/gXG6znopAua/0
	lAe2HZaJT5Mr+3FNP0dA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heJ2z-0003KP-I6; Fri, 21 Jun 2019 12:53:41 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heJ2b-0003Cb-Ht
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 12:53:19 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mol@pengutronix.de>)
 id 1heJ2R-0002To-Qd; Fri, 21 Jun 2019 14:53:07 +0200
Received: from mol by ptx.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mol@pengutronix.de>)
 id 1heJ2P-0004TF-LK; Fri, 21 Jun 2019 14:53:05 +0200
Date: Fri, 21 Jun 2019 14:53:05 +0200
From: Michael Olbrich <m.olbrich@pengutronix.de>
To: yibin.gong@nxp.com
Subject: Re: [PATCH v2] dmaengine: imx-sdma: remove BD_INTR for channel0
Message-ID: <20190621125305.jpmkrwfgruxs2yzt@pengutronix.de>
Mail-Followup-To: yibin.gong@nxp.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, festevam@gmail.com, vkoul@kernel.org,
 dan.j.williams@intel.com, thesven73@gmail.com, linux-imx@nxp.com,
 stable@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 dmaengine@vger.kernel.org, kernel@pengutronix.de
References: <20190621082306.34415-1-yibin.gong@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190621082306.34415-1-yibin.gong@nxp.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 14:49:15 up 34 days, 19:07, 89 users,  load average: 0.03, 0.10, 0.09
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: mol@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_055317_648452_8D39DB11 
X-CRM114-Status: GOOD (  17.80  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: thesven73@gmail.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
 stable@vger.kernel.org, vkoul@kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 21, 2019 at 04:23:06PM +0800, yibin.gong@nxp.com wrote:
> From: Robin Gong <yibin.gong@nxp.com>
> 
> It is possible for an irq triggered by channel0 to be received later
> after clks are disabled once firmware loaded during sdma probe. If
> that happens then clearing them by writing to SDMA_H_INTR won't work
> and the kernel will hang processing infinite interrupts. Actually,
> don't need interrupt triggered on channel0 since it's pollling
> SDMA_H_STATSTOP to know channel0 done rather than interrupt in
> current code, just clear BD_INTR to disable channel0 interrupt to
> avoid the above case.
> This issue was brought by commit 1d069bfa3c78 ("dmaengine: imx-sdma:
> ack channel 0 IRQ in the interrupt handler") which didn't take care
> the above case.
> 
> Fixes: 1d069bfa3c78 ("dmaengine: imx-sdma: ack channel 0 IRQ in the interrupt handler")
> Cc: stable@vger.kernel.org #5.0+
> Signed-off-by: Robin Gong <yibin.gong@nxp.com>
> Reported-by: Sven Van Asbroeck <thesven73@gmail.com>
> Tested-by: Sven Van Asbroeck <thesven73@gmail.com>

Reviewed-by: Michael Olbrich <m.olbrich@pengutronix.de>

> ---
>  drivers/dma/imx-sdma.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/dma/imx-sdma.c b/drivers/dma/imx-sdma.c
> index deea9aa..b5a1ee2 100644
> --- a/drivers/dma/imx-sdma.c
> +++ b/drivers/dma/imx-sdma.c
> @@ -742,7 +742,7 @@ static int sdma_load_script(struct sdma_engine *sdma, void *buf, int size,
>  	spin_lock_irqsave(&sdma->channel_0_lock, flags);
>  
>  	bd0->mode.command = C0_SETPM;
> -	bd0->mode.status = BD_DONE | BD_INTR | BD_WRAP | BD_EXTD;
> +	bd0->mode.status = BD_DONE | BD_WRAP | BD_EXTD;
>  	bd0->mode.count = size / 2;
>  	bd0->buffer_addr = buf_phys;
>  	bd0->ext_buffer_addr = address;
> @@ -1064,7 +1064,7 @@ static int sdma_load_context(struct sdma_channel *sdmac)
>  	context->gReg[7] = sdmac->watermark_level;
>  
>  	bd0->mode.command = C0_SETDM;
> -	bd0->mode.status = BD_DONE | BD_INTR | BD_WRAP | BD_EXTD;
> +	bd0->mode.status = BD_DONE | BD_WRAP | BD_EXTD;
>  	bd0->mode.count = sizeof(*context) / 4;
>  	bd0->buffer_addr = sdma->context_phys;
>  	bd0->ext_buffer_addr = 2048 + (sizeof(*context) / 4) * channel;
> -- 
> 2.7.4
> 
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
