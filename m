Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B61C57D37B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 05:02:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z05AQyju476E3tLK0pLeQdfm6c1CPoUukwniF52k8H0=; b=TcUH1UdM8N6bNr
	DNqJt5n2IdVfV1xSZsB6m1lbAXx0PHgp65siNNOC7dUE95Fi2sK7hg1q22mZszHhnho0LaxmAZcln
	5FU4QVqryoFDKFnE8QeHFWce9QTFWHpvxnt4giumwpsjMramwBsPaQlSMg7OP0VD0WtERRr+CaPEg
	bzuMPeUl8bexcmD1G9fSAgQ8bQnJEGOjBnJ52wfsaEc0j5/vswIKf5Xla6Kj1H7rgWTbkpckMzciE
	cckeca0a5VNBU5pP/NacHo4QleHTTiaGrnsL9nhpSVGjInSvctv66DTpsPVm549E1Atk46c0GHdIH
	ZRcAA08KBQi6SR7ehEEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht1Mf-0000mp-VJ; Thu, 01 Aug 2019 03:02:49 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1ht1MZ-0000m5-4V
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 03:02:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 36AED344;
 Wed, 31 Jul 2019 20:02:37 -0700 (PDT)
Received: from [10.163.1.81] (unknown [10.163.1.81])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A2A7B3F575;
 Wed, 31 Jul 2019 20:02:33 -0700 (PDT)
From: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [RFC 2/2] arm64/mm: Enable device memory allocation and free for
 vmemmap mapping
To: Will Deacon <will@kernel.org>
References: <1561697083-7329-1-git-send-email-anshuman.khandual@arm.com>
 <1561697083-7329-3-git-send-email-anshuman.khandual@arm.com>
 <20190731161103.kqv3v2xlq4vnyjhp@willie-the-truck>
Message-ID: <349fb6e2-f9f1-c45a-e512-4ac253e2fd3d@arm.com>
Date: Thu, 1 Aug 2019 08:33:09 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190731161103.kqv3v2xlq4vnyjhp@willie-the-truck>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_200243_268059_1B37FA07 
X-CRM114-Status: GOOD (  17.42  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 07/31/2019 09:41 PM, Will Deacon wrote:
> On Fri, Jun 28, 2019 at 10:14:43AM +0530, Anshuman Khandual wrote:
>> This enables vmemmap_populate() and vmemmap_free() functions to incorporate
>> struct vmem_altmap based device memory allocation and free requests. With
>> this device memory with specific atlmap configuration can be hot plugged
>> and hot removed as ZONE_DEVICE memory on arm64 platforms.
>>
>> Cc: Catalin Marinas <catalin.marinas@arm.com>
>> Cc: Will Deacon <will.deacon@arm.com>
>> Cc: Mark Rutland <mark.rutland@arm.com>
>> Cc: linux-arm-kernel@lists.infradead.org
>> Cc: linux-kernel@vger.kernel.org
>>
>> Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
>> ---
>>  arch/arm64/mm/mmu.c | 57 ++++++++++++++++++++++++++++++++++-------------------
>>  1 file changed, 37 insertions(+), 20 deletions(-)
>>
>> diff --git a/arch/arm64/mm/mmu.c b/arch/arm64/mm/mmu.c
>> index 39e18d1..8867bbd 100644
>> --- a/arch/arm64/mm/mmu.c
>> +++ b/arch/arm64/mm/mmu.c
>> @@ -735,15 +735,26 @@ int kern_addr_valid(unsigned long addr)
>>  }
>>  
>>  #ifdef CONFIG_MEMORY_HOTPLUG
>> -static void free_hotplug_page_range(struct page *page, size_t size)
>> +static void free_hotplug_page_range(struct page *page, size_t size,
>> +				    struct vmem_altmap *altmap)
>>  {
>> -	WARN_ON(!page || PageReserved(page));
>> -	free_pages((unsigned long)page_address(page), get_order(size));
>> +	if (altmap) {
>> +		/*
>> +		 * vmemmap_populate() creates vmemmap mapping either at pte
>> +		 * or pmd level. Unmapping request at any other level would
>> +		 * be a problem.
>> +		 */
>> +		WARN_ON((size != PAGE_SIZE) && (size != PMD_SIZE));
>> +		vmem_altmap_free(altmap, size >> PAGE_SHIFT);
>> +	} else {
>> +		WARN_ON(!page || PageReserved(page));
>> +		free_pages((unsigned long)page_address(page), get_order(size));
>> +	}
>>  }
>>  
>>  static void free_hotplug_pgtable_page(struct page *page)
>>  {
>> -	free_hotplug_page_range(page, PAGE_SIZE);
>> +	free_hotplug_page_range(page, PAGE_SIZE, NULL);
>>  }
>>  
>>  static void free_pte_table(pmd_t *pmdp, unsigned long addr)
>> @@ -807,7 +818,8 @@ static void free_pud_table(pgd_t *pgdp, unsigned long addr)
>>  }
>>  
>>  static void unmap_hotplug_pte_range(pmd_t *pmdp, unsigned long addr,
>> -				    unsigned long end, bool sparse_vmap)
>> +				    unsigned long end, bool sparse_vmap,
>> +				    struct vmem_altmap *altmap)
> 
> Do you still need the sparse_vmap parameter, or can you just pass a NULL
> altmap pointer when sparse_vmap is false?

Yes, we will still require sparse_vmap parameter because vmemmap mapping
does not necessarily be created only for ZONE_DEVICE range with an altmap.
vmemmap can still be present with altmap as NULL (regular memory and device
memory without altmap) in which cases it will not be possible to
differentiate between linear and vmemmap mapping.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
