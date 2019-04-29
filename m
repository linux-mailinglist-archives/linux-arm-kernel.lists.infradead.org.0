Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23DC1E506
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 16:44:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E/1+MhJ3AE1kGfi/EWrEz+R1ovQQl1xN0sBNo0VcjSo=; b=f1CIPKMmQEwOJr
	M5OsA6cOYnrbQeJNs5eCuz1AnJkIL62RvFWySL/X6cQ4F13Xdwvrv028D+hPO0+Xg9NN8Kgtjnh/j
	c6pHmGs8PIaNU9uDQmJjPFKBWMQhpKmShqP+X813HQY8Db9LUMW4I5xzFhd/E+2cg05bVKxnG7cZs
	n+VSZ9FMDbX+oUCizjXAzht4HXW2y4Lr68kqVffqdE2po1w+6/DMDbHMfF9tG4Sx9y5qkwOLdtahM
	hPA2GvJl6ylp6d4aTuoRZRXT0xZ6Zd0fOzBvy8FjyWI8D/CjEvNzMzDB6vo5TsIOfiYrWMaAE5jLj
	xOXEXb+8YUe7nUqo2XOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL7W7-00064V-DM; Mon, 29 Apr 2019 14:44:27 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL7Vz-000648-KE
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 14:44:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3A4CB80D;
 Mon, 29 Apr 2019 07:44:19 -0700 (PDT)
Received: from [10.163.1.85] (unknown [10.163.1.85])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B97A03F5C1;
 Mon, 29 Apr 2019 07:44:17 -0700 (PDT)
Subject: Re: [PATCH] arm64/mm: Fix pgtable page offset address in
 [pud|pmd]_free_[pmd|pte]_page
To: Catalin Marinas <catalin.marinas@arm.com>
References: <1556509914-21138-1-git-send-email-anshuman.khandual@arm.com>
 <20190429112329.GF8742@arrakis.emea.arm.com>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <ec444119-810e-0000-a3bb-d00ee1f22fad@arm.com>
Date: Mon, 29 Apr 2019 20:14:22 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190429112329.GF8742@arrakis.emea.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_074419_671987_BAB85896 
X-CRM114-Status: GOOD (  19.39  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, will.deacon@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 04/29/2019 04:53 PM, Catalin Marinas wrote:
> On Mon, Apr 29, 2019 at 09:21:54AM +0530, Anshuman Khandual wrote:
>> The pgtable page address can be fetched with [pmd|pte]_offset_[kernel] if
>> the input address is either PMD_SIZE or PTE_SIZE aligned. Though incoming
>> input addresses tend to be aligned to the required size (PMD_SIZE|PTE_SIZE)
>> which is the reason why there were no reported problems earlier. But it is
>> not correct. However 0UL as input address will guarantee that the fetched
>> pgtable page address is always correct without any possible skid. While at
>> this just warn once when the addresses are not aligned.
> 
> I'm fine with using 0UL but did you actually hit any problem to be worth
> adding a WARN_ON?

No I did not hit any problem. But the higher level function (ioremap_page_range)
from which this gets called does not check the alignment for incoming address
range. As it can be called from outside of core MM like drivers we cannot even
correct the alignment without changing the range which would risk potential
undefined behavior. Hence just warn once and then move on to do what ever has
been asked by the caller.

> 
>> Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
>> ---
>>  arch/arm64/mm/mmu.c | 8 +++++---
>>  1 file changed, 5 insertions(+), 3 deletions(-)
>>
>> diff --git a/arch/arm64/mm/mmu.c b/arch/arm64/mm/mmu.c
>> index e97f018ff740..17af49585fb2 100644
>> --- a/arch/arm64/mm/mmu.c
>> +++ b/arch/arm64/mm/mmu.c
>> @@ -1005,7 +1005,8 @@ int pmd_free_pte_page(pmd_t *pmdp, unsigned long addr)
>>  		return 1;
>>  	}
>>  
>> -	table = pte_offset_kernel(pmdp, addr);
>> +	WARN_ON_ONCE(!IS_ALIGNED(addr, PMD_SIZE));
> 
> I'd use VM_WARN_ON_ONCE() as we do, for example, in set_pte_at().

Did you mean VM_WARN_ONCE() instead which is in set_pte_at(). Sure will change it.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
