Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C170C12B37
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 12:05:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TZ/TTA787n53I0jksJtMsj4/PH/3/ZEauwK7sIhV4eQ=; b=stR1seVaasjPtO
	Iv3Idr9v4btQtPJGQH/WXz9fjbvus3L+ZRQ48+OuOBsqtT/onjQ/6ywezOxaDyoxhl34VhlSu/i9m
	D6cCdM3rrvyqRmEz5jEHa7XfePKS3Tq8/+s2JXA1thKeeQO7OJtBQA6WA46IFnJ0R0wDvpvKAEVgA
	1inPpYi6wCfGIM5vtNCek2NHwKXPs1aakEbrUd4LFtNKzYwmlaIt3J4JytOZ5jFo5V20WF0KGluxu
	96zYVTj0bhIFXJ1Ik2/8IXgGA1mNIfe5TGKuZaGUOIBZ+0G7M2vpNckGO78oooCVcXHumnW9THgVO
	sTN198HxluePOh+zIqaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMV4L-0002Qg-EM; Fri, 03 May 2019 10:05:29 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMV4E-0002PV-32; Fri, 03 May 2019 10:05:23 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F3CB1374;
 Fri,  3 May 2019 03:05:16 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9CC463F557;
 Fri,  3 May 2019 03:05:11 -0700 (PDT)
Date: Fri, 3 May 2019 11:05:09 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Mike Rapoport <rppt@linux.ibm.com>
Subject: Re: [PATCH 04/15] arm64: switch to generic version of pte allocation
Message-ID: <20190503100508.GB47811@lakrids.cambridge.arm.com>
References: <1556810922-20248-1-git-send-email-rppt@linux.ibm.com>
 <1556810922-20248-5-git-send-email-rppt@linux.ibm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1556810922-20248-5-git-send-email-rppt@linux.ibm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_030522_139750_1FA97397 
X-CRM114-Status: GOOD (  20.37  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Michal Hocko <mhocko@suse.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Palmer Dabbelt <palmer@sifive.com>, linux-mips@vger.kernel.org,
 Guo Ren <guoren@kernel.org>, linux-hexagon@vger.kernel.org,
 linux-riscv@lists.infradead.org, linux-arch@vger.kernel.org,
 Michael Ellerman <mpe@ellerman.id.au>, Helge Deller <deller@gmx.de>,
 x86@kernel.org, Russell King <linux@armlinux.org.uk>,
 Matthew Wilcox <willy@infradead.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Matt Turner <mattst88@gmail.com>,
 Sam Creasey <sammy@sammy.net>, Arnd Bergmann <arnd@arndb.de>,
 linux-um@lists.infradead.org, Richard Weinberger <richard@nod.at>,
 linux-m68k@lists.linux-m68k.org, Greentime Hu <green.hu@gmail.com>,
 nios2-dev@lists.rocketboards.org, Guan Xuetao <gxt@pku.edu.cn>,
 linux-arm-kernel@lists.infradead.org, linux-parisc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Richard Kuo <rkuo@codeaurora.org>,
 Paul Burton <paul.burton@mips.com>, linux-alpha@vger.kernel.org,
 Ley Foon Tan <lftan@altera.com>, Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Thu, May 02, 2019 at 06:28:31PM +0300, Mike Rapoport wrote:
> The PTE allocations in arm64 are identical to the generic ones modulo the
> GFP flags.
> 
> Using the generic pte_alloc_one() functions ensures that the user page
> tables are allocated with __GFP_ACCOUNT set.
> 
> The arm64 definition of PGALLOC_GFP is removed and replaced with
> GFP_PGTABLE_USER for p[gum]d_alloc_one() and for KVM memory cache.
> 
> The mappings created with create_pgd_mapping() are now using
> GFP_PGTABLE_KERNEL.
> 
> The conversion to the generic version of pte_free_kernel() removes the NULL
> check for pte.
> 
> The pte_free() version on arm64 is identical to the generic one and
> can be simply dropped.
> 
> Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
> ---
>  arch/arm64/include/asm/pgalloc.h | 43 ++++------------------------------------
>  arch/arm64/mm/mmu.c              |  2 +-
>  arch/arm64/mm/pgd.c              |  4 ++--
>  virt/kvm/arm/mmu.c               |  2 +-
>  4 files changed, 8 insertions(+), 43 deletions(-)

[...]

> diff --git a/arch/arm64/mm/pgd.c b/arch/arm64/mm/pgd.c
> index 289f911..2ef1a53 100644
> --- a/arch/arm64/mm/pgd.c
> +++ b/arch/arm64/mm/pgd.c
> @@ -31,9 +31,9 @@ static struct kmem_cache *pgd_cache __ro_after_init;
>  pgd_t *pgd_alloc(struct mm_struct *mm)
>  {
>  	if (PGD_SIZE == PAGE_SIZE)
> -		return (pgd_t *)__get_free_page(PGALLOC_GFP);
> +		return (pgd_t *)__get_free_page(GFP_PGTABLE_USER);
>  	else
> -		return kmem_cache_alloc(pgd_cache, PGALLOC_GFP);
> +		return kmem_cache_alloc(pgd_cache, GFP_PGTABLE_USER);
>  }

In efi_virtmap_init() we use pgd_alloc() to allocate a pgd for EFI
runtime services, which we map with a special kernel page table.

I'm not sure if accounting that is problematic, as it's allocated in a
kernel thread off the back of an early_initcall.

Just to check, Is that sound, or do we need a pgd_alloc_kernel()?

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
