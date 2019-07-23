Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 202FB71590
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 11:58:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B8+tZjbqy1W3/dtZuqyOQMGRthGknuE8UYC/FM2Q24s=; b=dCE+2gC+ENy9iH
	Ep2rlR1Dz0ozKPDfTTYpQWvR8tJtDxyYDPghNbF9ss67K/r3b2DJfTpgVpWyAed4ffkXryiHDXq9m
	xR9IntBTgM8uw2ogdAu66iMofwCr8Myjub3gTwzie7qukHCzJsVMPujz7ow0ZWwFQeVe/MS7pFBPD
	nrEwFjO634g9w412fZwqIb4QlkWB/6oq3L+KLOJPD1RvJ1jH375yO/iKCH70KnAFM79FMcg5xPkFN
	d691pjSRjQZW7VHvLwdkSdnlw1RfGbt+zDr1swI1YkJhVovTB6qnjk17FmqO79QU7E2F7UA8lsHqn
	01kNDqTL36uTbjhTeHVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hprYf-0005gX-BU; Tue, 23 Jul 2019 09:58:09 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hprYQ-0005gC-4T
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 09:57:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D39B8337;
 Tue, 23 Jul 2019 02:57:52 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 639E93F71A;
 Tue, 23 Jul 2019 02:57:50 -0700 (PDT)
Date: Tue, 23 Jul 2019 10:57:48 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Steven Price <steven.price@arm.com>
Subject: Re: [PATCH v9 19/21] mm: Add generic ptdump
Message-ID: <20190723095747.GB8085@lakrids.cambridge.arm.com>
References: <20190722154210.42799-1-steven.price@arm.com>
 <20190722154210.42799-20-steven.price@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190722154210.42799-20-steven.price@arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_025754_271775_4CC32296 
X-CRM114-Status: GOOD (  16.51  )
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

On Mon, Jul 22, 2019 at 04:42:08PM +0100, Steven Price wrote:
> Add a generic version of page table dumping that architectures can
> opt-in to
> 
> Signed-off-by: Steven Price <steven.price@arm.com>

[...]

> +#ifdef CONFIG_KASAN
> +/*
> + * This is an optimization for KASAN=y case. Since all kasan page tables
> + * eventually point to the kasan_early_shadow_page we could call note_page()
> + * right away without walking through lower level page tables. This saves
> + * us dozens of seconds (minutes for 5-level config) while checking for
> + * W+X mapping or reading kernel_page_tables debugfs file.
> + */
> +static inline bool kasan_page_table(struct ptdump_state *st, void *pt,
> +				    unsigned long addr)
> +{
> +	if (__pa(pt) == __pa(kasan_early_shadow_pmd) ||
> +#ifdef CONFIG_X86
> +	    (pgtable_l5_enabled() &&
> +			__pa(pt) == __pa(kasan_early_shadow_p4d)) ||
> +#endif
> +	    __pa(pt) == __pa(kasan_early_shadow_pud)) {
> +		st->note_page(st, addr, 5, pte_val(kasan_early_shadow_pte[0]));
> +		return true;
> +	}
> +	return false;

Having you tried this with CONFIG_DEBUG_VIRTUAL?

The kasan_early_shadow_pmd is a kernel object rather than a linear map
object, so you should use __pa_symbol for that.

It's a bit horrid to have to test multiple levels in one function; can't
we check the relevant level inline in each of the test_p?d funcs?

They're optional anyway, so they only need to be defined for
CONFIG_KASAN.

Thanks,
Mark.

> +}
> +#else
> +static inline bool kasan_page_table(struct ptdump_state *st, void *pt,
> +				    unsigned long addr)
> +{
> +	return false;
> +}
> +#endif
> +
> +static int ptdump_test_p4d(unsigned long addr, unsigned long next,
> +			   p4d_t *p4d, struct mm_walk *walk)
> +{
> +	struct ptdump_state *st = walk->private;
> +
> +	if (kasan_page_table(st, p4d, addr))
> +		return 1;
> +	return 0;
> +}
> +static int ptdump_test_pud(unsigned long addr, unsigned long next,
> +			   pud_t *pud, struct mm_walk *walk)
> +{
> +	struct ptdump_state *st = walk->private;
> +
> +	if (kasan_page_table(st, pud, addr))
> +		return 1;
> +	return 0;
> +}
> +
> +static int ptdump_test_pmd(unsigned long addr, unsigned long next,
> +			   pmd_t *pmd, struct mm_walk *walk)
> +{
> +	struct ptdump_state *st = walk->private;
> +
> +	if (kasan_page_table(st, pmd, addr))
> +		return 1;
> +	return 0;
> +}
> +
> +static int ptdump_hole(unsigned long addr, unsigned long next,
> +		       struct mm_walk *walk)
> +{
> +	struct ptdump_state *st = walk->private;
> +
> +	st->note_page(st, addr, -1, 0);
> +
> +	return 0;
> +}
> +
> +void ptdump_walk_pgd(struct ptdump_state *st, struct mm_struct *mm)
> +{
> +	struct mm_walk walk = {
> +		.mm		= mm,
> +		.pgd_entry	= ptdump_pgd_entry,
> +		.p4d_entry	= ptdump_p4d_entry,
> +		.pud_entry	= ptdump_pud_entry,
> +		.pmd_entry	= ptdump_pmd_entry,
> +		.pte_entry	= ptdump_pte_entry,
> +		.test_p4d	= ptdump_test_p4d,
> +		.test_pud	= ptdump_test_pud,
> +		.test_pmd	= ptdump_test_pmd,
> +		.pte_hole	= ptdump_hole,
> +		.private	= st
> +	};
> +	const struct ptdump_range *range = st->range;
> +
> +	down_read(&mm->mmap_sem);
> +	while (range->start != range->end) {
> +		walk_page_range(range->start, range->end, &walk);
> +		range++;
> +	}
> +	up_read(&mm->mmap_sem);
> +
> +	/* Flush out the last page */
> +	st->note_page(st, 0, 0, 0);
> +}
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
