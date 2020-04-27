Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 788A81BB223
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 01:46:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J+QDSwZ2qqA06MBgoNZsK7qYr5+3BJAaAOVCCE8feLs=; b=UbBvIy3TowBbX9
	5aINx88oQ5cYePdpngSHx1F0tfnG/pNPcOQYlE6KLtIna5fBA82F5kxKowwBHuz1QTPlIpRp39or4
	TAswcvychRmccAJakqlswSksvn1rqi9PQZRECocn4dEsaH3hZ+AU5+xRzDAAovqY0B42zqWTHdy1g
	A5nyQ18pBTJ4Toa7NlqmQyWYiNY8uscueTStWXE7utu8GrxLrT+9Ppy7Zfm9jJiTCx2datS9xgpJe
	iRMKR/VWC0RTBK4bDHua1lQ+eWgYSDddjD+K1CTuCIEoDM3AioqPMLluB4DxCkExFRs5y7j5HgSYs
	i9W/o6T8xlzpSlGqr2wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTDRh-000135-3R; Mon, 27 Apr 2020 23:45:53 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTDRY-00011V-EB
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 23:45:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1588031140;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=nwIFvSz2kGvMTFuz5rDRpT4BSTUSO/yU5bVRJ5mbMLk=;
 b=FHqdYR/QRhkf6RwyCJhwbE/RUK17oC7ohROBzL+Rd2qMeyueVluDdONhX6XkqoELKLj0nu
 Q4EG1Zh923WuenyMo9kt3T/Te9RNY4jfPFYLBnkRfdH2SvBDw0Qwa+wNMx0U0ninmWtd3k
 yaBY/2rffanWF4a8/ipczjbR4BEsWEg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-239-3LIp2cJjPdOmC7vAIE7Rag-1; Mon, 27 Apr 2020 19:45:38 -0400
X-MC-Unique: 3LIp2cJjPdOmC7vAIE7Rag-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E28DE107ACF4;
 Mon, 27 Apr 2020 23:45:36 +0000 (UTC)
Received: from localhost.localdomain (vpn2-54-127.bne.redhat.com
 [10.64.54.127])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 164A160638;
 Mon, 27 Apr 2020 23:45:34 +0000 (UTC)
Subject: Re: [PATCH] arm64/mm: Use phys_to_page() to access pgtable memory
To: Mark Rutland <mark.rutland@arm.com>
References: <20200424044854.15760-1-gshan@redhat.com>
 <20200424092208.GA1167@C02TD0UTHF1T.local>
From: Gavin Shan <gshan@redhat.com>
Message-ID: <a4ad069b-736b-d283-9768-86695eae1d72@redhat.com>
Date: Tue, 28 Apr 2020 09:45:32 +1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <20200424092208.GA1167@C02TD0UTHF1T.local>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_164544_698621_36A1F453 
X-CRM114-Status: GOOD (  18.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Reply-To: Gavin Shan <gshan@redhat.com>
Cc: catalin.marinas@arm.com, shan.gavin@gmail.com, will@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mark,

On 4/24/20 7:22 PM, Mark Rutland wrote:
> On Fri, Apr 24, 2020 at 02:48:54PM +1000, Gavin Shan wrote:
>> The macros {pgd, pud, pmd}_page() retrieves the page struct of the
>> corresponding page frame, which is reserved as page table. There
>> is already a macro (phys_to_page), defined in memory.h, to convert
>> the physical address to the page struct. So it's reasonable to
>> use that in pgtable.h.
>>
>> Signed-off-by: Gavin Shan <gshan@redhat.com>
> 
> It might be worth pointing out that phys_to_page() is defined as:
> 
> #define phys_to_page(phys)      (pfn_to_page(__phys_to_pfn(phys)))
> 
> ... so this is obviously equivalent.
> 
> Given that, and given we already explicitly include <asm/memory.h>, this
> looks like a nice cleanup to me.
> 
> With or without the commit message addition:
> 
> Reviewed-by: Mark Rutland <mark.rutland@arm.com>
> 
> Mark.
> 

Thanks for the comments. I will post v2 shortly, which has the improved
commit log and your reviewed-by.

Thanks,
Gavin

>> ---
>>   arch/arm64/include/asm/pgtable.h | 6 +++---
>>   1 file changed, 3 insertions(+), 3 deletions(-)
>>
>> diff --git a/arch/arm64/include/asm/pgtable.h b/arch/arm64/include/asm/pgtable.h
>> index 538c85e62f86..8c20e2bd6287 100644
>> --- a/arch/arm64/include/asm/pgtable.h
>> +++ b/arch/arm64/include/asm/pgtable.h
>> @@ -508,7 +508,7 @@ static inline void pte_unmap(pte_t *pte) { }
>>   #define pte_set_fixmap_offset(pmd, addr)	pte_set_fixmap(pte_offset_phys(pmd, addr))
>>   #define pte_clear_fixmap()		clear_fixmap(FIX_PTE)
>>   
>> -#define pmd_page(pmd)		pfn_to_page(__phys_to_pfn(__pmd_to_phys(pmd)))
>> +#define pmd_page(pmd)			phys_to_page(__pmd_to_phys(pmd))
>>   
>>   /* use ONLY for statically allocated translation tables */
>>   #define pte_offset_kimg(dir,addr)	((pte_t *)__phys_to_kimg(pte_offset_phys((dir), (addr))))
>> @@ -566,7 +566,7 @@ static inline phys_addr_t pud_page_paddr(pud_t pud)
>>   #define pmd_set_fixmap_offset(pud, addr)	pmd_set_fixmap(pmd_offset_phys(pud, addr))
>>   #define pmd_clear_fixmap()		clear_fixmap(FIX_PMD)
>>   
>> -#define pud_page(pud)		pfn_to_page(__phys_to_pfn(__pud_to_phys(pud)))
>> +#define pud_page(pud)			phys_to_page(__pud_to_phys(pud))
>>   
>>   /* use ONLY for statically allocated translation tables */
>>   #define pmd_offset_kimg(dir,addr)	((pmd_t *)__phys_to_kimg(pmd_offset_phys((dir), (addr))))
>> @@ -624,7 +624,7 @@ static inline phys_addr_t pgd_page_paddr(pgd_t pgd)
>>   #define pud_set_fixmap_offset(pgd, addr)	pud_set_fixmap(pud_offset_phys(pgd, addr))
>>   #define pud_clear_fixmap()		clear_fixmap(FIX_PUD)
>>   
>> -#define pgd_page(pgd)		pfn_to_page(__phys_to_pfn(__pgd_to_phys(pgd)))
>> +#define pgd_page(pgd)			phys_to_page(__pgd_to_phys(pgd))
>>   
>>   /* use ONLY for statically allocated translation tables */
>>   #define pud_offset_kimg(dir,addr)	((pud_t *)__phys_to_kimg(pud_offset_phys((dir), (addr))))
>> -- 
>> 2.23.0
>>
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
