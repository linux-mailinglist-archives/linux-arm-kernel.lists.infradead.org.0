Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DA035EAEA
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 19:53:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1jJ10zdfW2epfcu7peqJOzVdlhzRKu4kKKIY3tNUCGE=; b=gtL4hCAPZDdDe0
	Z3ZBcluXNEQtO2QfQO0ZK1JHOLZ3+7Bxc4g5R+qTTNNSRWhQgws3tRqP6lF/4V3sseywiuA+swBM/
	Ti2T18/kZHmxyj+pfGb2Z0p6WxCPF6nze9NN+XMGAhImNeA/js98Uq24RMbyEIhXGJxdUTJVrMl8l
	LKV2PoBML7FeyOc7YO2TYL4Oc7J8GgucsHNEWALjdgNwnRf7aIXnf9YKVNlovHnK5qQ2aAugEFjVD
	gRPiFkCS8BLq6OuRWSH6PtYd7dMwm8nRIextA0dF+KknzL/bH838NO1I8T7Tl40tugL5mmGAs901y
	FRJCXGVzzIIDjyC8wy9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hijRO-0004Ly-Ap; Wed, 03 Jul 2019 17:53:10 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hijRA-0004LC-NZ
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 17:52:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5D5B2344;
 Wed,  3 Jul 2019 10:52:54 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 250823F718; Wed,  3 Jul 2019 10:52:53 -0700 (PDT)
Date: Wed, 3 Jul 2019 18:52:51 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [RFC 1/2] arm64/mm: Change THP helpers to comply with generic MM
 semantics
Message-ID: <20190703175250.GF48312@arrakis.emea.arm.com>
References: <1561639696-16361-1-git-send-email-anshuman.khandual@arm.com>
 <1561639696-16361-2-git-send-email-anshuman.khandual@arm.com>
 <20190628102003.GA56463@arrakis.emea.arm.com>
 <82237e21-1f14-ab6e-0f80-9706141e2172@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <82237e21-1f14-ab6e-0f80-9706141e2172@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_105256_860632_7C819DA5 
X-CRM114-Status: GOOD (  29.52  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Andrea Arcangeli <aarcange@redhat.com>,
 Suzuki Poulose <suzuki.poulose@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 02, 2019 at 09:07:28AM +0530, Anshuman Khandual wrote:
> On 06/28/2019 03:50 PM, Catalin Marinas wrote:
> > On Thu, Jun 27, 2019 at 06:18:15PM +0530, Anshuman Khandual wrote:
> >> pmd_present() and pmd_trans_huge() are expected to behave in the following
> >> manner during various phases of a given PMD. It is derived from a previous
> >> detailed discussion on this topic [1] and present THP documentation [2].
> >>
> >> pmd_present(pmd):
> >>
> >> - Returns true if pmd refers to system RAM with a valid pmd_page(pmd)
> >> - Returns false if pmd does not refer to system RAM - Invalid pmd_page(pmd)
> >>
> >> pmd_trans_huge(pmd):
> >>
> >> - Returns true if pmd refers to system RAM and is a trans huge mapping
[...]
> > Before we actually start fixing this, I would strongly suggest that you
> > add a boot selftest (see lib/Kconfig.debug for other similar cases)
> > which checks the consistency of the page table macros w.r.t. the
> > expected mm semantics. Once the mm maintainers agreed with the
> > semantics, it will really help architecture maintainers in implementing
> > them correctly.
> 
> Sure and it will help all architectures to be in sync wrt semantics.
> 
> > You wouldn't need actual page tables, just things like assertions on
> > pmd_trans_huge(pmd_mkhuge(pmd)) == true. You could go further and have
> > checks on pmdp_invalidate(&dummy_vma, dummy_addr, &dummy_pmd) with the
> > dummy_* variables on the stack.
> 
> Hmm. I guess macros which operate directly on a page table entry will be
> okay but the ones which check on specific states for VMA or MM might be
> bit tricky. Try to emulate VMA/MM states while on stack ?. But sure, will
> explore adding such a test.

You can pretend that the page table is on the stack. See the _pmd
variable in do_huge_pmd_wp_page_fallback() and
__split_huge_zero_page_pmd(). Similarly, the vma and even the mm can be
faked on the stack (see the arm64 tlb_flush()).

> >> The problem:
> >>
> >> PMD is first invalidated with pmdp_invalidate() before it's splitting. This
> >> invalidation clears PMD_SECT_VALID as below.
> >>
> >> PMD Split -> pmdp_invalidate() -> pmd_mknotpresent -> Clears PMD_SECT_VALID
> >>
> >> Once PMD_SECT_VALID gets cleared, it results in pmd_present() return false
> >> on the PMD entry.
> > 
> > I think that's an inconsistency in the expected semantics here. Do you
> > mean that pmd_present(pmd_mknotpresent(pmd)) should be true? If not, do
[...]
> pmd_present() and pmd_mknotpresent() are not exact inverse.

I find this very confusing (not your fault, just the semantics expected
by the core code). I can see that x86 is using _PAGE_PSE to make
pmd_present(pmd_mknotpresent()) == true. However, for pud that's not the
case (because it's not used for transhuge).

I'd rather have this renamed to pmd_mknotvalid().

> In absence of a positive section mapping bit on arm64, PTE_SPECIAL is being set
> temporarily to remember that it was a mapped PMD which got invalidated recently
> but which still points to memory. Hence pmd_present() must evaluate true.

I wonder if we can encode this safely for arm64 in the bottom two bits
of a pmd :

0b00 - not valid, not present
0b10 - not valid, present, huge
0b01 - valid, present, huge
0b11 - valid, table (not huge)

Do we ever call pmdp_invalidate() on a table entry? I don't think we do.

So a pte_mknotvalid would set bit 1 and I think swp_entry_to_pmd() would
have to clear it so that pmd_present() actually returns false for a swp
pmd entry.

> > we need to implement our own pmdp_invalidate() or change the generic one
> > to set a "special" bit instead of just a pmd_mknotpresent?
> 
> Though arm64 can subscribe __HAVE_ARCH_PMDP_INVALIDATE and implement it's own
> pmdp_invalidate() in order to not call pmd_mknotpresent() and instead operate
> on the invalid and special bits directly. But its not going to alter relevant
> semantics here. AFAICS it might be bit better as it saves pmd_mknotpresent()
> from putting in that special bit in there which it is not supposed do.
> 
> IFAICS there is no compelling reason for generic pmdp_invalidate() to change
> either. It calls pmd_mknotpresent() which invalidates the entry through valid
> or present bit and platforms which have dedicated huge page bit can still test
> positive for pmd_present() after it's invalidation. It works for such platforms.
> Platform specific override is required when invalidation via pmd_mknotpresent()
> is not enough.

I'd really like the mknotpresent to be renamed to mknotvalid and then we
can keep pmdp_invalidate unchanged (well, calling mknotvalid instead).

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
