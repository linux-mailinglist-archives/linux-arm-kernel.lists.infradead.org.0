Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8764D73047
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 15:53:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OLtDduFMOMS/PN6SkoaYDz7pkvG2HxGTaQP2GSxBTwM=; b=Y6ffbw2dSwrY3F
	82NNxb80uo8FyXi7R1krYMn67/gdMv5PWlDexdBbPfKusktBfzT5ihd3zvmAYda1KPrOSBMTZD6Er
	tj3yRMC4mYbL7xhOEELvsffmK9GcN4kUwlixe6sXNByd0TcxYxuS/U//y6PE2A8eK1MFtLfjILGs/
	dlauj8eKEhEuYwZe1lHGkXoZHdbQNy73wYY8+8EMw8iI0n75XA9DNLHk8/0RRSF+TGiZWuX7YnA9d
	TplUUZ+l76ar8Z26Qk5KC134Gd9yEqTzL+QCcyI1erzbiV15AZqvxQ1IdGST/0g4xI+QgR4D8CDUQ
	YQfYrPafpYBBy310uYHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqHhn-0001VT-0l; Wed, 24 Jul 2019 13:53:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hqHhd-0001Rc-Ht
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 13:53:10 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6F72D28;
 Wed, 24 Jul 2019 06:53:08 -0700 (PDT)
Received: from [10.1.196.133] (e112269-lin.cambridge.arm.com [10.1.196.133])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 996793F71A;
 Wed, 24 Jul 2019 06:53:05 -0700 (PDT)
Subject: Re: [PATCH v9 11/21] mm: pagewalk: Add p4d_entry() and pgd_entry()
To: Mark Rutland <mark.rutland@arm.com>
References: <20190722154210.42799-1-steven.price@arm.com>
 <20190722154210.42799-12-steven.price@arm.com>
 <20190723101432.GC8085@lakrids.cambridge.arm.com>
From: Steven Price <steven.price@arm.com>
Message-ID: <60ee20ef-62a3-5df1-6e24-24973b69be70@arm.com>
Date: Wed, 24 Jul 2019 14:53:04 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190723101432.GC8085@lakrids.cambridge.arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_065309_684917_385E9F9E 
X-CRM114-Status: GOOD (  19.87  )
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
 =?UTF-8?B?SsOpcsO0bWUgR2xpc3Nl?= <jglisse@redhat.com>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>,
 James Morse <james.morse@arm.com>, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>, Andrew Morton <akpm@linux-foundation.org>,
 linux-arm-kernel@lists.infradead.org, "Liang, Kan" <kan.liang@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 23/07/2019 11:14, Mark Rutland wrote:
> On Mon, Jul 22, 2019 at 04:42:00PM +0100, Steven Price wrote:
>> pgd_entry() and pud_entry() were removed by commit 0b1fbfe50006c410
>> ("mm/pagewalk: remove pgd_entry() and pud_entry()") because there were
>> no users. We're about to add users so reintroduce them, along with
>> p4d_entry() as we now have 5 levels of tables.
>>
>> Note that commit a00cc7d9dd93d66a ("mm, x86: add support for
>> PUD-sized transparent hugepages") already re-added pud_entry() but with
>> different semantics to the other callbacks. Since there have never
>> been upstream users of this, revert the semantics back to match the
>> other callbacks. This means pud_entry() is called for all entries, not
>> just transparent huge pages.
>>
>> Signed-off-by: Steven Price <steven.price@arm.com>
>> ---
>>  include/linux/mm.h | 15 +++++++++------
>>  mm/pagewalk.c      | 27 ++++++++++++++++-----------
>>  2 files changed, 25 insertions(+), 17 deletions(-)
>>
>> diff --git a/include/linux/mm.h b/include/linux/mm.h
>> index 0334ca97c584..b22799129128 100644
>> --- a/include/linux/mm.h
>> +++ b/include/linux/mm.h
>> @@ -1432,15 +1432,14 @@ void unmap_vmas(struct mmu_gather *tlb, struct vm_area_struct *start_vma,
>>  
>>  /**
>>   * mm_walk - callbacks for walk_page_range
>> - * @pud_entry: if set, called for each non-empty PUD (2nd-level) entry
>> - *	       this handler should only handle pud_trans_huge() puds.
>> - *	       the pmd_entry or pte_entry callbacks will be used for
>> - *	       regular PUDs.
>> - * @pmd_entry: if set, called for each non-empty PMD (3rd-level) entry
>> + * @pgd_entry: if set, called for each non-empty PGD (top-level) entry
>> + * @p4d_entry: if set, called for each non-empty P4D entry
>> + * @pud_entry: if set, called for each non-empty PUD entry
>> + * @pmd_entry: if set, called for each non-empty PMD entry
> 
> How are these expected to work with folding?
> 
> For example, on arm64 with 64K pages and 42-bit VA, you can have 2-level
> tables where the PGD is P4D, PUD, and PMD. IIUC we'd invoke the
> callbacks for each of those levels where we found an entry in the pgd.
> 
> Either the callee handle that, or we should inhibit the callbacks when
> levels are folded, and I think that needs to be explcitly stated either
> way.
> 
> IIRC on x86 the p4d folding is dynamic depending on whether the HW
> supports 5-level page tables. Maybe that implies the callee has to
> handle that.

Yes, my assumption is that it has to be up to the callee to handle that
because folding can be dynamic. I believe this also was how these
callbacks work before they were removed. However I'll add a comment
explaining that here as it's probably non-obvious.

Steve

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
