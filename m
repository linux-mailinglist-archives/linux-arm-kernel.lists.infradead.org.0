Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6836FB0A81
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 10:40:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U8pMCSgU9qAr19bJTQvmK4XYSVc2TeLW36tPXg4H1js=; b=H7N65ZTmHzXcWH
	v6ntBEyWuSa0yTxwO/yp1qtnnWz3LR53vcGDBnP8MbnRrD3ZoQJyrS3s+vGL41hHbJPQSUGaOwYRx
	aAx6sV0Ws1Gj9vJ6/xPqTNen04VSJlfxp7Pl9oQtsJglYrfPWpoTFUqSwu6RRgbTp4ELnzFduxxX7
	5StnzMhnX9QIa5ozMT/jRe2JizO8v1qLZKPu3YBM/Q8t/QcQsDjc9y4lqtLact8sOOYctTqp83Je1
	cHNm3pQ2NGyU46+2zb2zNWzJue+PMkovecKBSHn7OSK+SWCtTdxYVUiqxRr4MDz6a09tcFjm/Vj+n
	09FPZ7t/GMTBw6/3hMYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8KeU-0004DI-RX; Thu, 12 Sep 2019 08:40:30 +0000
Received: from mail01.preh.com ([80.149.130.22])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8KeI-0004Ch-Sl
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Sep 2019 08:40:20 +0000
From: Hubert Ralf <Ralf.Hubert@preh.de>
To: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "anshuman.khandual@arm.com"
 <anshuman.khandual@arm.com>
Subject: Re: [PATCH] aarch64/mm: speedup memory initialisation
Thread-Topic: [PATCH] aarch64/mm: speedup memory initialisation
Thread-Index: AQHVZ7YAP7sn04V7oEKvWrPakQZn36cnkreAgAAHnIA=
Date: Thu, 12 Sep 2019 08:40:12 +0000
Message-ID: <bf14a3cb2812c03d08c380fccc4ca336cb7b5352.camel@preh.de>
References: <20190910085822.27072-1-ralf.hubert@preh.de>
 <645c9de8-d82a-8d51-ae4a-bcf903ccd1e5@arm.com>
In-Reply-To: <645c9de8-d82a-8d51-ae4a-bcf903ccd1e5@arm.com>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-tm-snts-smtp: F3CD44FFDCA80C49406212E51BA14C0E735217CA327F3C4BF5855FCB79B0CA1B2000:8
x-exclaimer-md-config: 142fe46c-4d13-4ac1-9970-1f36f118897a
Content-ID: <5A748C9235CB314B96B3AD44B957F82B@preh.de>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; d=preh.de; s=key1;
 c=relaxed/relaxed; 
 h=from:to:subject:date:message-id:references:content-type:mime-version;
 bh=s1pvdvHnBiRrpTVXcOtVIsYH20hnmvOXB0Bg9zwBByU=;
 b=kkAQxuK5WxCSEoCuVqQNc/vp2JtrQJHJ+/okFntEPH7JJCWUu0IFYgOI0CFteN77nPhYOeJPjZvD
 rUiCZ8pa+nNtzdwixspZImZeAw2nwO7riOnL/Vzr8Z7BhJ+KdPl46igCFFs2Bu4WwHj2m/n3sAmC
 TjLiYL/QkfiYNAMwmYqYnvi6A2CNO7sCIA2Kevoc2Q6n3tW/l/xhNmR+GZVRmR4hMSDd14Res0QZ
 v4krHN0eVDqhfSJQZepK7imMhplWLF6tAgQwQUWFouKMoltCmGwB93UZnef+Ou3G+M0nzGubxcwg
 cQG5mD17Rc4sWvRRFfTAKdDJh8/bKPWvg6pA8Q==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_014019_461382_79F81405 
X-CRM114-Status: GOOD (  23.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [80.149.130.22 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Donnerstag, den 12.09.2019, 13:42 +0530 schrieb Anshuman Khandual:
> 
> On 09/10/2019 02:29 PM, Hubert Ralf wrote:
> > On ARM64 memmap_init_zone is used during bootmem_init, which iterates over
> > all pages in the memory starting at the lowest address until the highest
> > address is reached. On arm64 this ends up in searching a memmory region
> > containing for each single page between lowest and highest available
> > physicall address.
> > 
> > Having a sparse memory system there may be some big holes in the
> > memory map. For each page in this holes a lookup is done, which is
> > implemented as a binary search on the available memory blocks.
> > 
> > Adding a memmap_init for aarch64 to do the init only for the available
> > memory areas reduces the time needed for initialising memory on startup.
> > On a Renesas R-CAR M3 based system with a total hole of 20GB bootmem_init
> > execution time is reduced from 378ms to 84ms.
> > 
> > Signed-off-by: Ralf Hubert <ralf.hubert@preh.de>
> > ---
> >  arch/arm64/include/asm/pgtable.h |  7 +++++++
> >  arch/arm64/mm/init.c             | 24 ++++++++++++++++++++++++
> >  2 files changed, 31 insertions(+)
> > 
> > diff --git a/arch/arm64/include/asm/pgtable.h b/arch/arm64/include/asm/pgtable.h
> > index e09760ece844..8c6eefc08b0b 100644
> > --- a/arch/arm64/include/asm/pgtable.h
> > +++ b/arch/arm64/include/asm/pgtable.h
> > @@ -298,6 +298,13 @@ static inline int pte_same(pte_t pte_a, pte_t pte_b)
> >  	return (lhs == rhs);
> >  }
> >  
> > +#ifdef CONFIG_SPARSEMEM
> > +/* arch mem_map init routine is needed due to holes in a memmap */
> > +#   define __HAVE_ARCH_MEMMAP_INIT
> 
> This is not required any more. Its gone with the following commit which
> also made generic memmap_init() an weak function currently overridden
> only on ia64.
> 
> dfb3ccd00a0 ("mm: make memmap_init a proper function")
> 
> > +	void memmap_init(unsigned long size, int nid, unsigned long zone,
> > +			 unsigned long start_pfn);
> > +#endif /* CONFIG_SPARSEMEM */
> > +
> >  /*
> >   * Huge pte definitions.
> >   */
> > diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
> > index f3c795278def..206b28310872 100644
> > --- a/arch/arm64/mm/init.c
> > +++ b/arch/arm64/mm/init.c
> > @@ -250,6 +250,30 @@ int pfn_valid(unsigned long pfn)
> >  }
> >  EXPORT_SYMBOL(pfn_valid);
> >  
> > +#ifdef CONFIG_SPARSEMEM
> > +void __meminit
> > +memmap_init(unsigned long size, int nid, unsigned long zone,
> > +	    unsigned long start_pfn)
> > +{
> > +	struct memblock_region *reg;
> > +
> > +	for_each_memblock(memory, reg) {
> > +		unsigned long start = memblock_region_memory_base_pfn(reg);
> > +		unsigned long end = memblock_region_memory_end_pfn(reg);
> > +
> > +		if (start < start_pfn)
> > +			start = start_pfn;
> > +		if (end > start_pfn + size)
> > +			end = start_pfn + size;
> > +
> > +		if (start < end) {
> > +			memmap_init_zone(end - start, nid, zone, start,
> > +					 MEMMAP_EARLY, NULL);
> > +		}
> > +	}
> > +}
> > +#endif /* CONFIG_SPARSEMEM */
> 
> In generic mmap_init(), the current high cost comes from early_pfn_valid()
> check for each pfn in memmap_init_zone() given that early_pfn_valid() is
> pfn_valid() when CONFIG_SPARSEMEM which is known to be expensive on arm64.
> 
> Though we cannot do anything about pfns which are really present but the
> high cost for non present pfns should be eliminated. The following check
> in the above for_each_memblock() loop can achieve that.
> 
> if (reg->flags & MEMBLOCK_NOMAP)
> 	continue;
> 
> MEMBLOCK_NOMAP universally should not be initialized into a zone and holes
> if any should also be universally skipped across platforms. So these changes
> can be moved into generic memmap_init() which will benefit other platforms.
Not sure if I got this. This is a additional short path for memblocks with
the MEMBLOCK_NOMAP flag set, right? For memblocks without these flag the remaining
code still needs to be executed?

In my case I have 4 memblocks with 1.5GB RAM at 0x4000 0000, 0x4 8000 0000,
0x6 0000 0000 and 0x6 8000 0000. None of them has the MEMBLOCK_NOMAP flag set.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
