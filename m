Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A919D36B14
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 06:44:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fc1ZI2Xymv+CZGUjncRhaWo2w1xB0Ux5FCpJ+nz+d0Y=; b=Y0xXC9aZoWuKVb
	B3YweiMNbUE7PtyjYkMM+zfY91WKmEtnkZWNH+Bh2BUC9GhsMKDnaQ14HwIiDgzi9yyKLtM4EuoL8
	xHIFsVfdpkdw5D+nyRaxsEoOgIGGyNAK0uthBCjkfHBLkSh0iymt0uayDIQDU/1R8I8Pd4ZDk5z44
	QvASRhNpy7luUWjaNUi5urtsgZC/Vyd7rWn5f5fVZAWKt9GMEyDH0fJasYtsYrLHuDAnRcRZeMdfx
	c61wrlJfIGKcEz1SAzWyKwrtavg4QHqhT7UMtHIFzpv03UIQBXIg01AIDLR/1jdUzHRTufoAySRB0
	2MpAhH9dtjpkG5eZVORg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYkG4-0004JY-47; Thu, 06 Jun 2019 04:44:12 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYkFw-0004J8-NM
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 04:44:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7015E80D;
 Wed,  5 Jun 2019 21:44:01 -0700 (PDT)
Received: from [10.162.43.122] (p8cg001049571a15.blr.arm.com [10.162.43.122])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 3F3273F690; Wed,  5 Jun 2019 21:43:58 -0700 (PDT)
Subject: Re: [PATCH V3 2/2] arm64/mm: Change offset base address in
 [pud|pmd]_free_[pmd|pte]_page()
To: Catalin Marinas <catalin.marinas@arm.com>
References: <1557377177-20695-1-git-send-email-anshuman.khandual@arm.com>
 <1557377177-20695-3-git-send-email-anshuman.khandual@arm.com>
 <20190604142405.GI6610@arrakis.emea.arm.com>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <922c80b9-ec5b-4e12-2253-230d58df570c@arm.com>
Date: Thu, 6 Jun 2019 10:14:15 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190604142405.GI6610@arrakis.emea.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_214404_768800_6FDA6F92 
X-CRM114-Status: GOOD (  19.61  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Will Deacon <will.deacon@arm.com>,
 linux-mm@kvack.org, James Morse <james.morse@arm.com>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 06/04/2019 07:54 PM, Catalin Marinas wrote:
> On Thu, May 09, 2019 at 10:16:17AM +0530, Anshuman Khandual wrote:
>> Pgtable page address can be fetched with [pmd|pte]_offset_[kernel] if input
>> address is PMD_SIZE or PTE_SIZE aligned. Input address is now guaranteed to
>> be aligned, hence fetched pgtable page address is always correct. But using
>> 0UL as offset base address has been a standard practice across platforms.
>> It also makes more sense as it isolates pgtable page address computation
>> from input virtual address alignment. This does not change functionality.
>>
>> Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
>> Cc: Catalin Marinas <catalin.marinas@arm.com>
>> Cc: Will Deacon <will.deacon@arm.com>
>> Cc: Mark Rutland <mark.rutland@arm.com>
>> Cc: James Morse <james.morse@arm.com>
>> Cc: Robin Murphy <robin.murphy@arm.com>
>> ---
>>  arch/arm64/mm/mmu.c | 6 +++---
>>  1 file changed, 3 insertions(+), 3 deletions(-)
>>
>> diff --git a/arch/arm64/mm/mmu.c b/arch/arm64/mm/mmu.c
>> index e97f018ff740..71bcb783aace 100644
>> --- a/arch/arm64/mm/mmu.c
>> +++ b/arch/arm64/mm/mmu.c
>> @@ -1005,7 +1005,7 @@ int pmd_free_pte_page(pmd_t *pmdp, unsigned long addr)
>>  		return 1;
>>  	}
>>  
>> -	table = pte_offset_kernel(pmdp, addr);
>> +	table = pte_offset_kernel(pmdp, 0UL);
>>  	pmd_clear(pmdp);
>>  	__flush_tlb_kernel_pgtable(addr);
>>  	pte_free_kernel(NULL, table);
>> @@ -1026,8 +1026,8 @@ int pud_free_pmd_page(pud_t *pudp, unsigned long addr)
>>  		return 1;
>>  	}
>>  
>> -	table = pmd_offset(pudp, addr);
>> -	pmdp = table;
>> +	table = pmd_offset(pudp, 0UL);
>> +	pmdp = pmd_offset(pudp, addr);
>>  	next = addr;
>>  	end = addr + PUD_SIZE;
>>  	do {
> 
> I have the same comment as last time:
> 
> https://lore.kernel.org/linux-arm-kernel/20190430161759.GI29799@arrakis.emea.arm.com/
> 
> I don't see why pmdp needs to be different from table. We get the
> pointer to a pmd page and we want to iterate over it to free the pte
> entries it contains. You can add a VM_WARN on addr alignment as in the
> previous version of the patch but pmdp is just an iterator over table.

Fair enough. I believe VM_WARN() is needed to check address alignment because
they are now guaranteed to be aligned because of the previous patch. I guess
we should probably drop this patch and consider only the previous one ?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
