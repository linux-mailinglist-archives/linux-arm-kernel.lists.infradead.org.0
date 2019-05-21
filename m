Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52F6224742
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 07:04:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hHMJuvMJ6PPkAaRaMosbbt6etX4T9RJ/T9GGLxQrwC0=; b=GfdAtErF9dr7Qt
	v9A5r12bC1mN/9rTPHVUhuuPPwOt2hf4hcZNERXloRajCvrYMg2nYUaNLHCJg2yHM3o4BoJO6xZ7z
	G8pT5trcB97+z66I5wnQWt+DdcVZWrGwaVSEx18rX5LAMOik8d8LGrRfzd60V5HBPDbqCSzXLzWNO
	2UUxrjkrTj6DR3umgbHy/8bXL288Dlc3SJDMoPafsDthBaP3g8H7j/sJ9g4saiAJ7bxcVS8O1MNKL
	d76y/1aJUPx1Cr30RiDCSzP5YeU7LhVKLCZ52SwEpXDXa/EPHKObLLd5RM6rFRxPIPQ1R8xm3S9rs
	ON3zyIZ+oYIynZGEcZiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSwx7-0007gl-JL; Tue, 21 May 2019 05:04:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSwx0-0007gP-Um
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 05:04:36 +0000
Received: from localhost (unknown [106.201.107.13])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A86CB21019;
 Tue, 21 May 2019 05:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558415074;
 bh=TfFWdXCeoIR0c8wyuyKa6CqTWu3M6JCEGZ9N8xiq7m8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=s7w+Sgp8oeO7blYnKIbuQOYp6RKAvpl2MPaclzdnzxXh9Opd//lT1jzxWxj72KySj
 V7SkCfz1pPRQOTlDEfa0hwnDZm7PW1g7i2pVyALv9MjilWRdos5jWP2OPtz7aUNH1/
 lRX7H3tZ44JFVZEX5s62q1Ka+KcLJdbs+MIDthSY=
Date: Tue, 21 May 2019 10:34:30 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Peter Ujfalusi <peter.ujfalusi@ti.com>
Subject: Re: [PATCH] dmaengine: ti: edma: Enable support for polled (memcpy)
 completion
Message-ID: <20190521050430.GS15118@vkoul-mobl>
References: <20190514080909.10306-1-peter.ujfalusi@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190514080909.10306-1-peter.ujfalusi@ti.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_220435_016118_13CAC525 
X-CRM114-Status: GOOD (  18.57  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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

On 14-05-19, 11:09, Peter Ujfalusi wrote:
> When a DMA client driver decides that it is not providing callback for
> completion of a transfer (and/or does not set the DMA_PREP_INTERRUPT) but
> it will poll the status of the transfer (in case of short memcpy for
> example) we will not get interrupt for the completion of the transfer and
> will not mark the transaction as done.
> 
> Check the event registers (ER and EER) and if the channel is inactive then
> return wioth DMA_COMPLETE to let the client know that the transfer is
        ^^^^^
Typo

> completed.
> 
> Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
> ---
>  drivers/dma/ti/edma.c | 23 ++++++++++++++++++++---
>  1 file changed, 20 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/dma/ti/edma.c b/drivers/dma/ti/edma.c
> index ceabdea40ae0..7501445af069 100644
> --- a/drivers/dma/ti/edma.c
> +++ b/drivers/dma/ti/edma.c
> @@ -1211,8 +1211,9 @@ static struct dma_async_tx_descriptor *edma_prep_dma_memcpy(
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
> @@ -1239,7 +1240,9 @@ static struct dma_async_tx_descriptor *edma_prep_dma_memcpy(
>  		}
>  
>  		edesc->pset[1].param.opt |= ITCCHEN;
> -		edesc->pset[1].param.opt |= TCINTEN;
> +		/* Enable transfer complete interrupt if requested */
> +		if (tx_flags & DMA_PREP_INTERRUPT)
> +			edesc->pset[1].param.opt |= TCINTEN;
>  	}
>  
>  	return vchan_tx_prep(&echan->vchan, &edesc->vdesc, tx_flags);
> @@ -1801,6 +1804,20 @@ static enum dma_status edma_tx_status(struct dma_chan *chan,
>  	unsigned long flags;
>  
>  	ret = dma_cookie_status(chan, cookie, txstate);
> +
> +	if (ret != DMA_COMPLETE && echan->edesc && !echan->edesc->cyclic) {
> +		struct edma_cc *ecc = echan->ecc;
> +		int channel = EDMA_CHAN_SLOT(echan->ch_num);
> +		int j = (channel >> 5);
> +		unsigned int mask = BIT(channel & 0x1f);

GENMASK or define a macro instead of a magic number?

> +		unsigned int sh_er = edma_shadow0_read_array(ecc, SH_ER, j);
> +		unsigned int sh_eer = edma_shadow0_read_array(ecc, SH_EER, j);
> +
> +		/* The channel is no longer active */
> +		if (!(sh_er & mask) && !(sh_eer & mask))
> +			ret = DMA_COMPLETE;
> +	}
> +
>  	if (ret == DMA_COMPLETE || !txstate)
>  		return ret;
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
