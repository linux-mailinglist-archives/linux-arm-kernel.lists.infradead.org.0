Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34D4927832
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 10:40:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7eqtBQt9QMSXwEc9Mx6bRce2WFIZboqbh5VktaIlNkU=; b=ijYP/NTL8IvU8u
	KCiRj5hKf1BtuWuRCs22OBNkLhHtS9+pf/YtbbxUMAuGDt+p+fNJG7UTNVErODO4kVOa7xvKOHoOr
	CiCCq+0iEYvcNbzhkhRKp8pS3sVLDlGg1tmGtDvdaUatGkbzJxT8+z4oXC8Ws8qwav3e07XbddlRa
	JSE5OINQtVu9rnyoEMDBHvfgk8ZwWCQyGx2mIXRYzz7zPXo/PSc2GILhNdZEp46Gjl1rbhpI7bLHr
	oxMn5Oi98gKWt6UGg+BNqJuNwucJkXrQWlPQaRQ6cejAVJrl5pZo6EPV2vOBegDdN9yMXkn6FRng0
	LpBb9GNKJUp3P+gE9HDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTjGt-0006tG-6e; Thu, 23 May 2019 08:40:19 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTjGl-0006rz-SC
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 08:40:13 +0000
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id F0A4E309264F;
 Thu, 23 May 2019 08:40:09 +0000 (UTC)
Received: from [10.36.116.197] (ovpn-116-197.ams2.redhat.com [10.36.116.197])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 2FE3065F42;
 Thu, 23 May 2019 08:40:06 +0000 (UTC)
Subject: Re: [PATCH V3 2/4] arm64/mm: Hold memory hotplug lock while walking
 for kernel page table dump
To: Michal Hocko <mhocko@kernel.org>,
 Anshuman Khandual <anshuman.khandual@arm.com>
References: <1557824407-19092-1-git-send-email-anshuman.khandual@arm.com>
 <1557824407-19092-3-git-send-email-anshuman.khandual@arm.com>
 <20190515165847.GH16651@dhcp22.suse.cz>
 <20190516102354.GB40960@lakrids.cambridge.arm.com>
 <a141ffa1-aa81-39df-11ba-9e18046356ff@arm.com>
 <20190516111607.GR16651@dhcp22.suse.cz>
From: David Hildenbrand <david@redhat.com>
Openpgp: preference=signencrypt
Autocrypt: addr=david@redhat.com; prefer-encrypt=mutual; keydata=
 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
 SE+xAvmumFBY
Organization: Red Hat GmbH
Message-ID: <ec7e5085-c61e-9d8b-73e9-8dca28288d47@redhat.com>
Date: Thu, 23 May 2019 10:40:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190516111607.GR16651@dhcp22.suse.cz>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.43]); Thu, 23 May 2019 08:40:10 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_014012_008464_BFC1F266 
X-CRM114-Status: GOOD (  25.56  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, ira.weiny@intel.com,
 catalin.marinas@arm.com, cai@lca.pw, will.deacon@arm.com,
 linux-kernel@vger.kernel.org, logang@deltatee.com, james.morse@arm.com,
 cpandya@codeaurora.org, arunks@codeaurora.org, akpm@linux-foundation.org,
 osalvador@suse.de, mgorman@techsingularity.net, dan.j.williams@intel.com,
 linux-arm-kernel@lists.infradead.org, robin.murphy@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 16.05.19 13:16, Michal Hocko wrote:
> On Thu 16-05-19 16:36:12, Anshuman Khandual wrote:
>> On 05/16/2019 03:53 PM, Mark Rutland wrote:
>>> Hi Michal,
>>>
>>> On Wed, May 15, 2019 at 06:58:47PM +0200, Michal Hocko wrote:
>>>> On Tue 14-05-19 14:30:05, Anshuman Khandual wrote:
>>>>> The arm64 pagetable dump code can race with concurrent modification of the
>>>>> kernel page tables. When a leaf entries are modified concurrently, the dump
>>>>> code may log stale or inconsistent information for a VA range, but this is
>>>>> otherwise not harmful.
>>>>>
>>>>> When intermediate levels of table are freed, the dump code will continue to
>>>>> use memory which has been freed and potentially reallocated for another
>>>>> purpose. In such cases, the dump code may dereference bogus addressses,
>>>>> leading to a number of potential problems.
>>>>>
>>>>> Intermediate levels of table may by freed during memory hot-remove, or when
>>>>> installing a huge mapping in the vmalloc region. To avoid racing with these
>>>>> cases, take the memory hotplug lock when walking the kernel page table.
>>>>
>>>> Why is this a problem only on arm64 
>>>
>>> It looks like it's not -- I think we're just the first to realise this.
>>>
>>> AFAICT x86's debugfs ptdump has the same issue if run conccurently with
>>> memory hot remove. If 32-bit arm supported hot-remove, its ptdump code
>>> would have the same issue.
>>>
>>>> and why do we even care for debugfs? Does anybody rely on this thing
>>>> to be reliable? Do we even need it? Who is using the file?
>>>
>>> The debugfs part is used intermittently by a few people working on the
>>> arm64 kernel page tables. We use that both to sanity-check that kernel
>>> page tables are created/updated correctly after changes to the arm64 mmu
>>> code, and also to debug issues if/when we encounter issues that appear
>>> to be the result of kernel page table corruption.
>>>
>>> So while it's rare to need it, it's really useful to have when we do
>>> need it, and I'd rather not remove it. I'd also rather that it didn't
>>> have latent issues where we can accidentally crash the kernel when using
>>> it, which is what this patch is addressing.
>>>
>>>> I am asking because I would really love to make mem hotplug locking less
>>>> scattered outside of the core MM than more. Most users simply shouldn't
>>>> care. Pfn walkers should rely on pfn_to_online_page.
>>>
>>> I'm not sure if that would help us here; IIUC pfn_to_online_page() alone
>>> doesn't ensure that the page remains online. Is there a way to achieve
>>> that other than get_online_mems()?
>>
>> Still wondering how pfn_to_online_page() is applicable here. It validates
>> a given PFN and whether its online from sparse section mapping perspective
>> before giving it's struct page. IIUC it is used during a linear scanning
>> of a physical address range not for a page table walk. So how it can solve
>> the problem when a struct page which was used as an intermediate level page
>> table page gets released back to the buddy from another concurrent thread ?
> 
> Well, my comment about pfn_to_online_page was more generic and it might
> not apply to this specific case. I meant to say that the code outside of
> the core MM shouldn't really care about the hotplug locking.
> 

What am I missing, how is it guaranteed that a page doesn't get
offlined/removed without holding a lock here?

We would at least need some RCU mechnism or similar to sync against
pages vanishing.

pfn_to_online_page() assumes that somebody touches a page he doesn't
own. There has to be some way for core-mm to realize this and defer
offlining/removinf.

-- 

Thanks,

David / dhildenb

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
