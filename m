Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4709DAEF64
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 18:18:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OnrmhBnhMJLS4KBNqO0vpktlSWngIIu1l8Gf/oAZ//A=; b=KYRDs/1ksDB2BV
	JlF4xVAr2Te8/clbmeYthiKSgiIXRd7isFvaakp1uxKKWIjATBsQFLkvkhkIyKWI20voFr3omEtqz
	IsDAmAAhBnxhTbSAdxGHIsKYXmtJzFs88IgUbTmE3yQOq4RYi9s5Td3SsNVUniLrxU4p3X1J9nIh6
	fyNdSLjbqQFtMuBSSucLKrhlb5gsxxJ1UD51DL0fWhKjTbVl+BmSESXAGg+g5Ouh9+hsVc/e6TJsm
	BYDTplaVYa8+Sbvp/8RRNqaxthWrUeng9pV9aTBKHxYyapB19HGQVmIJVjHY/6wl5uqN828wIbLT+
	VAXZKyOgxNYR6rI6zPdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7iqf-0000nt-Nx; Tue, 10 Sep 2019 16:18:33 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i7iqM-0000kI-GG
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 16:18:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0AB911000;
 Tue, 10 Sep 2019 09:18:10 -0700 (PDT)
Received: from C02TF0J2HF1T.local (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id ABDE73F71F;
 Tue, 10 Sep 2019 09:18:04 -0700 (PDT)
Date: Tue, 10 Sep 2019 17:17:59 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH V7 3/3] arm64/mm: Enable memory hot remove
Message-ID: <20190910161759.GI14442@C02TF0J2HF1T.local>
References: <1567503958-25831-1-git-send-email-anshuman.khandual@arm.com>
 <1567503958-25831-4-git-send-email-anshuman.khandual@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1567503958-25831-4-git-send-email-anshuman.khandual@arm.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_091814_653050_129C0F64 
X-CRM114-Status: GOOD (  15.41  )
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
Cc: mark.rutland@arm.com, mhocko@suse.com, david@redhat.com, linux-mm@kvack.org,
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

On Tue, Sep 03, 2019 at 03:15:58PM +0530, Anshuman Khandual wrote:
> @@ -770,6 +1022,28 @@ int __meminit vmemmap_populate(unsigned long start, unsigned long end, int node,
>  void vmemmap_free(unsigned long start, unsigned long end,
>  		struct vmem_altmap *altmap)
>  {
> +#ifdef CONFIG_MEMORY_HOTPLUG
> +	/*
> +	 * FIXME: We should have called remove_pagetable(start, end, true).
> +	 * vmemmap and vmalloc virtual range might share intermediate kernel
> +	 * page table entries. Removing vmemmap range page table pages here
> +	 * can potentially conflict with a concurrent vmalloc() allocation.
> +	 *
> +	 * This is primarily because vmalloc() does not take init_mm ptl for
> +	 * the entire page table walk and it's modification. Instead it just
> +	 * takes the lock while allocating and installing page table pages
> +	 * via [p4d|pud|pmd|pte]_alloc(). A concurrently vanishing page table
> +	 * entry via memory hot remove can cause vmalloc() kernel page table
> +	 * walk pointers to be invalid on the fly which can cause corruption
> +	 * or worst, a crash.
> +	 *
> +	 * So free_empty_tables() gets called where vmalloc and vmemmap range
> +	 * do not overlap at any intermediate level kernel page table entry.
> +	 */
> +	unmap_hotplug_range(start, end, true);
> +	if (!vmalloc_vmemmap_overlap)
> +		free_empty_tables(start, end);
> +#endif
>  }
>  #endif	/* CONFIG_SPARSEMEM_VMEMMAP */

I wonder whether we could simply ignore the vmemmap freeing altogether,
just leave it around and not unmap it. This way, we could call
unmap_kernel_range() for removing the linear map and we save some code.

For the linear map, I think we use just above 2MB of tables for 1GB of
memory mapped (worst case with 4KB pages we need 512 pte pages). For
vmemmap we'd use slightly above 2MB for a 64GB hotplugged memory. Do we
expect such memory to be re-plugged again in the same range? If we do,
then I shouldn't even bother with removing the vmmemmap.

I don't fully understand the use-case for memory hotremove, so any
additional info would be useful to make a decision here.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
