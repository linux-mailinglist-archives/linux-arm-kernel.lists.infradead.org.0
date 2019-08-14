Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 639378CF2A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 11:20:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vXBRJXNNqj8bnHJBEZAl4JC5h1/JMMNhjaJgqmoDPXk=; b=qqepgfCDbf7G5m
	EGoi/m48buQnue7jm6ieDe8Fm60CmAnrgsYh5URHWueTwX7eFs1xl5hY7epA8Bs6Cl++ZJEWJTNZv
	Z3S5pE7iq37O9vGqWyCvxlgF4RvpaXmYksil56vMX1k0Fgz4j7IYNSLAErfhJg4C7qjSOfNr7OCVW
	dJhewUcfDey8oL7pFT8HGR9fAyGhsYmcvHxHWzqM9rnIQei/p8C1geFpjM8Yiz4+0hhye0Jd0LlxB
	qLsSH8YrM3Qp8TpkUCDwU2krKFg6g2SxJKrWlQgtGNTtJ+hsnejOUCIL3/i6uqYmxIblnQo1mRqjY
	KkESXcET9eksnpSEmc3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxpRp-0007Gs-OL; Wed, 14 Aug 2019 09:20:02 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hxpRc-0007GF-Im
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 09:19:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D1EE1344;
 Wed, 14 Aug 2019 02:19:45 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 D00F43F694; Wed, 14 Aug 2019 02:19:44 -0700 (PDT)
Date: Wed, 14 Aug 2019 10:19:42 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH 1/8] arm64: memory: Fix virt_addr_valid() using
 __is_lm_address()
Message-ID: <20190814091942.GA50688@arrakis.emea.arm.com>
References: <20190813170149.26037-1-will@kernel.org>
 <20190813170149.26037-2-will@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190813170149.26037-2-will@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_021948_665350_85ABCFAC 
X-CRM114-Status: GOOD (  12.45  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Steve Capper <steve.capper@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Qian Cai <cai@lca.pw>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 13, 2019 at 06:01:42PM +0100, Will Deacon wrote:
> diff --git a/arch/arm64/include/asm/memory.h b/arch/arm64/include/asm/memory.h
> index afaf512c0e1b..442ab861cab8 100644
> --- a/arch/arm64/include/asm/memory.h
> +++ b/arch/arm64/include/asm/memory.h
> @@ -244,9 +244,9 @@ static inline const void *__tag_set(const void *addr, u8 tag)
>  /*
>   * The linear kernel range starts in the middle of the virtual adddress
>   * space. Testing the top bit for the start of the region is a
> - * sufficient check.
> + * sufficient check and avoids having to worry about the tag.
>   */
> -#define __is_lm_address(addr)	(!((addr) & BIT(vabits_actual - 1)))
> +#define __is_lm_address(addr)	(!(((u64)addr) & BIT(vabits_actual - 1)))
>  
>  #define __lm_to_phys(addr)	(((addr) + physvirt_offset))
>  #define __kimg_to_phys(addr)	((addr) - kimage_voffset)
> @@ -326,13 +326,13 @@ static inline void *phys_to_virt(phys_addr_t x)
>  
>  #define virt_to_page(vaddr)	((struct page *)((__virt_to_pgoff(vaddr)) + VMEMMAP_START))
>  #endif
> -#endif
>  
> -#define _virt_addr_is_linear(kaddr)	\
> -	(__tag_reset((u64)(kaddr)) >= PAGE_OFFSET)
> +#define virt_addr_valid(addr)	({					\
> +	__typeof__(addr) __addr = addr;					\
> +	__is_lm_address(__addr) && pfn_valid(virt_to_pfn(__addr));	\
> +})

There is a slight change of semantics here but I don't think it's an
issue currently. __is_lm_address() is true even for a user address, so
at least the first part of virt_addr_valid() now accepts such addresses.
The pfn would be wrong eventually because of the virt-to-phys offsetting
and pfn_valid() false but we rely on this rather than checking it's a
kernel address. Slight concern as this macro is called from drivers.

Should we keep the PAGE_OFFSET check as well?

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
