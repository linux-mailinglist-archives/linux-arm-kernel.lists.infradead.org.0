Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C174B3C77
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 16:22:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dKOiWMudAQRMNi1M698vfA6I1R8bKRo6jtNCSg/Q7oY=; b=k/2fLXOBJKePPG
	JzQjdcFifiMVxZVg9vne0CsamZ1mMXEfdUBP5d+OwzT3YiCdj7GxFqejVtsKt7Y+n/OI0YdW3j0J1
	dLWE8ZR0Y1rlgXeL+bIbtzh+usXG62EtQ9SA8HEqgx6ldiUV1V6a3l7cz90RXpT3IcJyra34AzZwd
	aPDMgJhRsYw0BUVTw1CIJJ7UlktyCasC4J9ensQs9nHewQJiKPoFRFY3EAuXMjA9A2sOXB4ZZ0+il
	jSkk5o8T2bOilKI8YyTrvWtGCeG/tWEqnrteMNHs0CEUIiLPLJyQGL3j2rLedHaTM0ktIXZS504Pf
	vAAKG/yzdHqGiqHxwIjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9rto-0007sh-4G; Mon, 16 Sep 2019 14:22:40 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9rta-0007sG-6C
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 14:22:27 +0000
Received: from kresse.hi.pengutronix.de ([2001:67c:670:100:1d::2a])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>)
 id 1i9rtQ-0002pr-RC; Mon, 16 Sep 2019 16:22:16 +0200
Message-ID: <2f1f94e9d373378a94ed88fe583f7cbead531875.camel@pengutronix.de>
Subject: Re: [PATCH 2/4] dmaengine: imx-sdma: fix dma freezes
From: Lucas Stach <l.stach@pengutronix.de>
To: Philipp Puschmann <philipp.puschmann@emlix.com>, 
 linux-kernel@vger.kernel.org
Date: Mon, 16 Sep 2019 16:22:15 +0200
In-Reply-To: <20190911144943.21554-3-philipp.puschmann@emlix.com>
References: <20190911144943.21554-1-philipp.puschmann@emlix.com>
 <20190911144943.21554-3-philipp.puschmann@emlix.com>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::2a
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_072226_232522_73E56057 
X-CRM114-Status: GOOD (  22.63  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: festevam@gmail.com, kernel@pengutronix.de, gregkh@linuxfoundation.org,
 s.hauer@pengutronix.de, vkoul@kernel.org, linux-imx@nxp.com,
 linux-serial@vger.kernel.org, jslaby@suse.com, dmaengine@vger.kernel.org,
 dan.j.williams@intel.com, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mi, 2019-09-11 at 16:49 +0200, Philipp Puschmann wrote:
> For some years and since many kernel versions there are reports that the
> RX UART SDMA channel stops working at some point. The workaround was to
> disable DMA for RX. This commit tries to fix the problem itself.
> 
> Due to its license i wasn't able to debug the sdma script itself but it
> somehow leads to blocking the scheduling of the channel script when a
> running sdma script does not find any usable destination buffer to put its
> data into.
> 
> If we detect such a potential case we manually retrigger the sdma script
> for this channel and by this reenable the scipt being run by scheduler.
> 
> As sdmac->desc is constant we can move desc out of the loop.
> 
> Signed-off-by: Philipp Puschmann <philipp.puschmann@emlix.com>
> ---
>  drivers/dma/imx-sdma.c | 22 ++++++++++++++++++----
>  1 file changed, 18 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/dma/imx-sdma.c b/drivers/dma/imx-sdma.c
> index 1abb14ff394d..6a5a84504858 100644
> --- a/drivers/dma/imx-sdma.c
> +++ b/drivers/dma/imx-sdma.c
> @@ -775,21 +775,23 @@ static void sdma_start_desc(struct sdma_channel *sdmac)
>  static void sdma_update_channel_loop(struct sdma_channel *sdmac)
>  {
>  	struct sdma_buffer_descriptor *bd;
> -	int error = 0;
> -	enum dma_status	old_status = sdmac->status;
> +	struct sdma_desc *desc = sdmac->desc;
> +	int error = 0, cnt = 0;
> +	enum dma_status old_status = sdmac->status;
>  
>  	/*
>  	 * loop mode. Iterate over descriptors, re-setup them and
>  	 * call callback function.
>  	 */
> -	while (sdmac->desc) {
> -		struct sdma_desc *desc = sdmac->desc;
> +	while (desc) {
>  
>  		bd = &desc->bd[desc->buf_tail];
>  
>  		if (bd->mode.status & BD_DONE)
>  			break;
>  
> +		cnt++;
> +
>  		if (bd->mode.status & BD_RROR) {
>  			bd->mode.status &= ~BD_RROR;
>  			sdmac->status = DMA_ERROR;
> @@ -821,6 +823,18 @@ static void sdma_update_channel_loop(struct sdma_channel *sdmac)
>  		if (error)
>  			sdmac->status = old_status;
>  	}
> +
> +	/* In some situations it happens that the sdma stops serving
> +	 * dma interrupt requests. It happens when running dma script
> +	 * does not find any usable destination buffer to put its data into.
> +	 *

This part of the comment is slightly confusing, as what happens is that
the SDMA channel is stopped when there are no free descriptors in the
ring anymore. After the channel is stopped it needs to be kicked back
to life after there are descriptors available again.

But apart from this nitpick the change looks good to me:
Reviewed-by: Lucas Stach <l.stach@pengutronix.de>

Regards,
Lucas

> +	 * While there is no specific error condition we can check for, a
> +	 * necessary condition is that all available buffers for the current
> +	 * channel have been written to by the sdma script. In such a case we
> +	 * will trigger the sdma script manually.
> +	 */
> +	if (cnt >= desc->num_bd)
> +		sdma_enable_channel(sdmac->sdma, sdmac->channel);
>  }
>  
>  static void mxc_sdma_handle_channel_normal(struct sdma_channel *data)


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
