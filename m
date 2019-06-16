Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E66F473EF
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 16 Jun 2019 11:17:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OnXQsaT1FTNU0c3+HprDq3SHccw8MQGpxeq/4Ocnd1Q=; b=Zd/Xxlu+VA5EHC
	/SXlH0xSh0saLjH4FHadtncpbeR8RrGyg6Dk6SPhY44A4l1CKtmIyTA5lGUMDBGhM68t7Zb03MuWB
	TuQmZQ0Ys1TSj06IeAAY7x52qOh4OEgwDLFXtmpjc6ghYym1jPuk3cPDI+gFY7voFIP6fhzHHmQFV
	FxfGkgEiwKjmBA3e3fmPSlcPkZv2FswtmyIvZf1NZ4p7DQGQcvtLaV2DYSw2FHjz6biaGavcGPt+I
	jV1zdv6wMdZpycJg03pvzI0Hc3FHFLQiHxjok4WTK7lTyTiqE2O2LXH97FiWuslabGIE1jK8H5sl/
	h3dolXPUtxgYPcvgH6zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcRII-0005uV-LA; Sun, 16 Jun 2019 09:17:46 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcRI2-0005tx-RG; Sun, 16 Jun 2019 09:17:32 +0000
Received: by mail-pg1-x541.google.com with SMTP id l19so4065501pgh.9;
 Sun, 16 Jun 2019 02:17:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=WsOS9W6MkxWVUF6PRCv1rpiLrmIxWx7oq/nfwUHXQV4=;
 b=bhZZN4ZoB10Na0Ic8RGp22L9+faJUjyGlbtTqC3QZGcBGJuewiHIW8tipif4QS7JJa
 1nrwmgqclU0DIUK1lkjTTcUGhz54dyjqnkBu47eV2Gqxs1j6CHp1U+YLu4EAfw/CAjF1
 N4Mx0ailxADXlnEYbdKSlfJzz1zls4lLkPIdBQJTSClQ4r1iGVc+xfs0MQuBRfpvwO9k
 gu8vFQfMyie1SGDmstzys5iH9BtPM5Bh+9RYlpG24Inaj/skYMoNRLkXj6mCNXw8w51x
 eAcug1S/tqUfOOwe3BZd+VoHBqNwLp+FIOwyB1hK2SzoGYVonIeSrUcHAXxJsyxiRCAl
 RVrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=WsOS9W6MkxWVUF6PRCv1rpiLrmIxWx7oq/nfwUHXQV4=;
 b=SFNJxocFCgTmJ8LJF2SSw4ULq6Puu7hEVCjPoBA7Z9eZAjVr3/F4TopSPoOlszsvn8
 +pAO01wvs70+B0LA3/Qu7MC49Ms1iy9dlnqj+s+TucZofWPVwfKqlRSNDV+DxB/jSdVE
 +j+FNFBW3b1MHVOvaB4zufiq06bICcaQJY3vbGcfDknadLq5VIC7Zs6SP8ldiPrqDSes
 meD8TADmqgwj97R/fd6iaF77cs+xGosQG0gyKuMf7JjYGvb2lVJqiAg4/bQDv8eGY/5+
 KkJJ+xb+iWyaU//HFh/RYzBbSdqnvhWeHXYl83xQuj/MXlfNIb2zcGvPaerHVL4xp1XT
 jM0Q==
X-Gm-Message-State: APjAAAW5E91xPpHJCynvQqLeoryFzjXppSq2wx4+zqbMt3/6gTOnw2k/
 MVALWK+L5Y5p5g4rIlvghyw=
X-Google-Smtp-Source: APXvYqzC4p9c3ZsPQStMlz2hbBAY7Gw8pOpqyBR6LQ5uQv6ZdwfBVqV2rU83/Y0doH7WTm6gXf728g==
X-Received: by 2002:a65:56c5:: with SMTP id w5mr43407043pgs.434.1560676649025; 
 Sun, 16 Jun 2019 02:17:29 -0700 (PDT)
Received: from localhost (g30.211-19-85.ppp.wakwak.ne.jp. [211.19.85.30])
 by smtp.gmail.com with ESMTPSA id q144sm10986713pfc.103.2019.06.16.02.17.27
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 16 Jun 2019 02:17:28 -0700 (PDT)
Date: Sun, 16 Jun 2019 18:17:24 +0900
From: Stafford Horne <shorne@gmail.com>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 3/7] openrisc: remove the partial DMA_ATTR_NON_CONSISTENT
 support
Message-ID: <20190616091724.GL2358@lianli.shorne-pla.net>
References: <20190614144431.21760-1-hch@lst.de>
 <20190614144431.21760-4-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190614144431.21760-4-hch@lst.de>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190616_021730_911805_0AC1611A 
X-CRM114-Status: GOOD (  17.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (shorne[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Jonas Bonn <jonas@southpole.se>, linux-xtensa@linux-xtensa.org,
 Vladimir Murzin <vladimir.murzin@arm.com>, linux-parisc@vger.kernel.org,
 Vineet Gupta <vgupta@synopsys.com>, Helge Deller <deller@gmx.de>,
 linux-kernel@vger.kernel.org,
 Stefan Kristiansson <stefan.kristiansson@saunalahti.fi>,
 iommu@lists.linux-foundation.org, openrisc@lists.librecores.org,
 linux-snps-arc@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 14, 2019 at 04:44:27PM +0200, Christoph Hellwig wrote:
> The openrisc DMA code supports DMA_ATTR_NON_CONSISTENT allocations, but
> does not provide a cache_sync operation.  This means any user of it
> will never be able to actually transfer cache ownership and thus cause
> coherency bugs.

The below looks good.  I am always happy to what looks like legacy copy & paste
cruft.

Acked-by: Stafford Horne <shorne@gmail.com>

> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  arch/openrisc/kernel/dma.c | 22 +++++++++-------------
>  1 file changed, 9 insertions(+), 13 deletions(-)
> 
> diff --git a/arch/openrisc/kernel/dma.c b/arch/openrisc/kernel/dma.c
> index f79457cb3741..9f25fd0fbb5d 100644
> --- a/arch/openrisc/kernel/dma.c
> +++ b/arch/openrisc/kernel/dma.c
> @@ -98,15 +98,13 @@ arch_dma_alloc(struct device *dev, size_t size, dma_addr_t *dma_handle,
>  
>  	va = (unsigned long)page;
>  
> -	if ((attrs & DMA_ATTR_NON_CONSISTENT) == 0) {
> -		/*
> -		 * We need to iterate through the pages, clearing the dcache for
> -		 * them and setting the cache-inhibit bit.
> -		 */
> -		if (walk_page_range(va, va + size, &walk)) {
> -			free_pages_exact(page, size);
> -			return NULL;
> -		}
> +	/*
> +	 * We need to iterate through the pages, clearing the dcache for
> +	 * them and setting the cache-inhibit bit.
> +	 */
> +	if (walk_page_range(va, va + size, &walk)) {
> +		free_pages_exact(page, size);
> +		return NULL;
>  	}
>  
>  	return (void *)va;
> @@ -122,10 +120,8 @@ arch_dma_free(struct device *dev, size_t size, void *vaddr,
>  		.mm = &init_mm
>  	};
>  
> -	if ((attrs & DMA_ATTR_NON_CONSISTENT) == 0) {
> -		/* walk_page_range shouldn't be able to fail here */
> -		WARN_ON(walk_page_range(va, va + size, &walk));
> -	}
> +	/* walk_page_range shouldn't be able to fail here */
> +	WARN_ON(walk_page_range(va, va + size, &walk));
>  
>  	free_pages_exact(vaddr, size);
>  }
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
