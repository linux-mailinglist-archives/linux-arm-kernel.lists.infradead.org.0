Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8C6E1B1F8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 10:37:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NhgslksDq7DDgDMIcasnxhVze+nMf1qUeIyl6nRo/S8=; b=U3AdAANhgI8zCY
	91CagjMsvoGvE1zAnHtmgiqMzXR18+64KjGvr+1Z0amUClrPDaPtGKUxsi9Arf7w7acqMUeekZtJ2
	TOksyMUeAuoC/q0SWf+gFCKbYlq9J3wqCNnrS+yZ1+1XQC9u1BD01XvEX2mVw0T+6GRIAhkj7b72j
	JMUvFhZ4roN5NHP/AW8laIDcgl9nc8O9IE53KamTpEuvqmooxjWm+V4/s0CbMFLr95rUFtlROK5Mo
	OSKKAZQ1Py3saVhe3fBxBJjNYl9HgPBtk6iSNpjx6F44NiUBgsi4EoSYAnic0IJkKpQbdLqWewRD/
	aSPbNGXSjdntRVs8DRWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ6Sl-00051k-U4; Mon, 13 May 2019 08:37:35 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ6SQ-0004oO-Tr
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 08:37:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5B9EB15AD;
 Mon, 13 May 2019 01:37:12 -0700 (PDT)
Received: from [10.163.1.137] (unknown [10.163.1.137])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D63E43F720;
 Mon, 13 May 2019 01:37:03 -0700 (PDT)
Subject: Re: [PATCH V2 0/2] arm64/mm: Enable memory hot remove
To: David Hildenbrand <david@redhat.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mm@kvack.org,
 akpm@linux-foundation.org, will.deacon@arm.com, catalin.marinas@arm.com
References: <1555221553-18845-1-git-send-email-anshuman.khandual@arm.com>
 <bbfc6ede-01b2-2331-112e-fa28bc2591fb@redhat.com>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <67efff12-6d7f-9696-0c34-c9ad11acd297@arm.com>
Date: Mon, 13 May 2019 14:07:11 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <bbfc6ede-01b2-2331-112e-fa28bc2591fb@redhat.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_013715_641793_96C61C17 
X-CRM114-Status: GOOD (  18.79  )
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
Cc: mark.rutland@arm.com, mhocko@suse.com, ira.weiny@intel.com,
 robin.murphy@arm.com, cai@lca.pw, logang@deltatee.com, james.morse@arm.com,
 cpandya@codeaurora.org, arunks@codeaurora.org, dan.j.williams@intel.com,
 mgorman@techsingularity.net, osalvador@suse.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 05/13/2019 01:52 PM, David Hildenbrand wrote:
> On 14.04.19 07:59, Anshuman Khandual wrote:
>> This series enables memory hot remove on arm64 after fixing a memblock
>> removal ordering problem in generic __remove_memory(). This is based
>> on the following arm64 working tree.
>>
>> git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git for-next/core
>>
>> Testing:
>>
>> Tested hot remove on arm64 for all 4K, 16K, 64K page config options with
>> all possible VA_BITS and PGTABLE_LEVELS combinations. Build tested on non
>> arm64 platforms.
>>
>> Changes in V2:
>>
>> - Added all received review and ack tags
>> - Split the series from ZONE_DEVICE enablement for better review
>>
>> - Moved memblock re-order patch to the front as per Robin Murphy
>> - Updated commit message on memblock re-order patch per Michal Hocko
>>
>> - Dropped [pmd|pud]_large() definitions
>> - Used existing [pmd|pud]_sect() instead of earlier [pmd|pud]_large()
>> - Removed __meminit and __ref tags as per Oscar Salvador
>> - Dropped unnecessary 'ret' init in arch_add_memory() per Robin Murphy
>> - Skipped calling into pgtable_page_dtor() for linear mapping page table
>>   pages and updated all relevant functions
>>
>> Changes in V1: (https://lkml.org/lkml/2019/4/3/28)
>>
>> Anshuman Khandual (2):
>>   mm/hotplug: Reorder arch_remove_memory() call in __remove_memory()
>>   arm64/mm: Enable memory hot remove
>>
>>  arch/arm64/Kconfig               |   3 +
>>  arch/arm64/include/asm/pgtable.h |   2 +
>>  arch/arm64/mm/mmu.c              | 221 ++++++++++++++++++++++++++++++++++++++-
>>  mm/memory_hotplug.c              |   3 +-
>>  4 files changed, 225 insertions(+), 4 deletions(-)
>>
> 
> What's the progress of this series? I'll need arch_remove_memory() for
> the series
> 
> [PATCH v2 0/8] mm/memory_hotplug: Factor out memory block device handling
> 

Hello David,

I am almost done with the next version with respect to memory hot-remove i.e
arch_remove_memory(). But most of the time was spent addressing concerns with
respect to how memory hot remove is going to impact existing arm64 and generic
code which can concurrently walk or modify init_mm page table. I should be
sending out V3 this week or early next week.

- Anshuman   

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
