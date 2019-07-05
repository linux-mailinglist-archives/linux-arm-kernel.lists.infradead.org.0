Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A938D60883
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 16:57:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zh7lpGNYfhupCYSeroN9t0gtu0NTpJiCSVliPZQEQrg=; b=DFYHDdpqoll2w6
	ml5FIgcuD59Ofr8/3t8SQTR+LWMunoo6xrr41ikBvY0Jzvl08SHiavIgawZfMo552pwl31nl1AX6V
	Z3swz1X7150E0qY489Su7gg232EHG4QnF7rN6+xuVzMrgST/IQqk2VR+mbABvTCO/TsVp5HpFmEw/
	MCcwU11o1FJIrsO3rBJG4Tu0d+rAGU6UusrK8nO/gtd7WIsO7y8ntBqsMU5qkd0fXqcC4IgYz3KUH
	NYfR2eE9pKdAdC+8Hnj1S9JcJXVwWg3jnH+iudw4YF6cDROAqoS9kYjC2b8v7SnDInbQDFvAvBo8K
	Edqn0QVFJPnbK6AjCryA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjPdz-0000lA-0Z; Fri, 05 Jul 2019 14:56:59 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjPdi-0000ee-Qv
 for linux-arm-kernel@bombadil.infradead.org; Fri, 05 Jul 2019 14:56:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TZQVtCyexkrumSYNtZXQBwrbLrJojXo+7r13I+gI1IQ=; b=kwAQyh/8GJt/C2wAU4Kk/bdM3
 fG7AwM/dkxx5JKZ3pQ9uuahWeM/2Ehzi7rTQVDhdTWydmKxmLt1xqxyNSROz//Tb8OjWRxcvQjgek
 UH3wLzY+MRIBqiRdnn55hO7dBQGRUws/iaTY4/wNQ9kNmVlC5Qc8PiVkPaNWS/Z1DoKSRvCKopOCl
 s/nhSus9dEQJUKUooa8i9uXx7EH6jDC0QSzP0OuR2dKgLKeWjxactVjAB6+7+c6d4e5YJiWUp1/Oo
 q6fXlLvL3hvB590ns/SM51ckWQDwgh2oVboC3+5HCaenri1HWgpZVUidWXj867xty3imQ5byCcQJH
 m6JpQeUeg==;
Received: from mail.kernel.org ([198.145.29.99])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjHaq-0001LT-N0
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 06:21:14 +0000
Received: from localhost (unknown [122.167.76.109])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 35436218A4;
 Fri,  5 Jul 2019 06:20:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562307634;
 bh=DIUX77w8sRwnwNuafe4OdZKSUe7g9Mr+grIEjaDuID4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ODWmce1FMUhZAak0sVROZZmgaXIn/Ar9YylrqoPlQzlobp7Ux+rJLVsNJM10uiURc
 FeaJ7wHFRrWKYUledq/zOgjBorN6vzTzgL6c98GZsW3UrDpu8Z73FFzA65QlCAZen5
 ENa6tK7nO5btUSKVT7jltReFhRy5+udN/fxAafLY=
Date: Fri, 5 Jul 2019 11:47:14 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Peter Ujfalusi <peter.ujfalusi@ti.com>
Subject: Re: [PATCH v4 3/3] dmaengine: ti: edma: Support for polled (memcpy)
 completion
Message-ID: <20190705061714.GU2911@vkoul-mobl>
References: <20190618132148.26468-1-peter.ujfalusi@ti.com>
 <20190618132148.26468-4-peter.ujfalusi@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190618132148.26468-4-peter.ujfalusi@ti.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_072113_095694_24F66398 
X-CRM114-Status: GOOD (  28.71  )
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

On 18-06-19, 16:21, Peter Ujfalusi wrote:
> When a DMA client driver does not set the DMA_PREP_INTERRUPT because it
> does not want to use interrupts for DMA completion or because it can not
> rely on DMA interrupts due to executing the memcpy when interrupts are
> disabled it will poll the status of the transfer.
> 
> Since we can not tell from any EDMA register that the transfer is
> completed, we can only know that the paRAM set has been sent to TPTC for
> processing we need to check the residue of the transfer, if it is 0 then
> the transfer is completed.
> 
> Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
> ---
>  drivers/dma/ti/edma.c | 37 +++++++++++++++++++++++++++++++++----
>  1 file changed, 33 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/dma/ti/edma.c b/drivers/dma/ti/edma.c
> index 48b155cab822..87d7fdaa204b 100644
> --- a/drivers/dma/ti/edma.c
> +++ b/drivers/dma/ti/edma.c
> @@ -171,6 +171,7 @@ struct edma_desc {
>  	struct list_head		node;
>  	enum dma_transfer_direction	direction;
>  	int				cyclic;
> +	bool				polled;
>  	int				absync;
>  	int				pset_nr;
>  	struct edma_chan		*echan;
> @@ -1240,8 +1241,9 @@ static struct dma_async_tx_descriptor *edma_prep_dma_memcpy(
>  
>  	edesc->pset[0].param.opt |= ITCCHEN;
>  	if (nslots == 1) {
> -		/* Enable transfer complete interrupt */
> -		edesc->pset[0].param.opt |= TCINTEN;
> +		/* Enable transfer complete interrupt if requested */
> +		if (tx_flags & DMA_PREP_INTERRUPT)
> +			edesc->pset[0].param.opt |= TCINTEN;
>  	} else {
>  		/* Enable transfer complete chaining for the first slot */
>  		edesc->pset[0].param.opt |= TCCHEN;
> @@ -1268,9 +1270,14 @@ static struct dma_async_tx_descriptor *edma_prep_dma_memcpy(
>  		}
>  
>  		edesc->pset[1].param.opt |= ITCCHEN;
> -		edesc->pset[1].param.opt |= TCINTEN;
> +		/* Enable transfer complete interrupt if requested */
> +		if (tx_flags & DMA_PREP_INTERRUPT)
> +			edesc->pset[1].param.opt |= TCINTEN;
>  	}
>  
> +	if (!(tx_flags & DMA_PREP_INTERRUPT))
> +		edesc->polled = true;
> +
>  	return vchan_tx_prep(&echan->vchan, &edesc->vdesc, tx_flags);
>  }
>  
> @@ -1840,18 +1847,40 @@ static enum dma_status edma_tx_status(struct dma_chan *chan,
>  {
>  	struct edma_chan *echan = to_edma_chan(chan);
>  	struct virt_dma_desc *vdesc;
> +	struct dma_tx_state txstate_tmp;
>  	enum dma_status ret;
>  	unsigned long flags;
>  
>  	ret = dma_cookie_status(chan, cookie, txstate);
> -	if (ret == DMA_COMPLETE || !txstate)
> +
> +	/* Provide a dummy dma_tx_state for completion checking */
> +	if (ret != DMA_COMPLETE && !txstate)
> +		txstate = &txstate_tmp;
> +
> +	if (ret == DMA_COMPLETE)
>  		return ret;

why not do:

        if (ret == DMA_COMPLETE)
                return ret;

        if (!txstate)
                txstate = &txstate_tmp;

> +	txstate->residue = 0;
>  	spin_lock_irqsave(&echan->vchan.lock, flags);
>  	if (echan->edesc && echan->edesc->vdesc.tx.cookie == cookie)
>  		txstate->residue = edma_residue(echan->edesc);
>  	else if ((vdesc = vchan_find_desc(&echan->vchan, cookie)))
>  		txstate->residue = to_edma_desc(&vdesc->tx)->residue;
> +
> +	/*
> +	 * Mark the cookie completed if the residue is 0 for non cyclic
> +	 * transfers
> +	 */
> +	if (ret != DMA_COMPLETE && !txstate->residue &&
> +	    echan->edesc && echan->edesc->polled &&
> +	    echan->edesc->vdesc.tx.cookie == cookie) {
> +		edma_stop(echan);
> +		vchan_cookie_complete(&echan->edesc->vdesc);
> +		echan->edesc = NULL;
> +		edma_execute(echan);
> +		ret = DMA_COMPLETE;
> +	}
> +
>  	spin_unlock_irqrestore(&echan->vchan.lock, flags);
>  
>  	return ret;
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
