Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61C1A74FB8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 15:39:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IZvMwRsjXC4LypJSvXjWBRzlKmH9uOCwW2girb2Laag=; b=EuMKJxJiuKxflo
	Pf/vZJUqvAvrzCD3J2uUOUOxq1gHTMfgmaAxW0v9XpQO7kBgF2w7rlUKelOBi5WfbrgLHB0wFkm2h
	J2USZIVwP/2TonEvL8oOj0v8eqEq8AeS3ky9csZ9OK7NarLQ6V+HH6MTHDwyJCF3iAmFlqZzUfCVr
	aUlZHDkAbr2yD4twaxwvO6BmUuMyRHJrjRM6nS2T3zW/5KM1iwSwOhUPTYGcfS2JmdwcYl/sA/RZy
	r6oMJ5MEXGvc09SpiM6nmo5eBXS1V4UYDdj+DBqpEjs/2sSkYytIHlH/0FHx1Su/olewDLN0cDhsn
	EL2Ski3p9zYWUt6sfbqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqdxq-0007gt-SN; Thu, 25 Jul 2019 13:39:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqdxW-0007gK-UK
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 13:39:04 +0000
Received: from localhost (unknown [106.200.241.217])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7CAAA2238C;
 Thu, 25 Jul 2019 13:39:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564061941;
 bh=GNnRLDXagjW24uJjaZ+NEZpnlhAqk6UFVb6NIhulu8I=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rXj010Fl0AHCZLs0iIYnzBuO54f2B51sWeruKH8aY5fRC17oXxueIGxOyFSHjUhpC
 tXTU2wyNx3FHOOqAMpCYMO0oX1X9FpRfkzWusLcxCb3v8ckoNxft9V/rpoT9GlsjCz
 bAU7oHic/n3Cgbi9l8Ivc+fTApDA/O7SxAwxD0n8=
Date: Thu, 25 Jul 2019 19:07:48 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Peter Ujfalusi <peter.ujfalusi@ti.com>
Subject: Re: [PATCH v2 2/2] dmaengine: ti: omap-dma: Improved memcpy polling
 support
Message-ID: <20190725133748.GX12733@vkoul-mobl.Dlink>
References: <20190716082459.1222-1-peter.ujfalusi@ti.com>
 <20190716082459.1222-3-peter.ujfalusi@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190716082459.1222-3-peter.ujfalusi@ti.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_063903_011044_4280480E 
X-CRM114-Status: GOOD (  22.39  )
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
Cc: dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 16-07-19, 11:24, Peter Ujfalusi wrote:
> When a DMA client driver does not set the DMA_PREP_INTERRUPT because it
> does not want to use interrupts for DMA completion or because it can not
> rely on DMA interrupts due to executing the memcpy when interrupts are
> disabled it will poll the status of the transfer.
> 
> If the interrupts are enabled then the cookie will be set completed in the
> interrupt handler so only check in HW completion when the polling is really
> needed.
> 
> Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
> ---
>  drivers/dma/ti/omap-dma.c | 44 +++++++++++++++++++++++++--------------
>  1 file changed, 28 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/dma/ti/omap-dma.c b/drivers/dma/ti/omap-dma.c
> index 029c0bd550d5..966d8f0323b5 100644
> --- a/drivers/dma/ti/omap-dma.c
> +++ b/drivers/dma/ti/omap-dma.c
> @@ -91,6 +91,7 @@ struct omap_desc {
>  	bool using_ll;
>  	enum dma_transfer_direction dir;
>  	dma_addr_t dev_addr;
> +	bool polled;
>  
>  	int32_t fi;		/* for OMAP_DMA_SYNC_PACKET / double indexing */
>  	int16_t ei;		/* for double indexing */
> @@ -815,26 +816,20 @@ static enum dma_status omap_dma_tx_status(struct dma_chan *chan,
>  	struct virt_dma_desc *vd;
>  	enum dma_status ret;
>  	unsigned long flags;
> +	struct omap_desc *d = NULL;
>  
>  	ret = dma_cookie_status(chan, cookie, txstate);
> -
> -	if (!c->paused && c->running) {
> -		uint32_t ccr = omap_dma_chan_read(c, CCR);
> -		/*
> -		 * The channel is no longer active, set the return value
> -		 * accordingly
> -		 */
> -		if (!(ccr & CCR_ENABLE))
> -			ret = DMA_COMPLETE;
> -	}
> -
> -	if (ret == DMA_COMPLETE || !txstate)
> +	if (ret == DMA_COMPLETE)

why do you want to continue for txstate being null?
Also it would lead to NULL ptr deref for txstate

>  		return ret;
>  
>  	spin_lock_irqsave(&c->vc.lock, flags);
> +	if (c->desc && c->desc->vd.tx.cookie == cookie)
> +		d = c->desc;
> +
> +	if (!txstate)
> +		goto out;
>  
> -	if (c->desc && c->desc->vd.tx.cookie == cookie) {
> -		struct omap_desc *d = c->desc;
> +	if (d) {
>  		dma_addr_t pos;
>  
>  		if (d->dir == DMA_MEM_TO_DEV)
> @@ -851,8 +846,22 @@ static enum dma_status omap_dma_tx_status(struct dma_chan *chan,
>  		txstate->residue = 0;
>  	}
>  
> -	if (ret == DMA_IN_PROGRESS && c->paused)
> +out:
> +	if (ret == DMA_IN_PROGRESS && c->paused) {
>  		ret = DMA_PAUSED;
> +	} else if (d && d->polled && c->running) {
> +		uint32_t ccr = omap_dma_chan_read(c, CCR);
> +		/*
> +		 * The channel is no longer active, set the return value
> +		 * accordingly and mark it as completed
> +		 */
> +		if (!(ccr & CCR_ENABLE)) {
> +			struct omap_desc *d = c->desc;
> +			ret = DMA_COMPLETE;
> +			omap_dma_start_desc(c);
> +			vchan_cookie_complete(&d->vd);
> +		}
> +	}
>  
>  	spin_unlock_irqrestore(&c->vc.lock, flags);
>  
> @@ -1180,7 +1189,10 @@ static struct dma_async_tx_descriptor *omap_dma_prep_dma_memcpy(
>  	d->ccr = c->ccr;
>  	d->ccr |= CCR_DST_AMODE_POSTINC | CCR_SRC_AMODE_POSTINC;
>  
> -	d->cicr = CICR_DROP_IE | CICR_FRAME_IE;
> +	if (tx_flags & DMA_PREP_INTERRUPT)
> +		d->cicr |= CICR_FRAME_IE;
> +	else
> +		d->polled = true;
>  
>  	d->csdp = data_type;
>  
> -- 
> Peter
> 
> Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
> Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
