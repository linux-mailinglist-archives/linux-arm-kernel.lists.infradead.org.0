Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0CB57500A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 15:48:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aY6CIXHimKkvVZGkG/pOMlvgl532A7qnS/T8NYdeYhc=; b=ogtJCGn2UDWiAn
	X63VIbmxZ9wqOqUlUpEwaU30ds+PL1H0keYvK4dIPukQf3O9dEcri/bDtiSx2jBwamUbUUT18bU8U
	DaJi5J2g/pXPoLFc3i5ziMRVv/wK3pnMSTBauCLGItk4M+ZAHCthnLtWNXUkncyRfYHcz0vXbGIJu
	6/b60Yiq+k1Sn0GAShe75dmdfdyCytd589yHLyP8XapQQhf0hVL3VxdtF5iISO8YDkirrMhsCICZl
	TdhbAvwh5Y5Bt1Pfw3lCFMySrTrKwur58YxcVynTaML28SfRSINyJ9fCWVw+lc8TQdMiq6umPqyZ7
	lIjzYkDfWSLBzlvKjRtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqe6W-0003nf-4A; Thu, 25 Jul 2019 13:48:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqe60-0003Wr-0p
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 13:47:49 +0000
Received: from localhost (unknown [106.200.241.217])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4BD0E22BEF;
 Thu, 25 Jul 2019 13:47:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564062467;
 bh=vIsBkngdNVkk79IOWc97o+7rTHMW1VY2qcEwi6u4ejk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=QlwSoQ4eBmeD6vqPPIWMZLggxL95X67fhSga8hWPeXYPuyGisldaZAKntupUi1bFN
 BA3nSoEyReGZ+Wf+Sm17zgQd0OSzInZyxfFbJAIRRt3Der8mrEgzh0r5cEEOEHRYoN
 CwKPEBZgBozBc461uj9OszR68eCMftY8nxZj4O0E=
Date: Thu, 25 Jul 2019 19:16:33 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Peter Ujfalusi <peter.ujfalusi@ti.com>
Subject: Re: [PATCH v5 2/3] dmaengine: ti: edma: Correct the residue
 calculation (fix for memcpy)
Message-ID: <20190725134633.GZ12733@vkoul-mobl.Dlink>
References: <20190716082655.1620-1-peter.ujfalusi@ti.com>
 <20190716082655.1620-3-peter.ujfalusi@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190716082655.1620-3-peter.ujfalusi@ti.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_064748_091676_D5BB0AF4 
X-CRM114-Status: GOOD (  24.19  )
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

On 16-07-19, 11:26, Peter Ujfalusi wrote:
> For memcpy we never stored the start address of the transfer for the pset
> which rendered the memcpy residue calculation completely broken.
> 
> In the edma_residue() function we also need to to some correction for the
> calculations:
> Instead waiting for all EDMA channels to be idle (in a busy system it can
> take few iteration to hit a point when all queues are idle) wait for the
> event pending on the given channel (SH_ER for hw synchronized channels,
> SH_ESR for manually triggered channels).
> 
> If the position returned by EMDA is 0 it imiplies that the last paRAM set

s/imiplies/implies

> has been consumed and we are at the closing dummy set, thus we can conclude
> that the transfer is completed and we can return 0 as residue.
> 
> Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
> ---
>  drivers/dma/ti/edma.c | 31 +++++++++++++++++++++++--------
>  1 file changed, 23 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/dma/ti/edma.c b/drivers/dma/ti/edma.c
> index a39f817b3888..5b8cbd6d7610 100644
> --- a/drivers/dma/ti/edma.c
> +++ b/drivers/dma/ti/edma.c
> @@ -1026,6 +1026,7 @@ static int edma_config_pset(struct dma_chan *chan, struct edma_pset *epset,
>  		src_cidx = cidx;
>  		dst_bidx = acnt;
>  		dst_cidx = cidx;
> +		epset->addr = src_addr;
>  	} else {
>  		dev_err(dev, "%s: direction not implemented yet\n", __func__);
>  		return -EINVAL;
> @@ -1736,7 +1737,11 @@ static u32 edma_residue(struct edma_desc *edesc)
>  	int loop_count = EDMA_MAX_TR_WAIT_LOOPS;
>  	struct edma_chan *echan = edesc->echan;
>  	struct edma_pset *pset = edesc->pset;
> -	dma_addr_t done, pos;
> +	dma_addr_t done, pos, pos_old;
> +	int channel = EDMA_CHAN_SLOT(echan->ch_num);
> +	int idx = EDMA_REG_ARRAY_INDEX(channel);
> +	int ch_bit = EDMA_CHANNEL_BIT(channel);
> +	int event_reg;
>  	int i;
>  
>  	/*
> @@ -1749,16 +1754,20 @@ static u32 edma_residue(struct edma_desc *edesc)
>  	 * "pos" may represent a transfer request that is still being
>  	 * processed by the EDMACC or EDMATC. We will busy wait until
>  	 * any one of the situations occurs:
> -	 *   1. the DMA hardware is idle
> -	 *   2. a new transfer request is setup
> +	 *   1. while and event is pending for the channel
> +	 *   2. a position updated
>  	 *   3. we hit the loop limit
>  	 */
> -	while (edma_read(echan->ecc, EDMA_CCSTAT) & EDMA_CCSTAT_ACTV) {
> -		/* check if a new transfer request is setup */
> -		if (edma_get_position(echan->ecc,
> -				      echan->slot[0], dst) != pos) {
> +	if (is_slave_direction(edesc->direction))
> +		event_reg = SH_ER;
> +	else
> +		event_reg = SH_ESR;
> +
> +	pos_old = pos;
> +	while (edma_shadow0_read_array(echan->ecc, event_reg, idx) & ch_bit) {
> +		pos = edma_get_position(echan->ecc, echan->slot[0], dst);
> +		if (pos != pos_old)
>  			break;
> -		}
>  
>  		if (!--loop_count) {
>  			dev_dbg_ratelimited(echan->vchan.chan.device->dev,
> @@ -1783,6 +1792,12 @@ static u32 edma_residue(struct edma_desc *edesc)
>  		return edesc->residue_stat;
>  	}
>  
> +	/*
> +	 * If the position is 0, then EDMA loaded the closing dummy slot, the
> +	 * transfer is completed
> +	 */
> +	if (!pos)
> +		return 0;
>  	/*
>  	 * For SG operation we catch up with the last processed
>  	 * status.
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
