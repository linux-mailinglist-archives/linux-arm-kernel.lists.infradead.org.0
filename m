Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 399EF1FEFB7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 12:35:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CCUmvDnUmXqeG5uXgYsiGG3hsf/TD4JYMLBiIJ4oE1M=; b=a+lHb67EAKnR4o
	o2TrClYXtbwkk7KgEHIps+lgKKPj8pwNAJ8stpO3JfLzja1sbAhpbUYHiEoZGcb5qju1P2ygYB4xW
	zdWsGC3VkckqZx8FSvD2CKl1yr40rgEq7feCUGrZmdH1v0OTd8S+7RzddnmiaKhvj+EnDNZg9UKUY
	nx8nmsSk3SGqCgAIk1eGWcXDIvCXXdLmtBncH9UoV+6sne0+mf+Jv5JCXlfnu1ylt59/Jm/2ssknP
	tDdRQs74nHrcRarPveTZXHiaD5QO/u7t6Llvz/wNh5Ls5dGu4qQIZ8D/vzytQneicmSUV/0dCRZZR
	ImF19qBW0O1lF4hJuTpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlrtI-00031S-3C; Thu, 18 Jun 2020 10:35:28 +0000
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlrsy-00027C-M3; Thu, 18 Jun 2020 10:35:08 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 47CD230018A;
 Thu, 18 Jun 2020 12:35:06 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 338BD20C227A0; Thu, 18 Jun 2020 12:35:06 +0200 (CEST)
Date: Thu, 18 Jun 2020 12:35:06 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: David Hildenbrand <david@redhat.com>
Subject: Re: [PATCH 2/3] arm64: use PAGE_KERNEL_ROX directly in alloc_insn_page
Message-ID: <20200618103506.GH576905@hirez.programming.kicks-ass.net>
References: <20200618064307.32739-1-hch@lst.de>
 <20200618064307.32739-3-hch@lst.de>
 <90234f58-e83a-7f20-62a7-80a4e81cde95@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <90234f58-e83a-7f20-62a7-80a4e81cde95@redhat.com>
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
 Christoph Hellwig <hch@lst.de>, linux-mm@kvack.org,
 Jessica Yu <jeyu@kernel.org>, Vitaly Kuznetsov <vkuznets@redhat.com>,
 Will Deacon <will@kernel.org>, Andrew Morton <akpm@linux-foundation.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 18, 2020 at 10:55:58AM +0200, David Hildenbrand wrote:
> On 18.06.20 08:43, Christoph Hellwig wrote:
> > Use PAGE_KERNEL_ROX directly instead of allocating RWX and setting the
> > page read-only just after the allocation.
> > 
> > Signed-off-by: Christoph Hellwig <hch@lst.de>
> > ---
> >  arch/arm64/kernel/probes/kprobes.c | 12 +++---------
> >  1 file changed, 3 insertions(+), 9 deletions(-)
> > 
> > diff --git a/arch/arm64/kernel/probes/kprobes.c b/arch/arm64/kernel/probes/kprobes.c
> > index d1c95dcf1d7833..cbe49cd117cfec 100644
> > --- a/arch/arm64/kernel/probes/kprobes.c
> > +++ b/arch/arm64/kernel/probes/kprobes.c
> > @@ -120,15 +120,9 @@ int __kprobes arch_prepare_kprobe(struct kprobe *p)
> >  
> >  void *alloc_insn_page(void)
> >  {
> > -	void *page;
> > -
> > -	page = vmalloc_exec(PAGE_SIZE);
> > -	if (page) {
> > -		set_memory_ro((unsigned long)page, 1);
> > -		set_vm_flush_reset_perms(page);
> > -	}
> > -
> > -	return page;
> > +	return __vmalloc_node_range(PAGE_SIZE, 1, VMALLOC_START, VMALLOC_END,
> > +			GFP_KERNEL, PAGE_KERNEL_ROX, VM_FLUSH_RESET_PERMS,
> > +			NUMA_NO_NODE, __func__);
> 
> I do wonder if something like vmalloc_prot(size, prot) would make this
> (and the other two users) easier to read.
> 
> So instead of ripping out vmalloc_exec(), converting it into
> vmalloc_prot() instead.
> 
> Did you consider that?

For x86 Christoph did module_alloc_prot(), which is in his more
extensive set of patches addressing this. I suspect that would be the
right thing for ARM64 as well.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
