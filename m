Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A9157312D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 16:09:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mwKftJEcWU85rfKAm8A8vwZCMwBlCnHWp9QCHquXZEI=; b=ehUK8HMUmhf1OG
	GD2SuymUZgjnEUn1PQNReAsmIXm3Uezx1NkyWpr9IaKRWxs9HUvpW6fjKmmOw20NpE73AF8ubkvkB
	DEHqJRb8zFK8Z45gAUMEMYPu3K9itP8lprMoHhmTYRJBvwR2d/IrLeFx7owFJhRAwO5CZrfKeKF2C
	iwJWuRXDATpHSV49Tam+SzpNzGi+LASYxLFssLrtqogQTxGM2Y7aNuzXA6Ti0OYTYCtyjTHHYCeA2
	Ub3vQOsqwt4tjWo5oww0sGWakV5MfZpH6MbtPB62p/RR/wr4nHm1SY57afN9nrkb5D1JnaZpCiwHY
	xQZ38SX9ueGxtK6XRIIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqHxZ-0002tE-VS; Wed, 24 Jul 2019 14:09:37 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hqHxC-0002hY-7h
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 14:09:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4428D28;
 Wed, 24 Jul 2019 07:09:13 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CB3973F71A;
 Wed, 24 Jul 2019 07:09:10 -0700 (PDT)
Date: Wed, 24 Jul 2019 15:09:08 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Steven Price <steven.price@arm.com>
Subject: Re: [PATCH v9 11/21] mm: pagewalk: Add p4d_entry() and pgd_entry()
Message-ID: <20190724140908.GE2624@lakrids.cambridge.arm.com>
References: <20190722154210.42799-1-steven.price@arm.com>
 <20190722154210.42799-12-steven.price@arm.com>
 <20190723101432.GC8085@lakrids.cambridge.arm.com>
 <60ee20ef-62a3-5df1-6e24-24973b69be70@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <60ee20ef-62a3-5df1-6e24-24973b69be70@arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_070914_365688_1FD26E99 
X-CRM114-Status: GOOD (  21.56  )
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
Cc: Dave Hansen <dave.hansen@linux.intel.com>, Arnd Bergmann <arnd@arndb.de>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, x86@kernel.org,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 =?utf-8?B?SsOpcsO0bWU=?= Glisse <jglisse@redhat.com>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>,
 James Morse <james.morse@arm.com>, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>, Andrew Morton <akpm@linux-foundation.org>,
 linux-arm-kernel@lists.infradead.org, "Liang, Kan" <kan.liang@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 24, 2019 at 02:53:04PM +0100, Steven Price wrote:
> On 23/07/2019 11:14, Mark Rutland wrote:
> > On Mon, Jul 22, 2019 at 04:42:00PM +0100, Steven Price wrote:
> >> pgd_entry() and pud_entry() were removed by commit 0b1fbfe50006c410
> >> ("mm/pagewalk: remove pgd_entry() and pud_entry()") because there were
> >> no users. We're about to add users so reintroduce them, along with
> >> p4d_entry() as we now have 5 levels of tables.
> >>
> >> Note that commit a00cc7d9dd93d66a ("mm, x86: add support for
> >> PUD-sized transparent hugepages") already re-added pud_entry() but with
> >> different semantics to the other callbacks. Since there have never
> >> been upstream users of this, revert the semantics back to match the
> >> other callbacks. This means pud_entry() is called for all entries, not
> >> just transparent huge pages.
> >>
> >> Signed-off-by: Steven Price <steven.price@arm.com>
> >> ---
> >>  include/linux/mm.h | 15 +++++++++------
> >>  mm/pagewalk.c      | 27 ++++++++++++++++-----------
> >>  2 files changed, 25 insertions(+), 17 deletions(-)
> >>
> >> diff --git a/include/linux/mm.h b/include/linux/mm.h
> >> index 0334ca97c584..b22799129128 100644
> >> --- a/include/linux/mm.h
> >> +++ b/include/linux/mm.h
> >> @@ -1432,15 +1432,14 @@ void unmap_vmas(struct mmu_gather *tlb, struct vm_area_struct *start_vma,
> >>  
> >>  /**
> >>   * mm_walk - callbacks for walk_page_range
> >> - * @pud_entry: if set, called for each non-empty PUD (2nd-level) entry
> >> - *	       this handler should only handle pud_trans_huge() puds.
> >> - *	       the pmd_entry or pte_entry callbacks will be used for
> >> - *	       regular PUDs.
> >> - * @pmd_entry: if set, called for each non-empty PMD (3rd-level) entry
> >> + * @pgd_entry: if set, called for each non-empty PGD (top-level) entry
> >> + * @p4d_entry: if set, called for each non-empty P4D entry
> >> + * @pud_entry: if set, called for each non-empty PUD entry
> >> + * @pmd_entry: if set, called for each non-empty PMD entry
> > 
> > How are these expected to work with folding?
> > 
> > For example, on arm64 with 64K pages and 42-bit VA, you can have 2-level
> > tables where the PGD is P4D, PUD, and PMD. IIUC we'd invoke the
> > callbacks for each of those levels where we found an entry in the pgd.
> > 
> > Either the callee handle that, or we should inhibit the callbacks when
> > levels are folded, and I think that needs to be explcitly stated either
> > way.
> > 
> > IIRC on x86 the p4d folding is dynamic depending on whether the HW
> > supports 5-level page tables. Maybe that implies the callee has to
> > handle that.
> 
> Yes, my assumption is that it has to be up to the callee to handle that
> because folding can be dynamic. I believe this also was how these
> callbacks work before they were removed. However I'll add a comment
> explaining that here as it's probably non-obvious.

That sounds good to me.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
