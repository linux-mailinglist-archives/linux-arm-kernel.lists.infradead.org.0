Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B255D7156C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 11:41:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hPG0uZf1ILPVnzF8cuttaMLttXm47p4JPMX2YbdijTE=; b=AklUcuVggfKu8C
	M/Ub4CTLGYHklJxEaru7/f/IuawknRyU++LjRUBmudOdaheTXb89c8hskfgWghNNBfxZ4Ezicsv0k
	EY+BcUfiqjWB0fBUuYicSwhLsnVjNWaDqeQBgNLly1+lb1gxkJssrgR8dDPAC8furEd5rq+7fhVCA
	QFg7t7Ydzmcs+qSYMQJeso2unp5BfluQE5gnoeo/NgRebag2pUVeBMnSPq4iWnZ/8XkBg2xMBiT4O
	pNLsJ2di49imZVamPeCRWjggftKrCl2F6LYrY7kIYY2rOeYgcxcxaK5jlkNwpSJyvNI5f5mVww7k2
	pc17J9Ykt3HJnVEDQ+zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hprIf-0008Mr-N8; Tue, 23 Jul 2019 09:41:37 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hprIR-0008Lt-Lp
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 09:41:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2D794337;
 Tue, 23 Jul 2019 02:41:21 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B37613F71A;
 Tue, 23 Jul 2019 02:41:18 -0700 (PDT)
Date: Tue, 23 Jul 2019 10:41:14 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Steven Price <steven.price@arm.com>
Subject: Re: [PATCH v9 10/21] mm: Add generic p?d_leaf() macros
Message-ID: <20190723094113.GA8085@lakrids.cambridge.arm.com>
References: <20190722154210.42799-1-steven.price@arm.com>
 <20190722154210.42799-11-steven.price@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190722154210.42799-11-steven.price@arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_024123_753906_4841EC37 
X-CRM114-Status: GOOD (  17.44  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: x86@kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, =?utf-8?B?SsOpcsO0bWU=?= Glisse <jglisse@redhat.com>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>,
 James Morse <james.morse@arm.com>, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>, Andrew Morton <akpm@linux-foundation.org>,
 linux-arm-kernel@lists.infradead.org, "Liang, Kan" <kan.liang@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 22, 2019 at 04:41:59PM +0100, Steven Price wrote:
> Exposing the pud/pgd levels of the page tables to walk_page_range() means
> we may come across the exotic large mappings that come with large areas
> of contiguous memory (such as the kernel's linear map).
> 
> For architectures that don't provide all p?d_leaf() macros, provide
> generic do nothing default that are suitable where there cannot be leaf
> pages that that level.
> 
> Signed-off-by: Steven Price <steven.price@arm.com>

Not a big deal, but it would probably make sense for this to be patch 1
in the series, given it defines the semantic of p?d_leaf(), and they're
not used until we provide all the architectural implemetnations anyway.

It might also be worth pointing out the reasons for this naming, e.g.
p?d_large() aren't currently generic, and this name minimizes potential
confusion between p?d_{large,huge}().

> ---
>  include/asm-generic/pgtable.h | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
> 
> diff --git a/include/asm-generic/pgtable.h b/include/asm-generic/pgtable.h
> index 75d9d68a6de7..46275896ca66 100644
> --- a/include/asm-generic/pgtable.h
> +++ b/include/asm-generic/pgtable.h
> @@ -1188,4 +1188,23 @@ static inline bool arch_has_pfn_modify_check(void)
>  #define mm_pmd_folded(mm)	__is_defined(__PAGETABLE_PMD_FOLDED)
>  #endif
>  
> +/*
> + * p?d_leaf() - true if this entry is a final mapping to a physical address.
> + * This differs from p?d_huge() by the fact that they are always available (if
> + * the architecture supports large pages at the appropriate level) even
> + * if CONFIG_HUGETLB_PAGE is not defined.
> + */

I assume it's only safe to call these on valid entries? I think it would
be worth calling that out explicitly.

Otherwise, this looks sound to me:

Acked-by: Mark Rutland <mark.rutland@arm.com>

Thanks,
Mark.

> +#ifndef pgd_leaf
> +#define pgd_leaf(x)	0
> +#endif
> +#ifndef p4d_leaf
> +#define p4d_leaf(x)	0
> +#endif
> +#ifndef pud_leaf
> +#define pud_leaf(x)	0
> +#endif
> +#ifndef pmd_leaf
> +#define pmd_leaf(x)	0
> +#endif
> +
>  #endif /* _ASM_GENERIC_PGTABLE_H */
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
