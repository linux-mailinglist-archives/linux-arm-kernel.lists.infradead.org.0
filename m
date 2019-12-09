Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DFB6117760
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 21:25:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8VGLS6rnvsaS0n1g+H0Buw/BVE1a5nBvA57zmiCg0uE=; b=PQiFCk+LHTZuCh
	mN55FlnmOSSZU+5Wuo4WpmBmY/4sPf2X/IdDIo2a9WB0jf3S6rnrCnI7zqbWJ8uJSiVl2QLhgoFoh
	Us8JiO4LHUZ1yHZiog1E54zmT8l7R+BhpAotYSjRUiDToL97v6qMdOJme9Z+f4eNF9SuLLomlhghL
	ddnnHlK0rSHiirnAKxRrnhrVE9jVqC35OUrU2ZsZHpiQqQiAv3aTMK/nVVp2oahGFoAusqUMl8ZIV
	BCYKs7w04F3jCenN8qFV9yq3yFTe14BOhxl/L/EG6T1+2TgiZcF/povgMYMJGEGBOij6Aq2EcJ72X
	tMRuZOYWoNljQia9FoHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iePaU-0005nd-CE; Mon, 09 Dec 2019 20:24:58 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iePaN-0005mH-58
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 20:24:52 +0000
Received: from guinness.priv.deltatee.com ([172.16.1.162])
 by ale.deltatee.com with esmtp (Exim 4.92)
 (envelope-from <logang@deltatee.com>)
 id 1iePa0-0003kM-0J; Mon, 09 Dec 2019 13:24:29 -0700
To: David Hildenbrand <david@redhat.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-ia64@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, linux-s390@vger.kernel.org,
 linux-sh@vger.kernel.org, platform-driver-x86@vger.kernel.org,
 linux-mm@kvack.org, Christoph Hellwig <hch@lst.de>,
 Dan Williams <dan.j.williams@intel.com>,
 Andrew Morton <akpm@linux-foundation.org>
References: <20191209191346.5197-1-logang@deltatee.com>
 <20191209191346.5197-6-logang@deltatee.com>
 <ce50d9da-c60e-05a1-a86b-3bb3629de502@redhat.com>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <f34a4c52-cc95-15ed-8a72-c05ab4fd6d33@deltatee.com>
Date: Mon, 9 Dec 2019 13:24:19 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <ce50d9da-c60e-05a1-a86b-3bb3629de502@redhat.com>
Content-Language: en-CA
X-SA-Exim-Connect-IP: 172.16.1.162
X-SA-Exim-Rcpt-To: mhocko@suse.com, peterz@infradead.org, luto@kernel.org,
 dave.hansen@linux.intel.com, bp@alien8.de, mingo@redhat.com,
 tglx@linutronix.de, benh@kernel.crashing.org, will@kernel.org,
 catalin.marinas@arm.com, akpm@linux-foundation.org, dan.j.williams@intel.com,
 hch@lst.de, linux-mm@kvack.org, platform-driver-x86@vger.kernel.org,
 linux-sh@vger.kernel.org, linux-s390@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, linux-ia64@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 david@redhat.com
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.7 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE,MYRULES_FREE autolearn=ham autolearn_force=no
 version=3.4.2
Subject: Re: [PATCH 5/6] mm, memory_hotplug: Provide argument for the pgprot_t
 in arch_add_memory()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_122451_194514_573AB788 
X-CRM114-Status: GOOD (  16.37  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.54.116.67 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Michal Hocko <mhocko@suse.com>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, Andy Lutomirski <luto@kernel.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 2019-12-09 12:23 p.m., David Hildenbrand wrote:
> On 09.12.19 20:13, Logan Gunthorpe wrote:
>> devm_memremap_pages() is currently used by the PCI P2PDMA code to create
>> struct page mappings for IO memory. At present, these mappings are created
>> with PAGE_KERNEL which implies setting the PAT bits to be WB. However, on
>> x86, an mtrr register will typically override this and force the cache
>> type to be UC-. In the case firmware doesn't set this register it is
>> effectively WB and will typically result in a machine check exception
>> when it's accessed.
>>
>> Other arches are not currently likely to function correctly seeing they
>> don't have any MTRR registers to fall back on.
>>
>> To solve this, add an argument to arch_add_memory() to explicitly
>> set the pgprot value to a specific value.
>>
>> Of the arches that support MEMORY_HOTPLUG: x86_64, s390 and arm64 is a
>> simple change to pass the pgprot_t down to their respective functions
>> which set up the page tables. For x86_32, set the page tables explicitly
>> using _set_memory_prot() (seeing they are already mapped). For sh, reject
>> anything but PAGE_KERNEL settings -- this should be fine, for now, seeing
>> sh doesn't support ZONE_DEVICE anyway.
>>
>> Cc: Dan Williams <dan.j.williams@intel.com>
>> Cc: David Hildenbrand <david@redhat.com>
>> Cc: Michal Hocko <mhocko@suse.com>
>> Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
>> ---
>>  arch/arm64/mm/mmu.c            | 4 ++--
>>  arch/ia64/mm/init.c            | 5 ++++-
>>  arch/powerpc/mm/mem.c          | 4 ++--
>>  arch/s390/mm/init.c            | 4 ++--
>>  arch/sh/mm/init.c              | 5 ++++-
>>  arch/x86/mm/init_32.c          | 7 ++++++-
>>  arch/x86/mm/init_64.c          | 4 ++--
>>  include/linux/memory_hotplug.h | 2 +-
>>  mm/memory_hotplug.c            | 2 +-
>>  mm/memremap.c                  | 2 +-
>>  10 files changed, 25 insertions(+), 14 deletions(-)
>>
>> diff --git a/arch/arm64/mm/mmu.c b/arch/arm64/mm/mmu.c
>> index 60c929f3683b..48b65272df15 100644
>> --- a/arch/arm64/mm/mmu.c
>> +++ b/arch/arm64/mm/mmu.c
>> @@ -1050,7 +1050,7 @@ int p4d_free_pud_page(p4d_t *p4d, unsigned long addr)
>>  }
>>  
>>  #ifdef CONFIG_MEMORY_HOTPLUG
>> -int arch_add_memory(int nid, u64 start, u64 size,
>> +int arch_add_memory(int nid, u64 start, u64 size, pgprot_t prot,
>>  			struct mhp_restrictions *restrictions)
> 
> Can we fiddle that into "struct mhp_restrictions" instead?

Yes, if that's what people want, it's pretty trivial to do. I chose not
to do it that way because it doesn't get passed down to add_pages() and
it's not really a "restriction". If I don't hear any objections, I will
do that for v2.

Thanks,

Logan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
