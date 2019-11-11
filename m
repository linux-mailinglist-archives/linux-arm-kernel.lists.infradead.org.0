Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 739D7F6D9C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 05:40:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=icopHdw3g5fN+pDyIzBl4MftrkUdTTPP7dhJ6XF9P3o=; b=QGB5B8sJxsKhen
	GzKn1DTf1Dp16ZLUhVurh3yQ3RQOCykg+qJbLFbNpxtRt7Op3Z7chxp68C5FFfI8M5PvK3Dgj84Cv
	G6L6ICfy2NmVeTOYirwUBJMykz6B7CZ6RGrmc9aLM0kdyPktVS7fJDGMOlQdirqtzDLx/yNdkcNWI
	9+l1oBE/BK7sHgB+aleb+E3lXhxkCiX2NL7EIwvMEhU8/UNb/IzkJuVI/Ipd5+fE20oL1mhJxn4bf
	om2PXL5ogpz4FuUs4qhM083814f04HOk0Wsaeps0hlXD2YHuWl3Od/8ui8umq/0fGCEGAVMNLS9cz
	ygOPAOKddASsZfszZXsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU1Uu-00035T-TO; Mon, 11 Nov 2019 04:40:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU1Ui-0002Zi-0o
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 04:40:05 +0000
Received: from localhost (unknown [106.201.42.77])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 88B0F20856;
 Mon, 11 Nov 2019 04:40:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573447202;
 bh=IbqTizAofEr4fAlNvQZJC9e5XYpXENQc/RRIOCFORfQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pMA4xX1cvwbWOJT0hA/nZrCBydq0lxFRgimzmpVnyya2HCzceOyfJkrKVI8G/SZS1
 98tvL1CrGZrU4BECstDOm7rjbgm7pHuDnrSM4/IncQsFOABV/RhsR9m3RcCNUoojCx
 RG3iHH00fUKscPWTdoARJf3TIlsMeDNz1/Yk8GbU=
Date: Mon, 11 Nov 2019 10:09:57 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Peter Ujfalusi <peter.ujfalusi@ti.com>
Subject: Re: [PATCH v4 05/15] dmaengine: Add support for reporting DMA cached
 data amount
Message-ID: <20191111043957.GL952516@vkoul-mobl>
References: <20191101084135.14811-1-peter.ujfalusi@ti.com>
 <20191101084135.14811-6-peter.ujfalusi@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191101084135.14811-6-peter.ujfalusi@ti.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_204004_091508_07F03634 
X-CRM114-Status: GOOD (  16.58  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: nm@ti.com, devicetree@vger.kernel.org, grygorii.strashko@ti.com,
 lokeshvutla@ti.com, j-keerthy@ti.com, linux-kernel@vger.kernel.org,
 t-kristo@ti.com, tony@atomide.com, robh+dt@kernel.org, ssantosh@kernel.org,
 dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 01-11-19, 10:41, Peter Ujfalusi wrote:
> A DMA hardware can have big cache or FIFO and the amount of data sitting in
> the DMA fabric can be an interest for the clients.
> 
> For example in audio we want to know the delay in the data flow and in case
> the DMA have significantly large FIFO/cache, it can affect the latenc/delay
> 
> Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
> Reviewed-by: Tero Kristo <t-kristo@ti.com>
> ---
>  drivers/dma/dmaengine.h   | 8 ++++++++
>  include/linux/dmaengine.h | 2 ++
>  2 files changed, 10 insertions(+)
> 
> diff --git a/drivers/dma/dmaengine.h b/drivers/dma/dmaengine.h
> index 501c0b063f85..b0b97475707a 100644
> --- a/drivers/dma/dmaengine.h
> +++ b/drivers/dma/dmaengine.h
> @@ -77,6 +77,7 @@ static inline enum dma_status dma_cookie_status(struct dma_chan *chan,
>  		state->last = complete;
>  		state->used = used;
>  		state->residue = 0;
> +		state->in_flight_bytes = 0;
>  	}
>  	return dma_async_is_complete(cookie, complete, used);
>  }
> @@ -87,6 +88,13 @@ static inline void dma_set_residue(struct dma_tx_state *state, u32 residue)
>  		state->residue = residue;
>  }
>  
> +static inline void dma_set_in_flight_bytes(struct dma_tx_state *state,
> +					   u32 in_flight_bytes)
> +{
> +	if (state)
> +		state->in_flight_bytes = in_flight_bytes;
> +}
> +
>  struct dmaengine_desc_callback {
>  	dma_async_tx_callback callback;
>  	dma_async_tx_callback_result callback_result;
> diff --git a/include/linux/dmaengine.h b/include/linux/dmaengine.h
> index 0e8b426bbde9..c4c5219030a6 100644
> --- a/include/linux/dmaengine.h
> +++ b/include/linux/dmaengine.h
> @@ -682,11 +682,13 @@ static inline struct dma_async_tx_descriptor *txd_next(struct dma_async_tx_descr
>   * @residue: the remaining number of bytes left to transmit
>   *	on the selected transfer for states DMA_IN_PROGRESS and
>   *	DMA_PAUSED if this is implemented in the driver, else 0
> + * @in_flight_bytes: amount of data in bytes cached by the DMA.
>   */
>  struct dma_tx_state {
>  	dma_cookie_t last;
>  	dma_cookie_t used;
>  	u32 residue;
> +	u32 in_flight_bytes;

Should we add this here or use the dmaengine_result()

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
