Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A29F2016E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 10:38:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H6HiUToEclViJ5piYXqTncUZTQGb2ZLJOoL1mxrAT9Y=; b=aKw+gMpdtI+cdW
	1eezPmJ6HohskoIhjhMNlYyN683fkw6W18kKkf4GXLbVmgdu1S0tuCLRfklyW87Zc8y0cVshvzX6q
	WqsZgMLLocPb28YzPnSOG5ZlDXzkuYl2BeM1TGavdZz2+ApQS55B9LLZgWSM1WfW+gl5CvZxDKkR3
	VgizaqSfqJuDyy7uyRuIVVbO/jB9Vkk3xwzLiHE9mkijsAdM/oPadFKsTxksjoGOcyJwgoDLLvOe+
	5emBxECwsM1H1rqGe8yJHnLh217SKKqY2IKDrTOzCmJkm0Z8gAaEe8iY1E0HRxOzTeiHZjF4Cqat5
	dXANSomKVDjogNrmCeFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRBuL-0003oQ-Lu; Thu, 16 May 2019 08:38:33 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRBuB-0003nA-H7
 for linux-arm-kernel@bombadil.infradead.org; Thu, 16 May 2019 08:38:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Type:Cc:To:Subject:Message-ID:
 Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=C9JP0N9BOAKIKjnOKpvcauJRP2dUC/WHKbmpM2CzhnA=; b=sXvJHWWEII4o0dyBWsnFWLo65
 Hl1+IGnxSMpPfg2Fm5gPO9sHEdecwPGy0uZoTO6jk1K2D5ixCkGtVNkvkScJRKkjcNX7RjvNNB2UQ
 cdu8IdEE35jyQYD3LdvHjSpfc1KwnRiBzTBK4TOJ/8Zjj4YIzDE2l6T0aqe/0ChDHnDDT7K3ni9Ia
 xsHymaC0eGCZHaOpgX4A4HKn6FEG8EAqYVpnL2Sd9lE4TT+1/Qy5iKzJvXToU5BXItGauUiR8ySLG
 7X7px95c0oBTWqFrWOSwDhYgYRpz2C62kuEh8Punwg7L8BNBqjPx5ewMEwUruce3cVDH/wynP+EUQ
 RL0YTchSg==;
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRBu6-0005ib-7j
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 08:38:20 +0000
Received: by mail-io1-xd44.google.com with SMTP id q21so1873671iog.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 01:38:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=C9JP0N9BOAKIKjnOKpvcauJRP2dUC/WHKbmpM2CzhnA=;
 b=uV8PXLrENhbYzJPMQg/GfuwTr2zlOMTnJo7nzJg05BO+KHWDwr3Gy/uxNWLBv7Kuka
 3NDIIOKcKiFBUsBMdUv3lHNHNwPeoXQ4FSdn4trrpXJVg+2yNarpb7yJgEUStTZLx+cS
 tidwhMPRDkWJAGrARxSxyE5gTccNzRGsFHOUjYS/90QUDPVTdo2humon+At1R42bVUJa
 FpcI/JbBOOXWBxyNW4GgunCPAUvgiQZHC5Z03vjL6j5oRIaVciSzG9MPfy6a69cLUnqH
 SaElm0KDWl3NEjcWzlORIUr2lLJSzpvzLtJHRrUcDk1dR1h7SC8acTT2bETRMCfSIP9W
 0ztA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=C9JP0N9BOAKIKjnOKpvcauJRP2dUC/WHKbmpM2CzhnA=;
 b=PMOVShqJ6M4E/n5a3C5ZKzJrwAQkllvE8wyxr72/L6eB+A/EeJAqHCrVaP5ImWLOTu
 sfQXYxT/QWBDRKoGIqmas2kdGVk4XEknw0LOWHNGWFs7UdOUAHe2SO8sgnMKQzmH8siF
 eV1v4BaV7lJSs8MGDWh5+vOWvwznjbDHIZeuWqIei1eDWkL6lnLKw2nZxWb9zYDQFFDt
 bY+gsVg8eUhFSN/JwdzYGaBgrDopGByw6X2SfWo1RfqreKGFdOpXFQSd0jpy6ecuLL/P
 xJ6naz4ue9P/WR7ORwjYNpXgH19bbWc6qhMiEdun1RLSom+dVfPgSzhRnAVtH55Fk1V6
 J21A==
X-Gm-Message-State: APjAAAWdpyY7HGLgWLFeoC6xFg1GrOVErSk3iipHpDqfDwcYZcrhySI7
 RsFM0MQrzcImte+gDjNG2+Is30Y/85su2p9zlGm6Uw==
X-Google-Smtp-Source: APXvYqz9CmbRJ3iRRK2v6t05hYLre9i2on+joX41dk5hh0qgy7FoEcnsqERuE7gSKNj6gb2SeUu1Zka4+ya1Zbn+dDo=
X-Received: by 2002:a5d:93da:: with SMTP id j26mr26590152ioo.170.1557995895704; 
 Thu, 16 May 2019 01:38:15 -0700 (PDT)
MIME-Version: 1.0
References: <1557824407-19092-1-git-send-email-anshuman.khandual@arm.com>
 <1557824407-19092-4-git-send-email-anshuman.khandual@arm.com>
In-Reply-To: <1557824407-19092-4-git-send-email-anshuman.khandual@arm.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Thu, 16 May 2019 10:38:03 +0200
Message-ID: <CAKv+Gu_ZOX8x22Pbo_XgwdauqqAh+b5U285WY8KrszXJVwwqHQ@mail.gmail.com>
Subject: Re: [PATCH V3 3/4] arm64/mm: Inhibit huge-vmap with ptdump
To: Anshuman Khandual <anshuman.khandual@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_093818_399522_E03636A8 
X-CRM114-Status: GOOD (  34.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, Michal Hocko <mhocko@suse.com>,
 Mel Gorman <mgorman@techsingularity.net>, david@redhat.com,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Logan Gunthorpe <logang@deltatee.com>, arunks@codeaurora.org,
 Qian Cai <cai@lca.pw>, cpandya@codeaurora.org,
 James Morse <james.morse@arm.com>, Andrew Morton <akpm@linux-foundation.org>,
 osalvador@suse.de, ira.weiny@intel.com, "Williams,
 Dan J" <dan.j.williams@intel.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 14 May 2019 at 11:00, Anshuman Khandual
<anshuman.khandual@arm.com> wrote:
>
> From: Mark Rutland <mark.rutland@arm.com>
>
> The arm64 ptdump code can race with concurrent modification of the
> kernel page tables. At the time this was added, this was sound as:
>
> * Modifications to leaf entries could result in stale information being
>   logged, but would not result in a functional problem.
>
> * Boot time modifications to non-leaf entries (e.g. freeing of initmem)
>   were performed when the ptdump code cannot be invoked.
>
> * At runtime, modifications to non-leaf entries only occurred in the
>   vmalloc region, and these were strictly additive, as intermediate
>   entries were never freed.
>
> However, since commit:
>
>   commit 324420bf91f6 ("arm64: add support for ioremap() block mappings")
>
> ... it has been possible to create huge mappings in the vmalloc area at
> runtime, and as part of this existing intermediate levels of table my be
> removed and freed.
>
> It's possible for the ptdump code to race with this, and continue to
> walk tables which have been freed (and potentially poisoned or
> reallocated). As a result of this, the ptdump code may dereference bogus
> addresses, which could be fatal.
>
> Since huge-vmap is a TLB and memory optimization, we can disable it when
> the runtime ptdump code is in use to avoid this problem.
>

The reason I added this originally is so that we don't trigger a
warning when unmapping vmappings that use 2 MB block mappings, which
happens when we free the kernel's .init segment. The ability to create
such mappings is indeed an optimization that the kernel mapping code
does not rely on.


> Fixes: 324420bf91f60582 ("arm64: add support for ioremap() block mappings")
> Signed-off-by: Mark Rutland <mark.rutland@arm.com>
> Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
> Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will.deacon@arm.com>

Acked-by: Ard Biesheuvel <ard.biesheuvel@arm.com>

> ---
>  arch/arm64/mm/mmu.c | 11 ++++++++---
>  1 file changed, 8 insertions(+), 3 deletions(-)
>
> diff --git a/arch/arm64/mm/mmu.c b/arch/arm64/mm/mmu.c
> index ef82312..37a902c 100644
> --- a/arch/arm64/mm/mmu.c
> +++ b/arch/arm64/mm/mmu.c
> @@ -955,13 +955,18 @@ void *__init fixmap_remap_fdt(phys_addr_t dt_phys)
>
>  int __init arch_ioremap_pud_supported(void)
>  {
> -       /* only 4k granule supports level 1 block mappings */
> -       return IS_ENABLED(CONFIG_ARM64_4K_PAGES);
> +       /*
> +        * Only 4k granule supports level 1 block mappings.
> +        * SW table walks can't handle removal of intermediate entries.
> +        */
> +       return IS_ENABLED(CONFIG_ARM64_4K_PAGES) &&
> +              !IS_ENABLED(CONFIG_ARM64_PTDUMP_DEBUGFS);
>  }
>
>  int __init arch_ioremap_pmd_supported(void)
>  {
> -       return 1;
> +       /* See arch_ioremap_pud_supported() */
> +       return !IS_ENABLED(CONFIG_ARM64_PTDUMP_DEBUGFS);
>  }
>
>  int pud_set_huge(pud_t *pudp, phys_addr_t phys, pgprot_t prot)
> --
> 2.7.4
>
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
