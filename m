Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 861952AE8F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 08:23:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PcrYWGpTfK+PP5GFgfcbj+z8hkBRXwO3s+iA2n6JA5w=; b=ggKpfRonAPbvBY
	XzDMC/ZsKrTg03kVHzErBQ9gtHJ+Wi5ZSjh5VVbm4XOS5rfprzAltDuvMogEpdkD3vMYwYboBBCoZ
	nADXRP4B8POBGD46P+jZDQAbzoSoPc0VjUhGUdHUawvZZOeNG/v84KzV50671QHizJlJIF5ztDjKb
	ROXgG18+VwVW28mVBdzegFomm/ChaTePALqeQ0nEPaaFys4/AnbWrLPRiTy2qKzHg2YrMfBldqXlx
	5uyvEPXxUZYqJFMFniqCUVO3/M/Uvme8GiYwgQ7h+IWMsgM7rMWVW09gihYTp9XNbIHWqG6Odv9NS
	N6tajegWx+CaIkTtRtAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hV92M-0004S1-UA; Mon, 27 May 2019 06:23:10 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hV92G-0004Rf-VQ
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 06:23:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CDB861688;
 Sun, 26 May 2019 23:23:03 -0700 (PDT)
Received: from [10.162.40.17] (p8cg001049571a15.blr.arm.com [10.162.40.17])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 794233F59C;
 Sun, 26 May 2019 23:23:01 -0700 (PDT)
Subject: Re: [PATCH v3 4/4] arm64: mm: Implement pte_devmap support
To: Will Deacon <will.deacon@arm.com>, Robin Murphy <robin.murphy@arm.com>
References: <cover.1558547956.git.robin.murphy@arm.com>
 <817d92886fc3b33bcbf6e105ee83a74babb3a5aa.1558547956.git.robin.murphy@arm.com>
 <20190524180805.GA9697@fuggles.cambridge.arm.com>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <b94b23a7-4e6f-7787-aaa8-3c2d355fad03@arm.com>
Date: Mon, 27 May 2019 11:53:13 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190524180805.GA9697@fuggles.cambridge.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_232305_018320_02B53C82 
X-CRM114-Status: GOOD (  14.86  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-mm@kvack.org, akpm@linux-foundation.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, catalin.marinas@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 05/24/2019 11:38 PM, Will Deacon wrote:
> On Thu, May 23, 2019 at 04:03:16PM +0100, Robin Murphy wrote:
>> diff --git a/arch/arm64/include/asm/pgtable.h b/arch/arm64/include/asm/pgtable.h
>> index 2c41b04708fe..a6378625d47c 100644
>> --- a/arch/arm64/include/asm/pgtable.h
>> +++ b/arch/arm64/include/asm/pgtable.h
>> @@ -90,6 +90,7 @@ extern unsigned long empty_zero_page[PAGE_SIZE / sizeof(unsigned long)];
>>  #define pte_write(pte)		(!!(pte_val(pte) & PTE_WRITE))
>>  #define pte_user_exec(pte)	(!(pte_val(pte) & PTE_UXN))
>>  #define pte_cont(pte)		(!!(pte_val(pte) & PTE_CONT))
>> +#define pte_devmap(pte)		(!!(pte_val(pte) & PTE_DEVMAP))
>>  
>>  #define pte_cont_addr_end(addr, end)						\
>>  ({	unsigned long __boundary = ((addr) + CONT_PTE_SIZE) & CONT_PTE_MASK;	\
>> @@ -217,6 +218,11 @@ static inline pmd_t pmd_mkcont(pmd_t pmd)
>>  	return __pmd(pmd_val(pmd) | PMD_SECT_CONT);
>>  }
>>  
>> +static inline pte_t pte_mkdevmap(pte_t pte)
>> +{
>> +	return set_pte_bit(pte, __pgprot(PTE_DEVMAP));
>> +}
>> +
>>  static inline void set_pte(pte_t *ptep, pte_t pte)
>>  {
>>  	WRITE_ONCE(*ptep, pte);
>> @@ -381,6 +387,9 @@ static inline int pmd_protnone(pmd_t pmd)
>>  
>>  #define pmd_mkhuge(pmd)		(__pmd(pmd_val(pmd) & ~PMD_TABLE_BIT))
>>  
>> +#define pmd_devmap(pmd)		pte_devmap(pmd_pte(pmd))
>> +#define pmd_mkdevmap(pmd)	pte_pmd(pte_mkdevmap(pmd_pte(pmd)))
>> +
>>  #define __pmd_to_phys(pmd)	__pte_to_phys(pmd_pte(pmd))
>>  #define __phys_to_pmd_val(phys)	__phys_to_pte_val(phys)
>>  #define pmd_pfn(pmd)		((__pmd_to_phys(pmd) & PMD_MASK) >> PAGE_SHIFT)
>> @@ -537,6 +546,11 @@ static inline phys_addr_t pud_page_paddr(pud_t pud)
>>  	return __pud_to_phys(pud);
>>  }
>>  
>> +static inline int pud_devmap(pud_t pud)
>> +{
>> +	return 0;
>> +}
>> +
>>  /* Find an entry in the second-level page table. */
>>  #define pmd_index(addr)		(((addr) >> PMD_SHIFT) & (PTRS_PER_PMD - 1))
>>  
>> @@ -624,6 +638,11 @@ static inline phys_addr_t pgd_page_paddr(pgd_t pgd)
>>  
>>  #define pgd_ERROR(pgd)		__pgd_error(__FILE__, __LINE__, pgd_val(pgd))
>>  
>> +static inline int pgd_devmap(pgd_t pgd)
>> +{
>> +	return 0;
>> +}
> 
> I think you need to guard this and pXd_devmap() with
> CONFIG_TRANSPARENT_HUGEPAGE, otherwise you'll conflict with the dummy
> definitions in mm.h and the build will fail.

Just curious why pgd_devmap() also needs to be wrapped in TRANSPARENT_HUGEPAGE
config (or use this dummy otherwise). IIUC in case of DAX mappings there can
never be a huge mapping at PGD level. It only supports PMD or PUD based ones.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
