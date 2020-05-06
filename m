Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B29931C6E41
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 12:22:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FVUoCFtKQu7/NRCJPtqUtLVx7SVjeIDul5bQSp5ZGBM=; b=ByW3wNevKCPcNg
	atM/EpE4w7faJgUi960B4tQqJAR4MY3/5F7YxMJcUmgG2g3vMc6nBengLLCSUaAKiokyYUkSvDC55
	j58p6hHeFnXlu3KhFhwT4ILraMqYz2pMf0K5P7RsAdDOX9YeebYo9BtdidelOVjuyYHAPR09AMntK
	dAmg3Bj97t8owiq02SilVWvW2gkvokTde7/Frw09B9MkCpFpVqkeO9J7ltxsTm6goph9i+Yrjn8km
	wllvbjfIXulrhcEtcBO/X15Iyf1II36ccbPYxLjflKWbyj363tDutYbN4Gw0yIGteg3CL1b9eNW8F
	+6cgi6RAWTs1TPg57L7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWHC2-00034M-DD; Wed, 06 May 2020 10:22:22 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWHBv-00033v-N8
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 10:22:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 239E730E;
 Wed,  6 May 2020 03:22:15 -0700 (PDT)
Received: from [10.163.71.196] (unknown [10.163.71.196])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E9A7E3F71F;
 Wed,  6 May 2020 03:22:12 -0700 (PDT)
Subject: Re: [PATCH V2 1/3] arm64/mm: Drop __HAVE_ARCH_HUGE_PTEP_GET
To: Will Deacon <will@kernel.org>
References: <1588745534-24418-1-git-send-email-anshuman.khandual@arm.com>
 <1588745534-24418-2-git-send-email-anshuman.khandual@arm.com>
 <20200506074315.GD7021@willie-the-truck>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <14911279-f800-a781-a4fd-de43215aa909@arm.com>
Date: Wed, 6 May 2020 15:51:42 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20200506074315.GD7021@willie-the-truck>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_032215_795967_9239A6CE 
X-CRM114-Status: GOOD (  17.27  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-mm@kvack.org, akpm@linux-foundation.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Catalin Marinas <catalin.marinas@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 05/06/2020 01:13 PM, Will Deacon wrote:
> On Wed, May 06, 2020 at 11:42:12AM +0530, Anshuman Khandual wrote:
>> Platform specific huge_ptep_get() is required only when fetching the huge
>> PTE involves more than just dereferencing the page table pointer. This is
>> not the case on arm64 platform. Hence huge_ptep_pte() can be dropped along
>> with it's __HAVE_ARCH_HUGE_PTEP_GET subscription.
>>
>> Cc: Catalin Marinas <catalin.marinas@arm.com>
>> Cc: Will Deacon <will@kernel.org>
>> Cc: Andrew Morton <akpm@linux-foundation.org>
>> Cc: linux-arm-kernel@lists.infradead.org
>> Cc: linux-mm@kvack.org
>> Cc: linux-kernel@vger.kernel.org
>> Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
>> ---
>>  arch/arm64/include/asm/hugetlb.h | 6 ------
>>  1 file changed, 6 deletions(-)
>>
>> diff --git a/arch/arm64/include/asm/hugetlb.h b/arch/arm64/include/asm/hugetlb.h
>> index 2eb6c234d594..b88878ddc88b 100644
>> --- a/arch/arm64/include/asm/hugetlb.h
>> +++ b/arch/arm64/include/asm/hugetlb.h
>> @@ -17,12 +17,6 @@
>>  extern bool arch_hugetlb_migration_supported(struct hstate *h);
>>  #endif
>>  
>> -#define __HAVE_ARCH_HUGE_PTEP_GET
>> -static inline pte_t huge_ptep_get(pte_t *ptep)
>> -{
>> -	return READ_ONCE(*ptep);
>> -}
> 
> Hmm, I'm nervous about dropping the READ_ONCE() here. We added them after
> running into page-table issues with THP [1] and it's really important to
> use them consistently to avoid hitting that again.
> 
> If the generic code used READ_ONCE(), I'd be happy to switch to it.

Sure, will add READ_ONCE() in the generic huge_ptep_get(). AFAICS it should
not cause any problem for other platforms (but let me know otherwise).

> 
> Will
> 
> [1] https://lore.kernel.org/lkml/1506527369-19535-1-git-send-email-will.deacon@arm.com/
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
