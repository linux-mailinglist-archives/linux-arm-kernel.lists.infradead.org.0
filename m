Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B30B6127932
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 11:19:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8xGS0p2jIQ3M6tnztBBdM63yVar+z7yX5i+rQ8EeW8o=; b=HS67P3L9+7duO7
	cr/BFap19u8//EOHxV1Ewm8x3a72+ejBsvx92p3SjoeXvuTdgUyMnw3YIf+nDzIX7KFFfdp74urCA
	BcIRDhArN6MIU5MaLcQ8+yzHb9O2/FZDpVp6qMOAW/UkZszxRxdtANTH3daXVbMbBucFVDZsyjqGL
	R6zlk+u2f7ThTlocsNgG3YJvXr/h736WnoxIbpK3CbxdMPrh0W+dEXAnYGy/kThhHjQJz6A99mvtR
	sV+ywYbvZYqwq1wtAj6HyuNy6frBishyAJvJxYove3Itft33vEOTwqtgXNCfYiSUyb2G33eOBFw9q
	MYEHOoqpLCaav81YHbrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiFNq-0004Te-S7; Fri, 20 Dec 2019 10:19:46 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiFNf-0004Si-Va
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 10:19:37 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id 1F5352061F;
 Fri, 20 Dec 2019 11:19:28 +0100 (CET)
Received: from [192.168.108.51] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id EEA5F20348;
 Fri, 20 Dec 2019 11:19:27 +0100 (CET)
Subject: Re: [RFC PATCH v1] devres: align devres.data strictly only for
 devm_kmalloc()
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Rafael Wysocki <rjw@rjwysocki.net>, LKML <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
References: <74ae22cd-08c1-d846-3e1d-cbc38db87442@free.fr>
Message-ID: <bf020a68-00fd-2bb7-c3b6-00f5befa293a@free.fr>
Date: Fri, 20 Dec 2019 11:19:27 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <74ae22cd-08c1-d846-3e1d-cbc38db87442@free.fr>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Fri Dec 20 11:19:28 2019 +0100 (CET)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_021936_320664_EABF3C28 
X-CRM114-Status: GOOD (  22.28  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.27.33.1 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marc.w.gonzalez[at]free.fr)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Peter Zijlstra <peterz@infradead.org>, Will Deacon <will@kernel.org>,
 Alexey Brodkin <alexey.brodkin@synopsys.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Russell King <rmk+kernel@armlinux.org.uk>, Mark Brown <broonie@kernel.org>,
 Tejun Heo <tj@kernel.org>, Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 17/12/2019 16:30, Marc Gonzalez wrote:

> Commit a66d972465d15 ("devres: Align data[] to ARCH_KMALLOC_MINALIGN")
> increased the alignment of devres.data unconditionally.
> 
> Some platforms have very strict alignment requirements for DMA-safe
> addresses, e.g. 128 bytes on arm64. There, struct devres amounts to:
> 	3 pointers + pad_to_128 + data + pad_to_256
> i.e. ~220 bytes of padding.
> 
> Let's enforce the alignment only for devm_kmalloc().
> 
> Suggested-by: Robin Murphy <robin.murphy@arm.com>
> Signed-off-by: Marc Gonzalez <marc.w.gonzalez@free.fr>
> ---
> I had not been aware that dynamic allocation granularity on arm64 was
> 128 bytes. This means there's a lot of waste on small allocations.
> I suppose there's no easy solution, though.
> ---
>  drivers/base/devres.c | 23 +++++++++++++----------
>  1 file changed, 13 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/base/devres.c b/drivers/base/devres.c
> index 0bbb328bd17f..bf39188613d9 100644
> --- a/drivers/base/devres.c
> +++ b/drivers/base/devres.c
> @@ -26,14 +26,7 @@ struct devres_node {
>  
>  struct devres {
>  	struct devres_node		node;
> -	/*
> -	 * Some archs want to perform DMA into kmalloc caches
> -	 * and need a guaranteed alignment larger than
> -	 * the alignment of a 64-bit integer.
> -	 * Thus we use ARCH_KMALLOC_MINALIGN here and get exactly the same
> -	 * buffer alignment as if it was allocated by plain kmalloc().
> -	 */
> -	u8 __aligned(ARCH_KMALLOC_MINALIGN) data[];
> +	u8				data[];
>  };
>  
>  struct devres_group {
> @@ -789,9 +782,16 @@ static void devm_kmalloc_release(struct device *dev, void *res)
>  	/* noop */
>  }
>  
> +#define DEVM_KMALLOC_PADDING_SIZE \
> +	(ARCH_KMALLOC_MINALIGN - sizeof(struct devres) % ARCH_KMALLOC_MINALIGN)
> +
>  static int devm_kmalloc_match(struct device *dev, void *res, void *data)
>  {
> -	return res == data;
> +	/*
> +	 * 'res' is dr->data (not DMA-safe)
> +	 * 'data' is the hand-aligned address from devm_kmalloc
> +	 */
> +	return res + DEVM_KMALLOC_PADDING_SIZE == data;
>  }
>  
>  /**
> @@ -811,6 +811,9 @@ void * devm_kmalloc(struct device *dev, size_t size, gfp_t gfp)
>  {
>  	struct devres *dr;
>  
> +	/* Add enough padding to provide a DMA-safe address */
> +	size += DEVM_KMALLOC_PADDING_SIZE;
> +
>  	/* use raw alloc_dr for kmalloc caller tracing */
>  	dr = alloc_dr(devm_kmalloc_release, size, gfp, dev_to_node(dev));
>  	if (unlikely(!dr))
> @@ -822,7 +825,7 @@ void * devm_kmalloc(struct device *dev, size_t size, gfp_t gfp)
>  	 */
>  	set_node_dbginfo(&dr->node, "devm_kzalloc_release", size);
>  	devres_add(dev, dr->data);
> -	return dr->data;
> +	return dr->data + DEVM_KMALLOC_PADDING_SIZE;
>  }
>  EXPORT_SYMBOL_GPL(devm_kmalloc);

Would anyone else have any suggestions, comments, insights, recommendations,
improvements, guidance, or wisdom? :-)

I keep thinking about the memory waste caused by the strict alignment requirement
on arm64. Is there a way to inspect how much memory has been requested vs how much
has been allocated? (Turning on SLAB DEBUG perhaps?)

Couldn't there be a kmalloc flag saying "this alloc will not require strict
alignment, so just give me something 8-byte aligned" ?

Regards.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
