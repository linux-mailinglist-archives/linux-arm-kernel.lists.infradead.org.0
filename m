Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5640D97E5D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 17:16:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5W/gEne+Y2qWFhyT/EDmmvV+l9RhKN85pdPV6CCadzA=; b=FSiIzrOLI/qfAY
	WSE+gEyO9ieL36kH5wnAag0PdqhUxsJySgKA4qYmI3GYGMP5gGDsYynHnsmlf6sVuZhdqv6bwlpWf
	dniPfsjrVs8upNupkQs8MVrgDAJ2XRSnqadIxpn1s8IX08teNFZjinjGQKyU3WKoJJcsj+ROXcfNr
	/3ApDPSp5u8dV7B1r0QJXvzp6yygiLg8h702nW76a0B8sUghlmqU2fki59ct62tUv2Z+SXchsjfir
	hseW+nYkt3/WnS4tEUh5hSiysnyanQg+aUX0seq9MLkisB1PZcT7xv/YlM3djHCKF7a18XYWBoSZl
	Vq0MxHv7WuAX+utqPgYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0SL4-0006hu-7g; Wed, 21 Aug 2019 15:15:54 +0000
Received: from willy by bombadil.infradead.org with local (Exim 4.92 #3 (Red
 Hat Linux)) id 1i0SKu-0006hk-DY; Wed, 21 Aug 2019 15:15:44 +0000
Date: Wed, 21 Aug 2019 08:15:44 -0700
From: Matthew Wilcox <willy@infradead.org>
To: Mike Rapoport <rppt@linux.ibm.com>
Subject: Re: [PATCH] mm: consolidate pgtable_cache_init() and pgd_cache_init()
Message-ID: <20190821151544.GC28819@bombadil.infradead.org>
References: <1566400018-15607-1-git-send-email-rppt@linux.ibm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1566400018-15607-1-git-send-email-rppt@linux.ibm.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, x86@kernel.org,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Andrew Morton <akpm@linux-foundation.org>, Will Deacon <will@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 21, 2019 at 06:06:58PM +0300, Mike Rapoport wrote:
> +++ b/arch/alpha/include/asm/pgtable.h
> @@ -362,7 +362,6 @@ extern void paging_init(void);
>  /*
>   * No page table caches to initialise
>   */
> -#define pgtable_cache_init()	do { } while (0)

Delete the comment too?

> +++ b/arch/arc/include/asm/pgtable.h
> @@ -398,7 +398,6 @@ void update_mmu_cache(struct vm_area_struct *vma, unsigned long address,
>  /*
>   * No page table caches to initialise
>   */
> -#define pgtable_cache_init()   do { } while (0)

ditto

> +++ b/arch/arm/include/asm/pgtable.h
> @@ -368,7 +368,6 @@ static inline pte_t pte_modify(pte_t pte, pgprot_t newprot)
>  #define HAVE_ARCH_UNMAPPED_AREA
>  #define HAVE_ARCH_UNMAPPED_AREA_TOPDOWN
>  
> -#define pgtable_cache_init() do { } while (0)
>  
>  #endif /* !__ASSEMBLY__ */

delete one of the two blank lines?

> +++ b/arch/c6x/include/asm/pgtable.h
> @@ -62,7 +62,6 @@ extern unsigned long empty_zero_page;
>  /*
>   * No page table caches to initialise
>   */
> -#define pgtable_cache_init()   do { } while (0)

delete comment ... more of these.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
