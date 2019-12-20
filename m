Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EC58127749
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 09:37:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ldXC0zLGWUxigyTJ/XoPtovyKfjihEiilgyZLuJc3sk=; b=u6R4NHhthI/gHj
	eEA19w0KNiRZ8Vcye6cwxx82DcKg/rjhAI8muUAmzZy4KdyY0rnTuoaDJUyLBHthhQ8Va8BqNJFwV
	P4TrScXrYxA+iPR758hX9FFySHgsQdvTrCK0rKDGP5T8lAMrzRMebvtSP6/9KS4r8zwHDm5y2R2WT
	At2Klc7ei5XR0MoGFrNVQAtHow4HX4+D2zK+vSSNa1M326d1GxIs0n0WysGXHwZiFByFSNjiOIHZP
	uHEZYt4wJ3vYrmcn8UeMFiEMm6JbBrAauF58HhRweAQoPL8MC7Yw3U6FLeD/cturvgByAbINLChhE
	YmVbTeHDsz4z0ASVLHXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiDn0-0000KD-Bf; Fri, 20 Dec 2019 08:37:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiDmg-0000FY-8H
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 08:37:20 +0000
Received: from localhost (unknown [106.201.107.54])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C4A0A2467F;
 Fri, 20 Dec 2019 08:37:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576831037;
 bh=MwmGwgRhGq+RQ75KDzhynCsOSx4RNN1uA6bAbx7zxGQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qs3ZUFjS2s6IKXqXMNe+xw4oHPJ0ryil98Uvc7u2PQ7Vlev7g9+6xq/DEPvCZFwea
 itZLuk5mM64Ij3Hn4v4sB/iA3mixlNGx4D0to0STKet4Wcg2U1i/18E8c4/8mqoa1W
 UX4KFY3+4mNitKcgQe1be5pFxHiy69NyNLkammhQ=
Date: Fri, 20 Dec 2019 14:07:13 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Peter Ujfalusi <peter.ujfalusi@ti.com>
Subject: Re: [PATCH v7 05/12] dmaengine: Add support for reporting DMA cached
 data amount
Message-ID: <20191220083713.GL2536@vkoul-mobl>
References: <20191209094332.4047-1-peter.ujfalusi@ti.com>
 <20191209094332.4047-6-peter.ujfalusi@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191209094332.4047-6-peter.ujfalusi@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_003718_360987_B6A3ACE5 
X-CRM114-Status: GOOD (  15.01  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: nm@ti.com, devicetree@vger.kernel.org, grygorii.strashko@ti.com,
 vigneshr@ti.com, lokeshvutla@ti.com, j-keerthy@ti.com,
 linux-kernel@vger.kernel.org, t-kristo@ti.com, tony@atomide.com,
 robh+dt@kernel.org, ssantosh@kernel.org, dmaengine@vger.kernel.org,
 dan.j.williams@intel.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 09-12-19, 11:43, Peter Ujfalusi wrote:
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

This would be used by dmaengine drivers right, so lets move it to drivers/dma/dmaengine.h

lets not expose this to users :)

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
