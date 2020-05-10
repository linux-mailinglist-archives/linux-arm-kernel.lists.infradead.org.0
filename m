Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49EEA1CCC10
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 10 May 2020 17:52:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5eph/pXWexRHtErHCaNZGWDcYsbDyvcOUaPkDZOVq1k=; b=jOQDjLEcDQ9zLQ
	QAw9NmZ3rOt01qCD1zVGiB6k4rP2Hqso7DvMOqDwIBOR1bPAEQNBXaWyL1ptUw/VufEGBhiNL1uCb
	DcKlASNWGZDXaWOobhb+5l6vuJpPK3VWIe9v73r/0kojU2QLgOW1iY7ucE6cYEtZUAdbtemSG13ic
	f9rGFk9bzcEP82+6dN4zfyu1bGsV9Khb81SXpOwQpcC1DNLE9wM6rNP3h3OYSKY01z1JPTh0Eg30Y
	vYjw4IeGWldUmskMHlJRIOX5ZiIH/OfbQl7x4QM5BWzL/lVN6sO1Fm1vM994mTmv+6nf2pLwXtWj3
	8HAm9Sl6KGcV7Qv2DIYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXoFV-00007l-W3; Sun, 10 May 2020 15:52:17 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXoFO-00006d-G3
 for linux-arm-kernel@lists.infradead.org; Sun, 10 May 2020 15:52:12 +0000
Received: by mail-pl1-x641.google.com with SMTP id s10so2851975plr.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 10 May 2020 08:52:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=wS2EF5eWwXz+epwYSR1MVGJvkvx3Tj4ljAwoZJaG55M=;
 b=DYVAA5IrBg7w4bhkiFPd9r9cOBkHq/a6W4LMFsJZV4EwgcIEZB8HjzlYuIZ3FEgQ1w
 lHWoSRwUlpOc1M91pVnWjkHIe0Taa28EXKsLNlo2gMYkrdgJSNjYGdeH5gHKOFJLexa5
 7SOvugKmO06RfR5QQyaDtJPmjxPt0KDwP67FnEMiE1GJSkkCcEoYbzNoW98lVelRwkH4
 YzxK1Zvad5dXsIzz7d4ntu1D5/FkHS1LkEsKUeuBjNuwFdEFdltSDx2i0HD7l/5qiHkZ
 +rIobyBkkWuKUFNzmr5BhuhRfm/7ssjYoIAPsDmeVtoT9nv3zOGDguTO3xBSxzoRULou
 kCJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=wS2EF5eWwXz+epwYSR1MVGJvkvx3Tj4ljAwoZJaG55M=;
 b=Ffb6B1Mrq/oHRvHaLRtmlbnlI68OXwpH9mp/I9F+FML4HCHrOrJg791/vbPX8F1U0d
 LYFUsKZRk1BcbNVaLQGeKplhQ6XWAfTjgsNm9ns6LuNiI2T4Uy2TO5vREqvAo8lfzIgI
 jKrbULjnTDzjbDTV5Ujd2VuhkoWc7pGcL8jlNAUC1POx9cw1iFPmJHwykWnG/RkQILQV
 3H6vfTH+UV9Cxdkf/PpqjBxbN5bSAY75sfgpqS5aOnXdYboc3yAf5HREcuWT9QotBJeG
 +hHRIVsBFlN0FAMw6XQJ52QfXnpWjK/BqmYyLuiTXjcuIAFLZ0vxFaDsPznbA5E9DtSx
 fq2w==
X-Gm-Message-State: AGi0PuZSAzx3XOGGrmV8oPZRDzC/n7awJfVuMZnu5qIvbhsYlHyvihG4
 fdNESQIyFrKD25826bWG2lit
X-Google-Smtp-Source: APiQypK4YyulG/WyhZuIuIVx/PuP8Uwtt8Cr4PbMU4ZfcH0wHlRtrqBR/xYBP9BGpffVNQiVTtG4tA==
X-Received: by 2002:a17:90a:290f:: with SMTP id
 g15mr17028947pjd.93.1589125929067; 
 Sun, 10 May 2020 08:52:09 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:6e91:c397:8daa:1f46:6608:df6c])
 by smtp.gmail.com with ESMTPSA id go21sm7772268pjb.45.2020.05.10.08.52.02
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 10 May 2020 08:52:08 -0700 (PDT)
Date: Sun, 10 May 2020 21:21:59 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Amit Singh Tomar <amittomer25@gmail.com>
Subject: Re: [PATCH RFC 1/8] dmaengine: Actions: get rid of bit fields from
 dma descriptor
Message-ID: <20200510155159.GA27924@Mani-XPS-13-9360>
References: <1588761371-9078-1-git-send-email-amittomer25@gmail.com>
 <1588761371-9078-2-git-send-email-amittomer25@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1588761371-9078-2-git-send-email-amittomer25@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200510_085210_548095_CDD03114 
X-CRM114-Status: GOOD (  23.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: andre.przywara@arm.com, linux-actions@lists.infradead.org,
 cristian.ciocaltea@gmail.com, vkoul@kernel.org, dmaengine@vger.kernel.org,
 dan.j.williams@intel.com, afaerber@suse.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Wed, May 06, 2020 at 04:06:03PM +0530, Amit Singh Tomar wrote:
> At the moment, Driver uses bit fields to describe registers of the DMA
> descriptor structure that makes it less portable and maintainable, and
> Andre suugested(and even sketched important bits for it) to make use of
> array to describe this DMA descriptors instead. It gives the flexibility
> while extending support for other platform such as Actions S700.
> 
> This commit removes the "owl_dma_lli_hw" (that includes bit-fields) and
> uses array to describe DMA descriptor.
> 

I'm in favor of getting rid of bitfields due to its not so defined way of
working (and forgive me for using it in first place) but I don't quite like
the current approach.

Rather I'd like to have custom bitmasks (S900/S700/S500?) for writing to those
fields.

Thanks,
Mani

> Suggested-by: Andre Przywara <andre.przywara@arm.com>
> Signed-off-by: Amit Singh Tomar <amittomer25@gmail.com>
> ---
>  drivers/dma/owl-dma.c | 77 ++++++++++++++++++++++-----------------------------
>  1 file changed, 33 insertions(+), 44 deletions(-)
> 
> diff --git a/drivers/dma/owl-dma.c b/drivers/dma/owl-dma.c
> index c683051257fd..b0d80a2fa383 100644
> --- a/drivers/dma/owl-dma.c
> +++ b/drivers/dma/owl-dma.c
> @@ -120,30 +120,18 @@
>  #define BIT_FIELD(val, width, shift, newshift)	\
>  		((((val) >> (shift)) & ((BIT(width)) - 1)) << (newshift))
>  
> -/**
> - * struct owl_dma_lli_hw - Hardware link list for dma transfer
> - * @next_lli: physical address of the next link list
> - * @saddr: source physical address
> - * @daddr: destination physical address
> - * @flen: frame length
> - * @fcnt: frame count
> - * @src_stride: source stride
> - * @dst_stride: destination stride
> - * @ctrla: dma_mode and linklist ctrl config
> - * @ctrlb: interrupt config
> - * @const_num: data for constant fill
> - */
> -struct owl_dma_lli_hw {
> -	u32	next_lli;
> -	u32	saddr;
> -	u32	daddr;
> -	u32	flen:20;
> -	u32	fcnt:12;
> -	u32	src_stride;
> -	u32	dst_stride;
> -	u32	ctrla;
> -	u32	ctrlb;
> -	u32	const_num;
> +/* Describe DMA descriptor, hardware link list for dma transfer */
> +enum owl_dmadesc_offsets {
> +	OWL_DMADESC_NEXT_LLI = 0,
> +	OWL_DMADESC_SADDR,
> +	OWL_DMADESC_DADDR,
> +	OWL_DMADESC_FLEN,
> +	OWL_DMADESC_SRC_STRIDE,
> +	OWL_DMADESC_DST_STRIDE,
> +	OWL_DMADESC_CTRLA,
> +	OWL_DMADESC_CTRLB,
> +	OWL_DMADESC_CONST_NUM,
> +	OWL_DMADESC_SIZE
>  };
>  
>  /**
> @@ -153,7 +141,7 @@ struct owl_dma_lli_hw {
>   * @node: node for txd's lli_list
>   */
>  struct owl_dma_lli {
> -	struct  owl_dma_lli_hw	hw;
> +	u32			hw[OWL_DMADESC_SIZE];
>  	dma_addr_t		phys;
>  	struct list_head	node;
>  };
> @@ -351,8 +339,9 @@ static struct owl_dma_lli *owl_dma_add_lli(struct owl_dma_txd *txd,
>  		list_add_tail(&next->node, &txd->lli_list);
>  
>  	if (prev) {
> -		prev->hw.next_lli = next->phys;
> -		prev->hw.ctrla |= llc_hw_ctrla(OWL_DMA_MODE_LME, 0);
> +		prev->hw[OWL_DMADESC_NEXT_LLI] = next->phys;
> +		prev->hw[OWL_DMADESC_CTRLA] |=
> +					llc_hw_ctrla(OWL_DMA_MODE_LME, 0);
>  	}
>  
>  	return next;
> @@ -365,8 +354,7 @@ static inline int owl_dma_cfg_lli(struct owl_dma_vchan *vchan,
>  				  struct dma_slave_config *sconfig,
>  				  bool is_cyclic)
>  {
> -	struct owl_dma_lli_hw *hw = &lli->hw;
> -	u32 mode;
> +	u32 mode, ctrlb;
>  
>  	mode = OWL_DMA_MODE_PW(0);
>  
> @@ -407,22 +395,22 @@ static inline int owl_dma_cfg_lli(struct owl_dma_vchan *vchan,
>  		return -EINVAL;
>  	}
>  
> -	hw->next_lli = 0; /* One link list by default */
> -	hw->saddr = src;
> -	hw->daddr = dst;
> -
> -	hw->fcnt = 1; /* Frame count fixed as 1 */
> -	hw->flen = len; /* Max frame length is 1MB */
> -	hw->src_stride = 0;
> -	hw->dst_stride = 0;
> -	hw->ctrla = llc_hw_ctrla(mode,
> -				 OWL_DMA_LLC_SAV_LOAD_NEXT |
> -				 OWL_DMA_LLC_DAV_LOAD_NEXT);
> +	lli->hw[OWL_DMADESC_CTRLA] = llc_hw_ctrla(mode,
> +						  OWL_DMA_LLC_SAV_LOAD_NEXT |
> +						  OWL_DMA_LLC_DAV_LOAD_NEXT);
>  
>  	if (is_cyclic)
> -		hw->ctrlb = llc_hw_ctrlb(OWL_DMA_INTCTL_BLOCK);
> +		ctrlb = llc_hw_ctrlb(OWL_DMA_INTCTL_BLOCK);
>  	else
> -		hw->ctrlb = llc_hw_ctrlb(OWL_DMA_INTCTL_SUPER_BLOCK);
> +		ctrlb = llc_hw_ctrlb(OWL_DMA_INTCTL_SUPER_BLOCK);
> +
> +	lli->hw[OWL_DMADESC_NEXT_LLI] = 0;
> +	lli->hw[OWL_DMADESC_SADDR] = src;
> +	lli->hw[OWL_DMADESC_DADDR] = dst;
> +	lli->hw[OWL_DMADESC_SRC_STRIDE] = 0;
> +	lli->hw[OWL_DMADESC_DST_STRIDE] = 0;
> +	lli->hw[OWL_DMADESC_FLEN] = len | 1 << 20;
> +	lli->hw[OWL_DMADESC_CTRLB] = ctrlb;
>  
>  	return 0;
>  }
> @@ -754,7 +742,8 @@ static u32 owl_dma_getbytes_chan(struct owl_dma_vchan *vchan)
>  			/* Start from the next active node */
>  			if (lli->phys == next_lli_phy) {
>  				list_for_each_entry(lli, &txd->lli_list, node)
> -					bytes += lli->hw.flen;
> +					bytes += lli->hw[OWL_DMADESC_FLEN] &
> +						 GENMASK(19, 0);
>  				break;
>  			}
>  		}
> @@ -785,7 +774,7 @@ static enum dma_status owl_dma_tx_status(struct dma_chan *chan,
>  	if (vd) {
>  		txd = to_owl_txd(&vd->tx);
>  		list_for_each_entry(lli, &txd->lli_list, node)
> -			bytes += lli->hw.flen;
> +			bytes += lli->hw[OWL_DMADESC_FLEN] & GENMASK(19, 0);
>  	} else {
>  		bytes = owl_dma_getbytes_chan(vchan);
>  	}
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
