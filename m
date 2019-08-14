Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08C958D006
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 11:48:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ITky0wGhHsd3lqETBojEYxLnCdFtfPzxWyfOXAbV+jE=; b=pNpxO34RCP7PWl
	lqavnCy0dulHcQRy5R6kUMyW1fUrXvmTIhLeOo0ApKR3TdmTXIiI1LEFYStnYPnnx/kXbeCkkqDJ5
	HZQaNnbiWPoizzrhKAbv6bupBpZGWtL+x3D2M5iEiKX0ifieeBq+IjI016tBbJNCiGToWvxH/oQzt
	P2HqIjO40t/LTJ3iO3DdviEZodPBS6su4pWvieifgg3n30bjFVyE+KjwyPdMc1zkX5PSQ9pew4H1c
	xYkrH8ahE2AeIKEvyDC5pJprjNM5AMgUX75q/2u+WwWeszbpd31QtK6UHQaNU/Jch5AC/Ra56j+la
	66LMn5plcVZLEQpRSbLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxpta-0005Fu-2l; Wed, 14 Aug 2019 09:48:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxptI-0005DD-UB
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 09:48:26 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5765720578;
 Wed, 14 Aug 2019 09:48:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565776104;
 bh=0WlkwpyVhvL0rgbp6hQen/rAqGCg2E0pfYOR1bSaK3c=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=zSQ5wWrMI4batWUy9cQ2QEbjvJX9HZ+id5Lf8FSInNMfPMn9bIP5y2orxkfiJ3BhB
 uToGf9VXYFZad76ap5iQvxaqMldO+qfhji8GFSdE01Wz8UznZ7VS/K4UjK7PK2/BGa
 cDkUvLBVdQ6KsL17mFK2M1WqzVU1Uy50J0XGb4RQ=
Date: Wed, 14 Aug 2019 10:48:20 +0100
From: Will Deacon <will@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH 1/8] arm64: memory: Fix virt_addr_valid() using
 __is_lm_address()
Message-ID: <20190814094819.4bdqaubqmbcm3zax@willie-the-truck>
References: <20190813170149.26037-1-will@kernel.org>
 <20190813170149.26037-2-will@kernel.org>
 <20190814091942.GA50688@arrakis.emea.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190814091942.GA50688@arrakis.emea.arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_024825_052441_4C63C559 
X-CRM114-Status: GOOD (  17.29  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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

On Wed, Aug 14, 2019 at 10:19:42AM +0100, Catalin Marinas wrote:
> On Tue, Aug 13, 2019 at 06:01:42PM +0100, Will Deacon wrote:
> > diff --git a/arch/arm64/include/asm/memory.h b/arch/arm64/include/asm/memory.h
> > index afaf512c0e1b..442ab861cab8 100644
> > --- a/arch/arm64/include/asm/memory.h
> > +++ b/arch/arm64/include/asm/memory.h
> > @@ -244,9 +244,9 @@ static inline const void *__tag_set(const void *addr, u8 tag)
> >  /*
> >   * The linear kernel range starts in the middle of the virtual adddress
> >   * space. Testing the top bit for the start of the region is a
> > - * sufficient check.
> > + * sufficient check and avoids having to worry about the tag.
> >   */
> > -#define __is_lm_address(addr)	(!((addr) & BIT(vabits_actual - 1)))
> > +#define __is_lm_address(addr)	(!(((u64)addr) & BIT(vabits_actual - 1)))
> >  
> >  #define __lm_to_phys(addr)	(((addr) + physvirt_offset))
> >  #define __kimg_to_phys(addr)	((addr) - kimage_voffset)
> > @@ -326,13 +326,13 @@ static inline void *phys_to_virt(phys_addr_t x)
> >  
> >  #define virt_to_page(vaddr)	((struct page *)((__virt_to_pgoff(vaddr)) + VMEMMAP_START))
> >  #endif
> > -#endif
> >  
> > -#define _virt_addr_is_linear(kaddr)	\
> > -	(__tag_reset((u64)(kaddr)) >= PAGE_OFFSET)
> > +#define virt_addr_valid(addr)	({					\
> > +	__typeof__(addr) __addr = addr;					\
> > +	__is_lm_address(__addr) && pfn_valid(virt_to_pfn(__addr));	\
> > +})
> 
> There is a slight change of semantics here but I don't think it's an
> issue currently. __is_lm_address() is true even for a user address, so
> at least the first part of virt_addr_valid() now accepts such addresses.
> The pfn would be wrong eventually because of the virt-to-phys offsetting
> and pfn_valid() false but we rely on this rather than checking it's a
> kernel address. Slight concern as this macro is called from drivers.
> 
> Should we keep the PAGE_OFFSET check as well?

In virt_addr_valid() or __is_lm_address()?

To be honest with you, I'm not even sure what virt_addr_valid() is supposed
to do with non-linear kernel addresses: look at powerpc and riscv, who
appear to convert the address straight to a pfn. Many callers check against
is_vmalloc_addr() first, but not all of them.

I think passing in a *user* address would be a huge bug in the caller,
just like it would be if you called virt_to_phys() on a user address.
If we care about that, then I think __is_lm_address() should be the one
doing the check against PAGE_OFFSET.

Thoughts? I'd be inclined to leave this patch as it is.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
