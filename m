Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EEA254B06E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 05:35:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:MIME-Version:In-Reply-To:
	References:To:Subject:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D+Q2Y9mmN3DJ5BtjZav23dwmBqA6qVbVrhdTuFqn7qo=; b=t49ugEM+QzeAlF
	dwIPECIppgAXQOavkdhwPFMEvmy56lzPXQUM2GjfNE/BBJR1Y1Fi8mPGzimUSlkf/tLgh+Qacv+fo
	ApNzVTl8lvdlCwxys9lZzT/WShCCcvWunrO/RqsOsFXH2mWBntbEBLnxsUsqc1rX4Reo+mIGV5zqn
	ZN/QBUGi2nfvjduKg3vDwx9zg0Va+dIXBdFz2eIrGu1nb3AtzVAJGMaHUdl0a5aYqmDyV+J5VmeLl
	hJJfH+++CCBzr7WNVF5BYSWQ6fE9+CU/8XicQyq/q4fmJM53lDJY9yTWMeLNo/4KSpcmQYp8FJXDL
	kXwsnGQynGxo87Aygl1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdRNQ-0004Wq-1R; Wed, 19 Jun 2019 03:35:12 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdRN6-0004W5-QR
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 03:34:54 +0000
Received: by mail-pg1-x543.google.com with SMTP id f25so8809649pgv.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 20:34:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:subject:to:cc:references:in-reply-to:mime-version
 :user-agent:message-id:content-transfer-encoding;
 bh=aQYIiezoadkAUNJ9HxNcBE/gtfRYRxYn6A8Q2hhZFGI=;
 b=myoBF+ds9/I86aN2kC3Tp5vxrpURD4189UJaDRoG28R5cKBh7HSn/fj4i6nMB4L8/M
 7KQ/QjrXbuvq5QWQmx8tPLIFP7SCmcNLFOYvasChY39PAMEHyUpd/YzuYZRbpwsbWzqt
 7RygsRn1jDob+6UmK08r9uQvtLymAd5+9vwd9sZ2lswN3Hr7W5XwkUrleW1RsF9fW+zA
 jUucv1SmSA6HSqb4ZXxYgSu8+FbAduS5YKSfQxxFW1+xP0BXoeDhPPSR1y6RtwPfwqw9
 ItTD0gCZu1Y6PzP2n8OSoDjE62/gxLPku5W+m+nLs44wjN181gfucyuzwGMUSBbiF1jf
 7l8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:subject:to:cc:references:in-reply-to
 :mime-version:user-agent:message-id:content-transfer-encoding;
 bh=aQYIiezoadkAUNJ9HxNcBE/gtfRYRxYn6A8Q2hhZFGI=;
 b=HMQ6C9FwXMu6TpyovbYnsptlXMD1bjCo/CLCRZQuUyo50sSlmzPFp0OybIjA7kTdRS
 AnVGyivNMNvhaMLIALkkoTHp3KOR0LGSI/Nox3qXr12a+jzgwWbFSY0T1tuSA2s5pZtx
 EV/Tf2AqF6naE8V0awGXE13K3NwSeYb4MfIYB0uVwp7uWmxq7RjS7oTGV72Fvl4JITQq
 UqeqLJrvsemPUOL+ejXKZ19/Smt/jJcOSDkn7zLW+24PlNpRUnaopy+Epvs5z/xkjqX4
 zDN16p6eCrYD2hCjIURAQxRH5MMkKmaI29sxkKyir1oHA0Br51qgHPLlYzhE1ZPzRoIN
 K44Q==
X-Gm-Message-State: APjAAAVfDNEnvvCxOH1CcQyXKzNtVcpqqKD/t43SjRrFWfd7ppbr+Iao
 UpaP4+lqSu8jdhkQj4Ys56w=
X-Google-Smtp-Source: APXvYqxRH0ZwHGLASQnJ41JHZYuDzVHzMWanDuSc5Jjtkv5qvkIM5gFElRTcgtkxS+8l7SMWkPuKmw==
X-Received: by 2002:a17:90a:24ac:: with SMTP id
 i41mr8667378pje.124.1560915291392; 
 Tue, 18 Jun 2019 20:34:51 -0700 (PDT)
Received: from localhost (193-116-92-108.tpgi.com.au. [193.116.92.108])
 by smtp.gmail.com with ESMTPSA id r6sm164084pji.0.2019.06.18.20.34.49
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 18 Jun 2019 20:34:50 -0700 (PDT)
Date: Wed, 19 Jun 2019 13:29:46 +1000
From: Nicholas Piggin <npiggin@gmail.com>
Subject: Re: [PATCH 4/4] mm/vmalloc: Hugepage vmalloc mappings
To: Anshuman Khandual <anshuman.khandual@arm.com>, linux-mm@kvack.org
References: <20190610043838.27916-1-npiggin@gmail.com>
 <20190610043838.27916-4-npiggin@gmail.com>
 <a3b2dcb1-148e-b2f1-e181-92c16d868bc9@arm.com>
 <1560210095.fpemv3ultp.astroid@bobo.none>
 <2bd573d5-84ab-4b27-2126-863681ca3ef4@arm.com>
In-Reply-To: <2bd573d5-84ab-4b27-2126-863681ca3ef4@arm.com>
MIME-Version: 1.0
User-Agent: astroid/0.14.0 (https://github.com/astroidmail/astroid)
Message-Id: <1560913953.8b6zker0t3.astroid@bobo.none>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_203452_889066_1E6610DA 
X-CRM114-Status: GOOD (  31.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (npiggin[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org,
 Ard Biesheuvel <Ard.Biesheuvel@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Anshuman Khandual's on June 11, 2019 4:59 pm:
> On 06/11/2019 05:46 AM, Nicholas Piggin wrote:
>> Anshuman Khandual's on June 10, 2019 6:53 pm:
>>> On 06/10/2019 10:08 AM, Nicholas Piggin wrote:
>>>> For platforms that define HAVE_ARCH_HUGE_VMAP, have vmap allow vmalloc to
>>>> allocate huge pages and map them.
>>>
>>> IIUC that extends HAVE_ARCH_HUGE_VMAP from iormap to vmalloc. 
>>>
>>>>
>>>> This brings dTLB misses for linux kernel tree `git diff` from 45,000 to
>>>> 8,000 on a Kaby Lake KVM guest with 8MB dentry hash and mitigations=off
>>>> (performance is in the noise, under 1% difference, page tables are likely
>>>> to be well cached for this workload). Similar numbers are seen on POWER9.
>>>
>>> Sure will try this on arm64.
>>>
>>>>
>>>> Signed-off-by: Nicholas Piggin <npiggin@gmail.com>
>>>> ---
>>>>  include/asm-generic/4level-fixup.h |   1 +
>>>>  include/asm-generic/5level-fixup.h |   1 +
>>>>  include/linux/vmalloc.h            |   1 +
>>>>  mm/vmalloc.c                       | 132 +++++++++++++++++++++++------
>>>>  4 files changed, 107 insertions(+), 28 deletions(-)
>>>>
>>>> diff --git a/include/asm-generic/4level-fixup.h b/include/asm-generic/4level-fixup.h
>>>> index e3667c9a33a5..3cc65a4dd093 100644
>>>> --- a/include/asm-generic/4level-fixup.h
>>>> +++ b/include/asm-generic/4level-fixup.h
>>>> @@ -20,6 +20,7 @@
>>>>  #define pud_none(pud)			0
>>>>  #define pud_bad(pud)			0
>>>>  #define pud_present(pud)		1
>>>> +#define pud_large(pud)			0
>>>>  #define pud_ERROR(pud)			do { } while (0)
>>>>  #define pud_clear(pud)			pgd_clear(pud)
>>>>  #define pud_val(pud)			pgd_val(pud)
>>>> diff --git a/include/asm-generic/5level-fixup.h b/include/asm-generic/5level-fixup.h
>>>> index bb6cb347018c..c4377db09a4f 100644
>>>> --- a/include/asm-generic/5level-fixup.h
>>>> +++ b/include/asm-generic/5level-fixup.h
>>>> @@ -22,6 +22,7 @@
>>>>  #define p4d_none(p4d)			0
>>>>  #define p4d_bad(p4d)			0
>>>>  #define p4d_present(p4d)		1
>>>> +#define p4d_large(p4d)			0
>>>>  #define p4d_ERROR(p4d)			do { } while (0)
>>>>  #define p4d_clear(p4d)			pgd_clear(p4d)
>>>>  #define p4d_val(p4d)			pgd_val(p4d)
>>>
>>> Both of these are required from vmalloc_to_page() which as per a later comment
>>> should be part of a prerequisite patch before this series.
>> 
>> I'm not sure what you mean. This patch is where they get used.
> 
> In case you move out vmalloc_to_page() changes to a separate patch.

Sorry for the delay in reply.

I'll split this and see if we might be able to get it into next
merge window. I can have another try at the huge vmalloc patch
after that.

> 
>> 
>> Possibly I could split this and the vmalloc_to_page change out. I'll
>> consider it.
>> 
>>>> diff --git a/include/linux/vmalloc.h b/include/linux/vmalloc.h
>>>> index 812bea5866d6..4c92dc608928 100644
>>>> --- a/include/linux/vmalloc.h
>>>> +++ b/include/linux/vmalloc.h
>>>> @@ -42,6 +42,7 @@ struct vm_struct {
>>>>  	unsigned long		size;
>>>>  	unsigned long		flags;
>>>>  	struct page		**pages;
>>>> +	unsigned int		page_shift;
>>>
>>> So the entire vm_struct will be mapped with a single page_shift. It cannot have
>>> mix and match mappings with PAGE_SIZE, PMD_SIZE, PUD_SIZE etc in case the
>>> allocation fails for larger ones, falling back etc what over other reasons.
>> 
>> For now, yes. I have a bit of follow up work to improve that and make
>> it able to fall back, but it's a bit more churn and not a significant
>> benefit just yet because there are not a lot of very large vmallocs
>> (except the early hashes which can be satisfied with large allocs).
> 
> Right but it will make this new feature complete like ioremap which logically
> supports till P4D (though AFAICT not used). If there are no actual vmalloc
> requests that large it is fine. Allocation attempts will start from the page
> table level depending on the requested size. It is better to have PUD/P4D
> considerations now rather than trying to after fit it later.

I've considered them, which is why e.g., a shift gets passed around 
rather than a bool for small/large.

I won't over complicate this page array data structure for something
that may never be supported though. I think we may actually be better
moving away from it in the vmalloc code and just referencing pages
from the page tables, so it's just something we can cross when we get
to it.

>>> Also should not we check for the alignment of the range [start...end] with
>>> respect to (1UL << [PAGE_SHIFT + page_shift]).
>> 
>> The caller should if it specifies large page. Could check and -EINVAL
>> for incorrect alignment.
> 
> That might be a good check here.

Will add.

>>>> @@ -474,27 +510,38 @@ struct page *vmalloc_to_page(const void *vmalloc_addr)
>>>>  	 */
>>>>  	VIRTUAL_BUG_ON(!is_vmalloc_or_module_addr(vmalloc_addr));
>>>>  
>>>> +	pgd = pgd_offset_k(addr);
>>>>  	if (pgd_none(*pgd))
>>>>  		return NULL;
>>>> +
>>>
>>> Small nit. Stray line here.
>>>
>>> 'pgd' related changes here seem to be just cleanups and should not part of this patch.
>> 
>> Yeah I figure it doesn't matter to make small changes close by, but
>> maybe that's more frowned upon now for git blame?
> 
> Right. But I guess it should be okay if you can make vmalloc_to_page()
> changes as a separate patch. This patch which adds a new feature should
> not have any clean ups IMHO.

Well... that alone would be a new feature too. Or could be considered
a bug fix, which makes it even more important not to contain
superfluous changes.

Is there a real prohibition on small slightly peripheral tidying
like this? I don't think I'd bother sending a lone patch just to
change a couple lines of spacing.

>>>>  	p4d = p4d_offset(pgd, addr);
>>>>  	if (p4d_none(*p4d))
>>>>  		return NULL;
>>>> -	pud = pud_offset(p4d, addr);
>>>> +#ifdef CONFIG_HAVE_ARCH_HUGE_VMAP
>>>> +	if (p4d_large(*p4d))
>>>> +		return p4d_page(*p4d) + ((addr & ~P4D_MASK) >> PAGE_SHIFT);
>>>> +#endif
>>>> +	if (WARN_ON_ONCE(p4d_bad(*p4d)))
>>>> +		return NULL;
>>>>  
>>>> -	/*
>>>> -	 * Don't dereference bad PUD or PMD (below) entries. This will also
>>>> -	 * identify huge mappings, which we may encounter on architectures
>>>> -	 * that define CONFIG_HAVE_ARCH_HUGE_VMAP=y. Such regions will be
>>>> -	 * identified as vmalloc addresses by is_vmalloc_addr(), but are
>>>> -	 * not [unambiguously] associated with a struct page, so there is
>>>> -	 * no correct value to return for them.
>>>> -	 */
>>>
>>> What changed the situation so that we could return struct page for a huge
>>> mapping now ?
>> 
>> For the PUD case? Nothing changed, per se, we I just calculate the
>> correct struct page now, so I may return it.
> 
> I was just curious what prevented this earlier (before this series). The
> comment here and commit message which added this change making me wonder
> what was the reason for not doing this earlier.  

Just not implemented I guess.

>>> AFAICT even after this patch, PUD/P4D level huge pages can only
>>> be created with ioremap_page_range() not with vmalloc() which creates PMD
>>> sized mappings only. Hence if it's okay to dereference struct page of a huge
>>> mapping (not withstanding the comment here) it should be part of an earlier
>>> patch fixing it first for existing ioremap_page_range() huge mappings.
>> 
>> Possibly yes, we can consider 029c54b095995 to be a band-aid for huge
>> vmaps which is fixed properly by this change, in which case it could
>> make sense to break this into its own patch.
> 
> On arm64 [pud|pmd]_bad() calls out huge mappings at PUD or PMD. I still wonder what
> Ard (copied him now) meant by "not [unambiguously] associated with a struct page".
> He also mentioned about compound pages in the commit message. Anyways these makes
> sense (fetching the struct page) unless I am missing something. But should be part
> of a separate patch.

I do somewhat see the intention of the commit message, but if we
consider the vmap/iomap layer's choice of page size as transparent to
the caller, and the vmalloc_to_page API has always been specifically
interested in the PAGE_SIZE struct page, then my patch is fine and
introduces no problems. It restores the API functionality to be the
same regardless of whether small or large pages were used for the
actual mapping.

>>>> +	if (IS_ENABLED(CONFIG_HAVE_ARCH_HUGE_VMAP)) {
>>>> +		unsigned long size_per_node;
>>>> +
>>>> +		size_per_node = size;
>>>> +		if (node == NUMA_NO_NODE)
>>>> +			size_per_node /= num_online_nodes();
>>>> +		if (size_per_node >= PMD_SIZE)
>>>> +			shift = PMD_SHIFT;
>>>
>>> There are two problems here.
>>>
>>> 1. Should not size_per_node be aligned with PMD_SIZE to avoid wasting memory later
>>>    because of alignment upwards (making it worse for NUMA_NO_NODE)
>> 
>> I'm not sure what you mean, it's just a heuristic to check for node
>> interleaving, and use small pages if large can not interleave well.
>> 
>>> 2. What about PUD_SIZE which is not considered here at all
>> 
>> Yeah, not doing PUD pages at all. It would be pretty trivial to add 
>> after PMD is working, but would it actually get used anywhere?
> 
> But it should make this feature logically complete. Allocation attempts can start
> at right pgtable level depending on the requested size. I dont think it will have
> any performance impact or something.

I disagree that's necessary or desirable for PMD support here. Sure
an arch might have PUD size within MAX_ORDER and implement that, but
it's just something that can be implemented when the time comes.

There's nothing about this patch that hinders being extendedto PUD
level I just won't add code that's not used and I can't test.

Thanks for the detailed review, I appreciate it.

Thanks,
Nick

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
