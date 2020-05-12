Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A55741CF7A4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 16:45:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gat8xN37hUUZ9zKDYjm+JhuCJ/PB3TnJXnl03NRjsXs=; b=C/eggwJZxSujS1mM0NiTYWnB8
	L2mt+w/9+pvKnZeq6gOpUZI0jdtihVPaL51/AdJ4vv8/RysHaV0XKKjHDuxj0nqa+Zb2JpV7vZP22
	7x7RUnJKeVqNl/yvvHkdf3KuWetv/7uk+FWiHc98LBLswTYUcvOt82PuHPmYxJedXGkq2JvJzSrJc
	12vknaeggIKmBZEhVFBoM70hlNuPWHPvtt5wGmH9Ma4Yb6twrckpcZmQ6pFy5bajYjoEEBkr7OJWc
	2rVdCsfDiV/fAZe6Owl5tzTwOVofMU/uZdtp8vh5idnXPdXdmkPI4ruQfZbcN1AwhIaXlg78WTDZr
	7iplIg+hQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYW9s-0004f8-CU; Tue, 12 May 2020 14:45:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYW9g-0003gy-RE; Tue, 12 May 2020 14:45:14 +0000
Received: from [10.44.0.192] (unknown [103.48.210.53])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E64CB206A3;
 Tue, 12 May 2020 14:45:03 +0000 (UTC)
Subject: Re: [PATCH 16/31] m68knommu: use asm-generic/cacheflush.h
To: Christoph Hellwig <hch@lst.de>, Andrew Morton
 <akpm@linux-foundation.org>, Arnd Bergmann <arnd@arndb.de>,
 Roman Zippel <zippel@linux-m68k.org>
References: <20200510075510.987823-1-hch@lst.de>
 <20200510075510.987823-17-hch@lst.de>
From: Greg Ungerer <gerg@linux-m68k.org>
Message-ID: <fb98853b-c02a-a682-443e-2ae62d0502d9@linux-m68k.org>
Date: Wed, 13 May 2020 00:44:59 +1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200510075510.987823-17-hch@lst.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_074512_903860_725493CE 
X-CRM114-Status: GOOD (  14.33  )
X-Spam-Score: -4.8 (----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-4.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: linux-arch@vger.kernel.org, linux-xtensa@linux-xtensa.org,
 Michal Simek <monstr@monstr.eu>, Jessica Yu <jeyu@kernel.org>,
 linux-ia64@vger.kernel.org, linux-c6x-dev@linux-c6x.org,
 linux-sh@vger.kernel.org, linux-hexagon@vger.kernel.org, x86@kernel.org,
 linux-um@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-mips@vger.kernel.org, linux-mm@kvack.org,
 linux-m68k@lists.linux-m68k.org, openrisc@lists.librecores.org,
 linux-alpha@vger.kernel.org, sparclinux@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, linux-riscv@lists.infradead.org,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Christoph,

On 10/5/20 5:54 pm, Christoph Hellwig wrote:
> m68knommu needs almost no cache flushing routines of its own.  Rely on
> asm-generic/cacheflush.h for the defaults.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Acked-by: Greg Ungerer <gerg@linux-m68k.org>

Regards
Greg


> ---
>   arch/m68k/include/asm/cacheflush_no.h | 19 ++-----------------
>   1 file changed, 2 insertions(+), 17 deletions(-)
> 
> diff --git a/arch/m68k/include/asm/cacheflush_no.h b/arch/m68k/include/asm/cacheflush_no.h
> index 11e9a9dcbfb24..2731f07e7be8c 100644
> --- a/arch/m68k/include/asm/cacheflush_no.h
> +++ b/arch/m68k/include/asm/cacheflush_no.h
> @@ -9,25 +9,8 @@
>   #include <asm/mcfsim.h>
>   
>   #define flush_cache_all()			__flush_cache_all()
> -#define flush_cache_mm(mm)			do { } while (0)
> -#define flush_cache_dup_mm(mm)			do { } while (0)
> -#define flush_cache_range(vma, start, end)	do { } while (0)
> -#define flush_cache_page(vma, vmaddr)		do { } while (0)
>   #define flush_dcache_range(start, len)		__flush_dcache_all()
> -#define ARCH_IMPLEMENTS_FLUSH_DCACHE_PAGE 0
> -#define flush_dcache_page(page)			do { } while (0)
> -#define flush_dcache_mmap_lock(mapping)		do { } while (0)
> -#define flush_dcache_mmap_unlock(mapping)	do { } while (0)
>   #define flush_icache_range(start, len)		__flush_icache_all()
> -#define flush_icache_page(vma,pg)		do { } while (0)
> -#define flush_icache_user_range(vma,pg,adr,len)	do { } while (0)
> -#define flush_cache_vmap(start, end)		do { } while (0)
> -#define flush_cache_vunmap(start, end)		do { } while (0)
> -
> -#define copy_to_user_page(vma, page, vaddr, dst, src, len) \
> -	memcpy(dst, src, len)
> -#define copy_from_user_page(vma, page, vaddr, dst, src, len) \
> -	memcpy(dst, src, len)
>   
>   void mcf_cache_push(void);
>   
> @@ -98,4 +81,6 @@ static inline void cache_clear(unsigned long paddr, int len)
>   	__clear_cache_all();
>   }
>   
> +#include <asm-generic/cacheflush.h>
> +
>   #endif /* _M68KNOMMU_CACHEFLUSH_H */
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
