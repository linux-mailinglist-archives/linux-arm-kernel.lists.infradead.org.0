Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 921401FEE9C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 11:28:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gto3+8GP7IOodyyHri8g2B6zjTR3vk+4FIFvCsj6rEU=; b=o18+5+U9dCLx/6
	gCDgUDbZfOx6fYQc1C3ETYgSmZbR5veUpOKZIg7KWckJW4b99y2nFpbVqDV80z0G9oxIGjXyyADiy
	crzzmv6ppIhdm27KcsfK2Tbmj22CJmRNfTeaZqCwdVVNyy5hMNWmy7JdT8bMY0Mm+ZoKA80wcpwnH
	7WyrC/pda7UbNnFWEWPR/O8jdZ7M3tkhiLYhHzuWyuQLbqmacj9c0vLc+TLnTv8+SmpLDShqThE1+
	1frmgj2BuFtaOQkbVIhwrXz12C1swmsZcE/pbr8yMCkns/s6ezAmJaFNVh/xoFCCovYQZ1FSYbelX
	OCMeNqs9upov+GW+U6pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlqq5-0004Y1-1M; Thu, 18 Jun 2020 09:28:05 +0000
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlqpw-0004XY-7k; Thu, 18 Jun 2020 09:27:56 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 97416307A5E;
 Thu, 18 Jun 2020 11:27:54 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 5D9702059AC5C; Thu, 18 Jun 2020 11:27:54 +0200 (CEST)
Date: Thu, 18 Jun 2020 11:27:54 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 2/3] arm64: use PAGE_KERNEL_ROX directly in alloc_insn_page
Message-ID: <20200618092754.GF576905@hirez.programming.kicks-ass.net>
References: <20200618064307.32739-1-hch@lst.de>
 <20200618064307.32739-3-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200618064307.32739-3-hch@lst.de>
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
Cc: linux-hyperv@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 x86@kernel.org, Dexuan Cui <decui@microsoft.com>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, Jessica Yu <jeyu@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>, Will Deacon <will@kernel.org>,
 Vitaly Kuznetsov <vkuznets@redhat.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 18, 2020 at 08:43:06AM +0200, Christoph Hellwig wrote:
> Use PAGE_KERNEL_ROX directly instead of allocating RWX and setting the
> page read-only just after the allocation.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  arch/arm64/kernel/probes/kprobes.c | 12 +++---------
>  1 file changed, 3 insertions(+), 9 deletions(-)
> 
> diff --git a/arch/arm64/kernel/probes/kprobes.c b/arch/arm64/kernel/probes/kprobes.c
> index d1c95dcf1d7833..cbe49cd117cfec 100644
> --- a/arch/arm64/kernel/probes/kprobes.c
> +++ b/arch/arm64/kernel/probes/kprobes.c
> @@ -120,15 +120,9 @@ int __kprobes arch_prepare_kprobe(struct kprobe *p)
>  
>  void *alloc_insn_page(void)
>  {
> -	void *page;
> -
> -	page = vmalloc_exec(PAGE_SIZE);
> -	if (page) {
> -		set_memory_ro((unsigned long)page, 1);
> -		set_vm_flush_reset_perms(page);
> -	}
> -
> -	return page;
> +	return __vmalloc_node_range(PAGE_SIZE, 1, VMALLOC_START, VMALLOC_END,
> +			GFP_KERNEL, PAGE_KERNEL_ROX, VM_FLUSH_RESET_PERMS,
> +			NUMA_NO_NODE, __func__);
>  }

I think this has the exact same range issue as the x86 user. But it
might be less fatal if their PLT magic can cover the full range.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
