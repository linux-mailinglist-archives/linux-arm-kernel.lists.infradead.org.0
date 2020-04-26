Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FD711B8A79
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 02:55:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I1wT4SMODymuh7HJT+/z8Vrx0wXR1ewgp3HkwxM64qc=; b=b1i3t/G3R3wVi8
	AAMAiT/0aMt7ipbCpsZSEyLYfClFjqIGPAZycO2/2SGJBeky3tjKxO0BdrosZGBKmiqu5zAywNBos
	uNNMRQTTsvjs9AwmEpUNUAUIYEDqEbLu7fbk0nv0QZoHTZSqR0nnYzSd03joOQ/t+Ro1dj3pDnEGt
	vpXqUxVN7b3M1GAdaLvJVMKJY6gkliHZ/iOMrD/6ZmMT8oh6ChBn1xvu+JClNqu/Qud6bdri9+fJE
	b98UizGglZFq8l9A8cccXph3MFS1PvkuJeqci5mGjx/bzSb+pqf8BZfYaJtFyz3KMEmMg36Y2j6cF
	fbHX026dJt7qOhizaX3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSVZw-00010e-4e; Sun, 26 Apr 2020 00:55:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSVZk-0000y2-4R; Sun, 26 Apr 2020 00:55:20 +0000
Received: from localhost.localdomain (c-73-231-172-41.hsd1.ca.comcast.net
 [73.231.172.41])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C703C2071E;
 Sun, 26 Apr 2020 00:55:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587862513;
 bh=ZTYhefWcWVPvzKpJ4YNus3Eb/Cw6yBZoMC0HC9f2uJo=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=voeClhtCC2L3aoOg4PLujYogg49GIS1fgtfMUKWlqAW9bpZ8ridgihF1PL3jGpRdR
 Xi9LT36ek6mAp6Z7afYDRNR9CU1fvJtyqQXg8uhWkXxPbyQDCDYWBUE03myUQQA0+B
 pXuuMUykxqMmru798W+FA08pw+vvgALEiW+OZCd4=
Date: Sat, 25 Apr 2020 17:55:11 -0700
From: Andrew Morton <akpm@linux-foundation.org>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH 3/3] mm/hugetlb: Introduce HAVE_ARCH_CLEAR_HUGEPAGE_FLAGS
Message-Id: <20200425175511.7a68efb5e2f4436fe0328c1d@linux-foundation.org>
In-Reply-To: <1586864670-21799-4-git-send-email-anshuman.khandual@arm.com>
References: <1586864670-21799-1-git-send-email-anshuman.khandual@arm.com>
 <1586864670-21799-4-git-send-email-anshuman.khandual@arm.com>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_175516_223591_B41ED5EB 
X-CRM114-Status: GOOD (  12.58  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Rich Felker <dalias@libc.org>, linux-ia64@vger.kernel.org,
 linux-sh@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, linux-kernel@vger.kernel.org,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 linux-mm@kvack.org, Paul Mackerras <paulus@samba.org>,
 "H. Peter Anvin" <hpa@zytor.com>, sparclinux@vger.kernel.org,
 linux-riscv@lists.infradead.org, Will Deacon <will@kernel.org>,
 linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 Yoshinori Sato <ysato@users.sourceforge.jp>,
 Michael Ellerman <mpe@ellerman.id.au>, Helge Deller <deller@gmx.de>,
 x86@kernel.org, Russell King <linux@armlinux.org.uk>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Fenghua Yu <fenghua.yu@intel.com>, Vasily Gorbik <gor@linux.ibm.com>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Borislav Petkov <bp@alien8.de>, Paul Walmsley <paul.walmsley@sifive.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Tony Luck <tony.luck@intel.com>, linux-parisc@vger.kernel.org,
 linux-mips@vger.kernel.org, Palmer Dabbelt <palmer@dabbelt.com>,
 linuxppc-dev@lists.ozlabs.org, "David S. Miller" <davem@davemloft.net>,
 Mike Kravetz <mike.kravetz@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 14 Apr 2020 17:14:30 +0530 Anshuman Khandual <anshuman.khandual@arm.com> wrote:

> There are multiple similar definitions for arch_clear_hugepage_flags() on
> various platforms. This introduces HAVE_ARCH_CLEAR_HUGEPAGE_FLAGS for those
> platforms that need to define their own arch_clear_hugepage_flags() while
> also providing a generic fallback definition for others to use. This help
> reduce code duplication.
> 
> ...
>
> --- a/include/linux/hugetlb.h
> +++ b/include/linux/hugetlb.h
> @@ -544,6 +544,10 @@ static inline int is_hugepage_only_range(struct mm_struct *mm,
>  }
>  #endif
>  
> +#ifndef HAVE_ARCH_CLEAR_HUGEPAGE_FLAGS
> +static inline void arch_clear_hugepage_flags(struct page *page) { }
> +#endif
> +
>  #ifndef arch_make_huge_pte
>  static inline pte_t arch_make_huge_pte(pte_t entry, struct vm_area_struct *vma,
>  				       struct page *page, int writable)

This is the rather old-school way of doing it.  The Linus-suggested way is

#ifndef arch_clear_hugepage_flags
static inline void arch_clear_hugepage_flags(struct page *page)
{
}
#define arch_clear_hugepage_flags arch_clear_hugepage_flags
#endif

And the various arch headers do

static inline void arch_clear_hugepage_flags(struct page *page)
{
	<some implementation>
}
#define arch_clear_hugepage_flags arch_clear_hugepage_flags

It's a small difference - mainly to avoid adding two variables to the
overall namespace where one would do.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
