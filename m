Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AFE3D2800
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 13:35:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JXFTFL5h+32oQOmF3Y/dQPXdZC4oCWguabljHeEl60M=; b=jaARxR3FWZzcKh
	xPElZ7niXBS5qa62ciNVq6aMUeU6wsw1XU8e5ibK4K1BPT6xCsT3S/i4+SmCefLtEMSF2u5PH5MuR
	RqYUVeRulE5/teiCLBvUOF58kmFLBdcr6rTUO1EWvIM4YfWj5YrwU9Fty+I54ug1T4wQ4F0PLOFMH
	CLZaXe8bk/F14ROCE/t4gzKSRf7G6AbxO0ARENwglmd868CFmUdD1B4JJQBHbaQMo5eLHSfJSEtKx
	qzJXgU+0DQICIANo+BPUYw3cvtl10lqLyoOe6oXrWVEDo9/xngdEwnuOJ7jrwF7OcabzTrwe6fQxW
	wDH3uiE9OJWhnTKWhfcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIWj3-0000gd-Gu; Thu, 10 Oct 2019 11:35:21 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIWiw-0000fm-8V
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 11:35:16 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5983E28;
 Thu, 10 Oct 2019 04:35:08 -0700 (PDT)
Received: from mbp (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 776873F68E;
 Thu, 10 Oct 2019 04:35:05 -0700 (PDT)
Date: Thu, 10 Oct 2019 12:34:59 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH V9 2/2] arm64/mm: Enable memory hot remove
Message-ID: <20191010113433.GI28269@mbp>
References: <1570609308-15697-1-git-send-email-anshuman.khandual@arm.com>
 <1570609308-15697-3-git-send-email-anshuman.khandual@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1570609308-15697-3-git-send-email-anshuman.khandual@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_043514_390124_D2EBF3B8 
X-CRM114-Status: GOOD (  13.16  )
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
Cc: mark.rutland@arm.com, david@redhat.com, linux-mm@kvack.org,
 arunks@codeaurora.org, cpandya@codeaurora.org, ira.weiny@intel.com,
 will@kernel.org, steven.price@arm.com, valentin.schneider@arm.com,
 suzuki.poulose@arm.com, Robin.Murphy@arm.com, broonie@kernel.org, cai@lca.pw,
 ard.biesheuvel@arm.com, dan.j.williams@intel.com,
 linux-arm-kernel@lists.infradead.org, osalvador@suse.de, steve.capper@arm.com,
 logang@deltatee.com, linux-kernel@vger.kernel.org, akpm@linux-foundation.org,
 mgorman@techsingularity.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Anshuman,

On Wed, Oct 09, 2019 at 01:51:48PM +0530, Anshuman Khandual wrote:
> +static void unmap_hotplug_pmd_range(pud_t *pudp, unsigned long addr,
> +				    unsigned long end, bool free_mapped)
> +{
> +	unsigned long next;
> +	pmd_t *pmdp, pmd;
> +
> +	do {
> +		next = pmd_addr_end(addr, end);
> +		pmdp = pmd_offset(pudp, addr);
> +		pmd = READ_ONCE(*pmdp);
> +		if (pmd_none(pmd))
> +			continue;
> +
> +		WARN_ON(!pmd_present(pmd));
> +		if (pmd_sect(pmd)) {
> +			pmd_clear(pmdp);
> +			flush_tlb_kernel_range(addr, next);

The range here could be a whole PMD_SIZE. Since we are invalidating a
single block entry, one TLBI should be sufficient:

			flush_tlb_kernel_range(addr, addr + PAGE_SIZE);

> +			if (free_mapped)
> +				free_hotplug_page_range(pmd_page(pmd),
> +							PMD_SIZE);
> +			continue;
> +		}
> +		WARN_ON(!pmd_table(pmd));
> +		unmap_hotplug_pte_range(pmdp, addr, next, free_mapped);
> +	} while (addr = next, addr < end);
> +}
> +
> +static void unmap_hotplug_pud_range(pgd_t *pgdp, unsigned long addr,
> +				    unsigned long end, bool free_mapped)
> +{
> +	unsigned long next;
> +	pud_t *pudp, pud;
> +
> +	do {
> +		next = pud_addr_end(addr, end);
> +		pudp = pud_offset(pgdp, addr);
> +		pud = READ_ONCE(*pudp);
> +		if (pud_none(pud))
> +			continue;
> +
> +		WARN_ON(!pud_present(pud));
> +		if (pud_sect(pud)) {
> +			pud_clear(pudp);
> +			flush_tlb_kernel_range(addr, next);
			^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
			flush_tlb_kernel_range(addr, addr + PAGE_SIZE);

[...]
> +static void free_empty_pte_table(pmd_t *pmdp, unsigned long addr,
> +				 unsigned long end, unsigned long floor,
> +				 unsigned long ceiling)
> +{
> +	pte_t *ptep, pte;
> +	unsigned long i, start = addr;
> +
> +	do {
> +		ptep = pte_offset_kernel(pmdp, addr);
> +		pte = READ_ONCE(*ptep);
> +		WARN_ON(!pte_none(pte));
> +	} while (addr += PAGE_SIZE, addr < end);

So this loop is just a sanity check (pte clearing having been done by
the unmap loops). That's fine, maybe a comment for future reference.

> +
> +	if (!pgtable_range_aligned(start, end, floor, ceiling, PMD_MASK))
> +		return;
> +
> +	ptep = pte_offset_kernel(pmdp, 0UL);
> +	for (i = 0; i < PTRS_PER_PTE; i++) {
> +		if (!pte_none(READ_ONCE(ptep[i])))
> +			return;
> +	}

We could do with a comment for this loop along the lines of:

	Check whether we can free the pte page if the rest of the
	entries are empty. Overlap with other regions have been handled
	by the floor/ceiling check.

Apart from the comments above, the rest of the patch looks fine. Once
fixed:

Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>

Mark Rutland mentioned at some point that, as a preparatory patch to
this series, we'd need to make sure we don't hot-remove memory already
given to the kernel at boot. Any plans here?

Thanks.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
