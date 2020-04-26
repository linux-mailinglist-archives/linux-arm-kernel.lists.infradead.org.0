Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A04C1B8D68
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 09:26:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WgTlu6wpyN93ZADP/xhLSPFANAm8OFJCzFDvt7pH4CM=; b=MfkQdXW26J9zpK
	8PIVfXjbYWvh5hyvoqSc10M3mkeiUGcGE5u9E8Yd1EpW/BDzV/mEUiyQDjAEbuqj/NMaBkwlFA1by
	Lvr0FsFyz49Qn0DuaHmhj9rl7layO6q4U8QzD8zDn/ZydvKLmID3pML8pyBRAvtbIZv7gkrz7liUD
	CaZmGRRHGO5LMt8haAM+STj4JdciXLWgDcT2D3GCSphD36eDcSEQLbkju4pgKbUPvxPMCDWHxhOTG
	Yd7ulHooK4l/rHMtAYNdJWvsRJyO+167p8RO0b2mrrjJ18/luNyf+p+anV1ZJidClHmJZtZ8TbrE6
	s7zrj1EvUJDUetQMKL9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSbgh-00048r-LX; Sun, 26 Apr 2020 07:26:51 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jSbgY-00048J-Cx; Sun, 26 Apr 2020 07:26:42 +0000
Date: Sun, 26 Apr 2020 00:26:42 -0700
From: Christoph Hellwig <hch@infradead.org>
To: ira.weiny@intel.com
Subject: Re: [PATCH 4/5] arch/kmap_atomic: Consolidate duplicate code
Message-ID: <20200426072642.GB22024@infradead.org>
References: <20200426055406.134198-1-ira.weiny@intel.com>
 <20200426055406.134198-5-ira.weiny@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200426055406.134198-5-ira.weiny@intel.com>
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
Cc: Peter Zijlstra <peterz@infradead.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Dave Hansen <dave.hansen@linux.intel.com>, linux-mips@vger.kernel.org,
 "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
 Max Filippov <jcmvbkbc@gmail.com>, Paul Mackerras <paulus@samba.org>,
 "H. Peter Anvin" <hpa@zytor.com>, sparclinux@vger.kernel.org,
 Dan Williams <dan.j.williams@intel.com>, Helge Deller <deller@gmx.de>,
 x86@kernel.org, linux-csky@vger.kernel.org, Ingo Molnar <mingo@redhat.com>,
 linux-snps-arc@lists.infradead.org, linux-xtensa@linux-xtensa.org,
 Borislav Petkov <bp@alien8.de>, Andy Lutomirski <luto@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Chris Zankel <chris@zankel.net>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>, linux-parisc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev@lists.ozlabs.org, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> diff --git a/arch/arc/mm/highmem.c b/arch/arc/mm/highmem.c
> index 4db13a6b9f3b..1cae4b911a33 100644
> --- a/arch/arc/mm/highmem.c
> +++ b/arch/arc/mm/highmem.c
> @@ -53,11 +53,10 @@ void *kmap_atomic(struct page *page)
>  {
>  	int idx, cpu_idx;
>  	unsigned long vaddr;
> +	void *addr = kmap_atomic_fast(page);
>  
> -	preempt_disable();
> -	pagefault_disable();
> -	if (!PageHighMem(page))
> -		return page_address(page);
> +	if (addr)
> +		return addr;

Wouldn't it make sense to just move kmap_atomic itelf to common code,
and call out to a kmap_atomic_high for the highmem case, following the
scheme in kmap?  Same for the unmap side.  That might require to support
kmap_atomic_prot everywhere first, which sounds like a really good
idea anyway, and would avoid the need for strange workaround in drm.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
