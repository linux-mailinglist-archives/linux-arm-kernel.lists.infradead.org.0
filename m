Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3331D8D0DA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 12:40:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lYI6EzcG9Aqt9XZUXnvRo/hN6yrdAnNDgF/Jn7GxslA=; b=L5dKEmqgOSTmZ+
	0p++2ASURAxcLkNAkRvLkuOfv2O+ortE48O0aOvj/LxtAEXJfzztvcHTQnr2PXpFKgmfkDRT3mxAy
	eU43D4t5KtLvlMpplue0XBYJcEEjH0CLBr68CBolsy1ZDcizatGf2fnLLaOiZNYcBc9R27oBENqOZ
	+nCFOr9HKS6pzHpuRqjnQkfOP1eA84NwDlhOFfR3NjzvgqCeyS4k0A1s8cdi0nEBAcTWYUSI6PQST
	DCmCaMl6vPwUxVtMsixSasDpOl244aUZAM/lcktcs/WVmEsRRQdh2zX5xAo4TMz4WwSNt4GavNzgD
	ttqetDryabfpj8qMeFiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxqhm-0008Ky-0b; Wed, 14 Aug 2019 10:40:34 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hxqhf-0008KG-0u
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 10:40:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2ABA828;
 Wed, 14 Aug 2019 03:40:26 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 27EC03F706; Wed, 14 Aug 2019 03:40:25 -0700 (PDT)
Date: Wed, 14 Aug 2019 11:40:23 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH 1/8] arm64: memory: Fix virt_addr_valid() using
 __is_lm_address()
Message-ID: <20190814104022.GI50688@arrakis.emea.arm.com>
References: <20190813170149.26037-1-will@kernel.org>
 <20190813170149.26037-2-will@kernel.org>
 <20190814091942.GA50688@arrakis.emea.arm.com>
 <20190814094819.4bdqaubqmbcm3zax@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190814094819.4bdqaubqmbcm3zax@willie-the-truck>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_034027_159418_5F232A7B 
X-CRM114-Status: GOOD (  21.02  )
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

On Wed, Aug 14, 2019 at 10:48:20AM +0100, Will Deacon wrote:
> On Wed, Aug 14, 2019 at 10:19:42AM +0100, Catalin Marinas wrote:
> > On Tue, Aug 13, 2019 at 06:01:42PM +0100, Will Deacon wrote:
> > > diff --git a/arch/arm64/include/asm/memory.h b/arch/arm64/include/asm/memory.h
> > > index afaf512c0e1b..442ab861cab8 100644
> > > --- a/arch/arm64/include/asm/memory.h
> > > +++ b/arch/arm64/include/asm/memory.h
> > > @@ -244,9 +244,9 @@ static inline const void *__tag_set(const void *addr, u8 tag)
> > >  /*
> > >   * The linear kernel range starts in the middle of the virtual adddress
> > >   * space. Testing the top bit for the start of the region is a
> > > - * sufficient check.
> > > + * sufficient check and avoids having to worry about the tag.
> > >   */
> > > -#define __is_lm_address(addr)	(!((addr) & BIT(vabits_actual - 1)))
> > > +#define __is_lm_address(addr)	(!(((u64)addr) & BIT(vabits_actual - 1)))
> > >  
> > >  #define __lm_to_phys(addr)	(((addr) + physvirt_offset))
> > >  #define __kimg_to_phys(addr)	((addr) - kimage_voffset)
> > > @@ -326,13 +326,13 @@ static inline void *phys_to_virt(phys_addr_t x)
> > >  
> > >  #define virt_to_page(vaddr)	((struct page *)((__virt_to_pgoff(vaddr)) + VMEMMAP_START))
> > >  #endif
> > > -#endif
> > >  
> > > -#define _virt_addr_is_linear(kaddr)	\
> > > -	(__tag_reset((u64)(kaddr)) >= PAGE_OFFSET)
> > > +#define virt_addr_valid(addr)	({					\
> > > +	__typeof__(addr) __addr = addr;					\
> > > +	__is_lm_address(__addr) && pfn_valid(virt_to_pfn(__addr));	\
> > > +})
> > 
> > There is a slight change of semantics here but I don't think it's an
> > issue currently. __is_lm_address() is true even for a user address, so
> > at least the first part of virt_addr_valid() now accepts such addresses.
> > The pfn would be wrong eventually because of the virt-to-phys offsetting
> > and pfn_valid() false but we rely on this rather than checking it's a
> > kernel address. Slight concern as this macro is called from drivers.
> > 
> > Should we keep the PAGE_OFFSET check as well?
> 
> In virt_addr_valid() or __is_lm_address()?
> 
> To be honest with you, I'm not even sure what virt_addr_valid() is supposed
> to do with non-linear kernel addresses: look at powerpc and riscv, who
> appear to convert the address straight to a pfn. Many callers check against
> is_vmalloc_addr() first, but not all of them.

Even if they call is_vmalloc_addr(), it would return false for user
address. Anyway, at a quick look, I couldn't find any virt_addr_valid()
where it would be an issue.

> I think passing in a *user* address would be a huge bug in the caller,
> just like it would be if you called virt_to_phys() on a user address.
> If we care about that, then I think __is_lm_address() should be the one
> doing the check against PAGE_OFFSET.
> 
> Thoughts? I'd be inclined to leave this patch as it is.

Leave it as it is. The way pfn_valid() is written it wouldn't return
true for a user address due to the fact that virt_to_phys() cannot
return the same physical address for a user and linear map one.

For this patch:

Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
