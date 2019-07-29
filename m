Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEBB9784DF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 08:18:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VYJtrEsyJQGYTr21UDUN5hziQ1s8c7I6WkkOT3kCMYA=; b=snYzGMePhGkBKq
	uFcJTzglg6fA0m+52KM/WX61t46Ooeb5rRlT02/VTZqpagZwoBJwsf9SsEGBCnooEtRspBEXeqrZN
	UXPP3nGPaG/78TA/wmqeQu9lWBg9eyDDEgedKXN8wKThEpgStaWVgsv49s81twgn4WspGzKBMxIil
	3No5CmrSXaDb40spw/+iTz7W6SmVf+u/vs6/HbSVXg+KAUTIVcGUKvs4mNhcoOvluacCQmVr8qjeA
	1Lj6T565hKYyedROczznEQ9ktS2TBlbLJj3uHlY36mYa6WklYsDMzvVVYl1OVArDEArj7s6WJq0/M
	lsgA95y/QU+33p81ZP2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hryyy-0006Hq-H8; Mon, 29 Jul 2019 06:18:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hryyl-0006HB-9Q
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 06:17:52 +0000
Received: from localhost (unknown [122.178.221.187])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 34E9A20578;
 Mon, 29 Jul 2019 06:17:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564381067;
 bh=SzvnrYeZ/XVMFTRV94yVm4GxaXQLhbrOmoBn0kkt5WA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NEJHkhIRe3vLDfy4/gTgsVp62iujdtY5y67s5hPGe2OzXzQbgUR7lpQhcgd61inXL
 qUStUbcCTjjyD5EYIU/1BUbc0pIGXDfSeWzoPAzHZt5aibsI/EZkl02fqyKzLIX4yc
 mM32MaHU+ycs/lyOjtTIft+tIE84XRl5cNhHYaE8=
Date: Mon, 29 Jul 2019 11:46:34 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Peter Ujfalusi <peter.ujfalusi@ti.com>
Subject: Re: [PATCH v2 2/2] dmaengine: ti: omap-dma: Improved memcpy polling
 support
Message-ID: <20190729061634.GD12733@vkoul-mobl.Dlink>
References: <20190716082459.1222-1-peter.ujfalusi@ti.com>
 <20190716082459.1222-3-peter.ujfalusi@ti.com>
 <20190725133748.GX12733@vkoul-mobl.Dlink>
 <59794775-95e6-04c3-2660-9344c89df9a1@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <59794775-95e6-04c3-2660-9344c89df9a1@ti.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_231751_347895_AEBECE25 
X-CRM114-Status: GOOD (  20.01  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

On 25-07-19, 17:07, Peter Ujfalusi wrote:
> 
> 
> On 25/07/2019 16.37, Vinod Koul wrote:
> > On 16-07-19, 11:24, Peter Ujfalusi wrote:
> >> When a DMA client driver does not set the DMA_PREP_INTERRUPT because it
> >> does not want to use interrupts for DMA completion or because it can not
> >> rely on DMA interrupts due to executing the memcpy when interrupts are
> >> disabled it will poll the status of the transfer.
> >>
> >> If the interrupts are enabled then the cookie will be set completed in the
> >> interrupt handler so only check in HW completion when the polling is really
> >> needed.
> >>
> >> Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
> >> ---
> >>  drivers/dma/ti/omap-dma.c | 44 +++++++++++++++++++++++++--------------
> >>  1 file changed, 28 insertions(+), 16 deletions(-)
> >>
> >> diff --git a/drivers/dma/ti/omap-dma.c b/drivers/dma/ti/omap-dma.c
> >> index 029c0bd550d5..966d8f0323b5 100644
> >> --- a/drivers/dma/ti/omap-dma.c
> >> +++ b/drivers/dma/ti/omap-dma.c
> >> @@ -91,6 +91,7 @@ struct omap_desc {
> >>  	bool using_ll;
> >>  	enum dma_transfer_direction dir;
> >>  	dma_addr_t dev_addr;
> >> +	bool polled;
> >>  
> >>  	int32_t fi;		/* for OMAP_DMA_SYNC_PACKET / double indexing */
> >>  	int16_t ei;		/* for double indexing */
> >> @@ -815,26 +816,20 @@ static enum dma_status omap_dma_tx_status(struct dma_chan *chan,
> >>  	struct virt_dma_desc *vd;
> >>  	enum dma_status ret;
> >>  	unsigned long flags;
> >> +	struct omap_desc *d = NULL;
> >>  
> >>  	ret = dma_cookie_status(chan, cookie, txstate);
> >> -
> >> -	if (!c->paused && c->running) {
> >> -		uint32_t ccr = omap_dma_chan_read(c, CCR);
> >> -		/*
> >> -		 * The channel is no longer active, set the return value
> >> -		 * accordingly
> >> -		 */
> >> -		if (!(ccr & CCR_ENABLE))
> >> -			ret = DMA_COMPLETE;
> >> -	}
> >> -
> >> -	if (ret == DMA_COMPLETE || !txstate)
> >> +	if (ret == DMA_COMPLETE)
> > 
> > why do you want to continue for txstate being null?
> 
> The caller could opt to not provide txstate and I still need to check if
> the non completed transfer is actually done by the HW or not.
> 
> > Also it would lead to NULL ptr deref for txstate
> 
> There is a !txstate check to avoid that.
> 
> > 
> >>  		return ret;
> >>  
> >>  	spin_lock_irqsave(&c->vc.lock, flags);
> >> +	if (c->desc && c->desc->vd.tx.cookie == cookie)
> >> +		d = c->desc;
> >> +
> >> +	if (!txstate)
> >> +		goto out;

Oops missed that, let me check again and do the needful

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
