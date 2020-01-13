Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB6EA138D23
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 09:42:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XeGFAQucpyEKcsOqq+EGbcMhi6RDnMnuQ8lMOub/2TU=; b=CBaLPG4hlAWnUF
	SDQ6csdk2F40QiexvqSTqCFBO5GTVFq3raMcQpWJDKpkbJI3lAGOMIQaWZa7Rin7xd9l11PBYTAL4
	W5jt11RCFiHlSg1lKX85ebZ9FA/3rlx31PR5T3Igg3UogFSL6HEyum3XMnDferWJpn2IvGmAbvfZK
	WEMvDwUp22ZT/KtVE2KazRDQV43f5DW8YAkAWGTuyplwQ42qdr7HeAsgEXF3cNdL8HA0kfAS2lWfM
	uRkXXJuOy1447FjIcHr7wYNfVc5agHNoKowNjT4ypTH85aSfsrSSJ8WWAGVvwJmyOqcixq24wMn3B
	gNLYSUmB1T1SCK1SjDsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqvIM-0004SW-Le; Mon, 13 Jan 2020 08:41:58 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqvID-0004Ru-Ry
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 08:41:51 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 61C13DA7;
 Mon, 13 Jan 2020 00:41:48 -0800 (PST)
Received: from [10.162.43.142] (p8cg001049571a15.blr.arm.com [10.162.43.142])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 851303F534; Mon, 13 Jan 2020 00:41:42 -0800 (PST)
Subject: Re: [PATCH V11 2/5] mm/memblock: Introduce MEMBLOCK_BOOT flag
To: Mike Rapoport <rppt@linux.ibm.com>
References: <1578625755-11792-1-git-send-email-anshuman.khandual@arm.com>
 <1578625755-11792-3-git-send-email-anshuman.khandual@arm.com>
 <20200113073711.GA4214@linux.ibm.com>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <08a2f82a-3201-055a-316a-a2f11c7ff7a5@arm.com>
Date: Mon, 13 Jan 2020 14:13:00 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20200113073711.GA4214@linux.ibm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_004149_991608_5E032DFB 
X-CRM114-Status: GOOD (  19.74  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, david@redhat.com, catalin.marinas@arm.com,
 linux-mm@kvack.org, arunks@codeaurora.org, cpandya@codeaurora.org,
 ira.weiny@intel.com, will@kernel.org, steven.price@arm.com,
 valentin.schneider@arm.com, suzuki.poulose@arm.com, broonie@kernel.org,
 cai@lca.pw, ard.biesheuvel@arm.com, dan.j.williams@intel.com,
 linux-arm-kernel@lists.infradead.org, osalvador@suse.de,
 mgorman@techsingularity.net, steve.capper@arm.com, logang@deltatee.com,
 linux-kernel@vger.kernel.org, akpm@linux-foundation.org, Robin.Murphy@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 01/13/2020 01:07 PM, Mike Rapoport wrote:
> On Fri, Jan 10, 2020 at 08:39:12AM +0530, Anshuman Khandual wrote:
>> On arm64 platform boot memory should never be hot removed due to certain
>> platform specific constraints. Hence the platform would like to override
>> earlier added arch call back arch_memory_removable() for this purpose. In
>> order to reject boot memory hot removal request, it needs to first track
>> them at runtime. In the future, there might be other platforms requiring
>> runtime boot memory enumeration. Hence lets expand the existing generic
>> memblock framework for this purpose rather then creating one just for
>> arm64 platforms.
>>
>> This introduces a new memblock flag MEMBLOCK_BOOT along with helpers which
>> can be marked by given platform on all memory regions discovered during
>> boot.
>  
> We already have MEMBLOCK_HOTPLUG to mark hotpluggable region. Can't we use
> it for your use-case?

At present MEMBLOCK_HOTPLUG flag helps in identifying parts of boot memory
as hotpluggable as indicated by the firmware. This information is then used
to avoid those regions during standard memblock_alloc_*() API requests and
later marking them as ZONE_MOVABLE when buddy gets initialized.

Memory hot remove does not check for MEMBLOCK_HOTPLUG flag as a requirement
before initiating the process. We could probably use this flag if generic
hot remove can be changed to check for MEMBLOCK_HOTPLUG as a prerequisite
which will require changes to memblock handling (boot and runtime) on all
existing platforms currently supporting hot remove. But what about handling
the movable boot memory created with movablecore/kernelcore command line,
should generic MM update their memblock regions with MEMBLOCK_HOTPLUG ?

> 
>> Cc: Mike Rapoport <rppt@linux.ibm.com>
>> Cc: Andrew Morton <akpm@linux-foundation.org>
>> Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
>> ---
>>  include/linux/memblock.h | 10 ++++++++++
>>  mm/memblock.c            | 37 +++++++++++++++++++++++++++++++++++++
>>  2 files changed, 47 insertions(+)
>>
>> diff --git a/include/linux/memblock.h b/include/linux/memblock.h
>> index b38bbef..fb04c87 100644
>> --- a/include/linux/memblock.h
>> +++ b/include/linux/memblock.h
>> @@ -31,12 +31,14 @@ extern unsigned long long max_possible_pfn;
>>   * @MEMBLOCK_HOTPLUG: hotpluggable region
>>   * @MEMBLOCK_MIRROR: mirrored region
>>   * @MEMBLOCK_NOMAP: don't add to kernel direct mapping
>> + * @MEMBLOCK_BOOT: memory received from firmware during boot
>>   */
>>  enum memblock_flags {
>>  	MEMBLOCK_NONE		= 0x0,	/* No special request */
>>  	MEMBLOCK_HOTPLUG	= 0x1,	/* hotpluggable region */
>>  	MEMBLOCK_MIRROR		= 0x2,	/* mirrored region */
>>  	MEMBLOCK_NOMAP		= 0x4,	/* don't add to kernel direct mapping */
>> +	MEMBLOCK_BOOT		= 0x8,	/* memory received from firmware during boot */
>>  };
>>  
>>  /**
>> @@ -116,6 +118,8 @@ int memblock_reserve(phys_addr_t base, phys_addr_t size);
>>  void memblock_trim_memory(phys_addr_t align);
>>  bool memblock_overlaps_region(struct memblock_type *type,
>>  			      phys_addr_t base, phys_addr_t size);
>> +int memblock_mark_boot(phys_addr_t base, phys_addr_t size);
>> +int memblock_clear_boot(phys_addr_t base, phys_addr_t size);
>>  int memblock_mark_hotplug(phys_addr_t base, phys_addr_t size);
>>  int memblock_clear_hotplug(phys_addr_t base, phys_addr_t size);
>>  int memblock_mark_mirror(phys_addr_t base, phys_addr_t size);
>> @@ -216,6 +220,11 @@ static inline bool memblock_is_nomap(struct memblock_region *m)
>>  	return m->flags & MEMBLOCK_NOMAP;
>>  }
>>  
>> +static inline bool memblock_is_boot(struct memblock_region *m)
>> +{
>> +	return m->flags & MEMBLOCK_BOOT;
>> +}
>> +
>>  #ifdef CONFIG_HAVE_MEMBLOCK_NODE_MAP
>>  int memblock_search_pfn_nid(unsigned long pfn, unsigned long *start_pfn,
>>  			    unsigned long  *end_pfn);
>> @@ -449,6 +458,7 @@ void memblock_cap_memory_range(phys_addr_t base, phys_addr_t size);
>>  void memblock_mem_limit_remove_map(phys_addr_t limit);
>>  bool memblock_is_memory(phys_addr_t addr);
>>  bool memblock_is_map_memory(phys_addr_t addr);
>> +bool memblock_is_boot_memory(phys_addr_t addr);
>>  bool memblock_is_region_memory(phys_addr_t base, phys_addr_t size);
>>  bool memblock_is_reserved(phys_addr_t addr);
>>  bool memblock_is_region_reserved(phys_addr_t base, phys_addr_t size);
>> diff --git a/mm/memblock.c b/mm/memblock.c
>> index 4bc2c7d..e10207f 100644
>> --- a/mm/memblock.c
>> +++ b/mm/memblock.c
>> @@ -865,6 +865,30 @@ static int __init_memblock memblock_setclr_flag(phys_addr_t base,
>>  }
>>  
>>  /**
>> + * memblock_mark_bootmem - Mark boot memory with flag MEMBLOCK_BOOT.
>> + * @base: the base phys addr of the region
>> + * @size: the size of the region
>> + *
>> + * Return: 0 on success, -errno on failure.
>> + */
>> +int __init_memblock memblock_mark_boot(phys_addr_t base, phys_addr_t size)
>> +{
>> +	return memblock_setclr_flag(base, size, 1, MEMBLOCK_BOOT);
>> +}
>> +
>> +/**
>> + * memblock_clear_bootmem - Clear flag MEMBLOCK_BOOT for a specified region.
>> + * @base: the base phys addr of the region
>> + * @size: the size of the region
>> + *
>> + * Return: 0 on success, -errno on failure.
>> + */
>> +int __init_memblock memblock_clear_boot(phys_addr_t base, phys_addr_t size)
>> +{
>> +	return memblock_setclr_flag(base, size, 0, MEMBLOCK_BOOT);
>> +}
>> +
>> +/**
>>   * memblock_mark_hotplug - Mark hotpluggable memory with flag MEMBLOCK_HOTPLUG.
>>   * @base: the base phys addr of the region
>>   * @size: the size of the region
>> @@ -974,6 +998,10 @@ static bool should_skip_region(struct memblock_region *m, int nid, int flags)
>>  	if ((flags & MEMBLOCK_MIRROR) && !memblock_is_mirror(m))
>>  		return true;
>>  
>> +	/* if we want boot memory skip non-boot memory regions */
>> +	if ((flags & MEMBLOCK_BOOT) && !memblock_is_boot(m))
>> +		return true;
>> +
>>  	/* skip nomap memory unless we were asked for it explicitly */
>>  	if (!(flags & MEMBLOCK_NOMAP) && memblock_is_nomap(m))
>>  		return true;
>> @@ -1785,6 +1813,15 @@ bool __init_memblock memblock_is_map_memory(phys_addr_t addr)
>>  	return !memblock_is_nomap(&memblock.memory.regions[i]);
>>  }
>>  
>> +bool __init_memblock memblock_is_boot_memory(phys_addr_t addr)
>> +{
>> +	int i = memblock_search(&memblock.memory, addr);
>> +
>> +	if (i == -1)
>> +		return false;
>> +	return memblock_is_boot(&memblock.memory.regions[i]);
>> +}
>> +
>>  #ifdef CONFIG_HAVE_MEMBLOCK_NODE_MAP
>>  int __init_memblock memblock_search_pfn_nid(unsigned long pfn,
>>  			 unsigned long *start_pfn, unsigned long *end_pfn)
>> -- 
>> 2.7.4
>>
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
