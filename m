Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEFFE60882
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 16:56:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qm8wj8lpS+0NydQtZdXPw5XdED3uNF0maYq2pCfs9NQ=; b=Yi3tn4apgLHwbJ
	zFfl/Ga8N9xLoKGNr7PECTun/u/RfSN6vFFGS3RmvRzwGXt7EgmuJRH0jyupwyoMOmmH7azf0XCfO
	sIF38LhBFu6PjMtVLzdSi9JW++UD/4yxO55NQVYJqGDSMtcUO0AEln77x3EzREmOVKOmQQHQGo2Q4
	ccaVRhWhsza7pRbmt1ha4TczOv6vzqwQWujo9uyyxx0JCN/ycA6b3E4uBvYEok1D5+RU1+7YGhseY
	eOVK3Bn4wAyiXG4KiEruhbbEFEUed1Lxy0esSbx6Hy3Kudl1ZKy1NIgRTMR7eRH/wI3SnCxcgMSm0
	CBIKszvsRtidzFWkDyOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjPdm-0000cF-FA; Fri, 05 Jul 2019 14:56:46 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjPde-0000bp-UU
 for linux-arm-kernel@bombadil.infradead.org; Fri, 05 Jul 2019 14:56:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DgEZHXrPyCIS8PabR/wb9xToXLFVoFyEUQVMjjFmsnU=; b=DZQ4moY9LX3D3shbhscRs25Kz
 YJUsBdUEP+oeWrt+5DdjnmuuVBTGO777nB2Q0nIoglWF4MDDGOzBfGFSqQxSeu+nSCKhsIdRaSENL
 GQYwQDe/BY7KNBBwITK+tGPvXiuyOM6Yy4RsdSq1+DHbEtKzzu22bkrUt5fvfeJafp+JTF3C+wmYw
 nlW5FNOdnQ8PTHTG9HGN8okSHza9TQDR2MRTousGHhVT4IWs2kKCI82Db/Bl2/8pAiKfczKot8Ffh
 tdSOX4GZiSW10W3Gy+GEqG3T8uCwq/XVaSQJgpmf798Fb8SYFG4wHo29HHEGx8IYJROswe3uhKsi8
 hRpjD0IkA==;
Received: from mail.kernel.org ([198.145.29.99])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjHgx-0001TJ-A3
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 06:27:33 +0000
Received: from localhost (unknown [122.167.76.109])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 44EF721852;
 Fri,  5 Jul 2019 06:26:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562308013;
 bh=OPPgzlGrMc090YOE4UlzaNMP/7utaboAXG3uVsjalPk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=kUeuuzfenwPI+0LckEUWN5ahEROyyvBFDjsMS8EbzSJE/G5C3fNS1V4kh2H1wtytu
 BviG6dkYb0wfVvq8GpV9M6IhCez7uvjL9K//hvHa2mxat+IkYmvGOW9OtC78nEQb+6
 SEYbvDy8Mz/EvPY985no/CD0I6ZeWL5go0bfSwFY=
Date: Fri, 5 Jul 2019 11:53:34 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Peter Ujfalusi <peter.ujfalusi@ti.com>
Subject: Re: [PATCH] dmaengine: ti: omap-dma: Improved memcpy polling support
Message-ID: <20190705062334.GV2911@vkoul-mobl>
References: <20190618132416.26874-1-peter.ujfalusi@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190618132416.26874-1-peter.ujfalusi@ti.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_072731_690529_CC3AACCA 
X-CRM114-Status: GOOD (  33.77  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-5.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 18-06-19, 16:24, Peter Ujfalusi wrote:
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
> Hi,
> 
> This patch fine-tunes the omap-dma polled memcpy support to be inline with how
> the EDMA driver is handling it.
> 
> The polled completion can be tested by applying:
> https://patchwork.kernel.org/patch/10966499/
> 
> and run the dmatest with polled = 1 on boards where sDMA is used.
> 
> Or boot up any dra7 family device with display enabled. The workaround for DMM
> errata i878 uses polled DMA memcpy.
> 
> Regards,
> Peter
> 
>  drivers/dma/ti/omap-dma.c | 37 ++++++++++++++++++++++++-------------
>  1 file changed, 24 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/dma/ti/omap-dma.c b/drivers/dma/ti/omap-dma.c
> index 5ba7d8485026..75d8f7e13c8d 100644
> --- a/drivers/dma/ti/omap-dma.c
> +++ b/drivers/dma/ti/omap-dma.c
> @@ -94,6 +94,7 @@ struct omap_desc {
>  	bool using_ll;
>  	enum dma_transfer_direction dir;
>  	dma_addr_t dev_addr;
> +	bool polled;
>  
>  	int32_t fi;		/* for OMAP_DMA_SYNC_PACKET / double indexing */
>  	int16_t ei;		/* for double indexing */
> @@ -834,20 +835,10 @@ static enum dma_status omap_dma_tx_status(struct dma_chan *chan,
>  
>  	ret = dma_cookie_status(chan, cookie, txstate);
>  
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
> +	spin_lock_irqsave(&c->vc.lock, flags);
>  	if (ret == DMA_COMPLETE || !txstate)
> -		return ret;
> +		goto out;
>  
> -	spin_lock_irqsave(&c->vc.lock, flags);
>  	vd = vchan_find_desc(&c->vc, cookie);
>  	if (vd) {
>  		txstate->residue = omap_dma_desc_size(to_omap_dma_desc(&vd->tx));
> @@ -868,6 +859,23 @@ static enum dma_status omap_dma_tx_status(struct dma_chan *chan,
>  	}
>  	if (ret == DMA_IN_PROGRESS && c->paused)
>  		ret = DMA_PAUSED;
> +
> +out:
> +	if (ret == DMA_IN_PROGRESS && c->running && c->desc &&
> +	    c->desc->polled && c->desc->vd.tx.cookie == cookie) {

heh, that makes quite a read!

checking DMA_IN_PROGRESS should not make sense, as we should bail out at
the start if it is completed

I think other can be optimzed to make it a better read!

> +		uint32_t ccr = omap_dma_chan_read(c, CCR);
> +		/*
> +		 * The channel is no longer active, set the return value
> +		 * accordingly
> +		 */
> +		if (!(ccr & CCR_ENABLE)) {
> +			struct omap_desc *d = c->desc;
> +			ret = DMA_COMPLETE;
> +			omap_dma_start_desc(c);
> +			vchan_cookie_complete(&d->vd);
> +		}
> +	}
> +
>  	spin_unlock_irqrestore(&c->vc.lock, flags);
>  
>  	return ret;
> @@ -1233,7 +1241,10 @@ static struct dma_async_tx_descriptor *omap_dma_prep_dma_memcpy(
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
