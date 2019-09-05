Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8669A9983
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 06:27:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2BD9X20JacvaZ47vvJYUphqQSysOgLyHeojQYq/jjKo=; b=Nn2SkkyIUuUyRO
	tUhHlRuX6Ux76RjdRF0C95XRjcUBTrpubtnaH3RI8/saPTUSLdmeFyxvgtrwjg4kZ6J/2zx0dybh1
	ZAWiY091eh4Dv01RzlfDH0UmzSPS63dwz6tfeYo1RS4yjpePO8dTGMbxhwq7avw/sEw++Gp3HNmln
	24fRM4hAHh6UgkihSXb0BuHZsJcDxBM45YmI9FmYLR2SD7+swLbTuoq2IqkEqeKdEF80ygiUZ2tz4
	I72oS9jIzZ/ikW1mx1sZlbKDR//wpTTnpr+f24yA+Xmy9w//CCH1DXgJfk3HsCQYG2JrQdGXixGQQ
	YZK+EWcV87pvdqiqozbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5jMz-000624-Uo; Thu, 05 Sep 2019 04:27:42 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i5jMk-00061N-Lc
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 04:27:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0854728;
 Wed,  4 Sep 2019 21:27:23 -0700 (PDT)
Received: from [10.162.41.136] (p8cg001049571a15.blr.arm.com [10.162.41.136])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 4EE723F718; Wed,  4 Sep 2019 21:27:16 -0700 (PDT)
Subject: Re: [PATCH V7 1/3] mm/hotplug: Reorder memblock_[free|remove]() calls
 in try_remove_memory()
To: David Hildenbrand <david@redhat.com>, linux-mm@kvack.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 akpm@linux-foundation.org, catalin.marinas@arm.com, will@kernel.org
References: <1567503958-25831-1-git-send-email-anshuman.khandual@arm.com>
 <1567503958-25831-2-git-send-email-anshuman.khandual@arm.com>
 <e98f2950-bef9-3672-81a8-f9593354fffe@redhat.com>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <49c2a682-97c5-5eef-6635-9fe75e4677f7@arm.com>
Date: Thu, 5 Sep 2019 09:57:23 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <e98f2950-bef9-3672-81a8-f9593354fffe@redhat.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_212726_756151_6D3BED55 
X-CRM114-Status: GOOD (  14.48  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, mhocko@suse.com, steve.capper@arm.com,
 ira.weiny@intel.com, suzuki.poulose@arm.com, mgorman@techsingularity.net,
 steven.price@arm.com, broonie@kernel.org, cai@lca.pw, ard.biesheuvel@arm.com,
 cpandya@codeaurora.org, arunks@codeaurora.org, dan.j.williams@intel.com,
 Robin.Murphy@arm.com, logang@deltatee.com, valentin.schneider@arm.com,
 osalvador@suse.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 09/04/2019 01:46 PM, David Hildenbrand wrote:
> On 03.09.19 11:45, Anshuman Khandual wrote:
>> Memory hot remove uses get_nid_for_pfn() while tearing down linked sysfs
>> entries between memory block and node. It first checks pfn validity with
>> pfn_valid_within() before fetching nid. With CONFIG_HOLES_IN_ZONE config
>> (arm64 has this enabled) pfn_valid_within() calls pfn_valid().
>>
>> pfn_valid() is an arch implementation on arm64 (CONFIG_HAVE_ARCH_PFN_VALID)
>> which scans all mapped memblock regions with memblock_is_map_memory(). This
>> creates a problem in memory hot remove path which has already removed given
>> memory range from memory block with memblock_[remove|free] before arriving
>> at unregister_mem_sect_under_nodes(). Hence get_nid_for_pfn() returns -1
>> skipping subsequent sysfs_remove_link() calls leaving node <-> memory block
>> sysfs entries as is. Subsequent memory add operation hits BUG_ON() because
>> of existing sysfs entries.
> Since
> 
> commit 60bb462fc7adb06ebee3beb5a4af6c7e6182e248
> Author: David Hildenbrand <david@redhat.com>
> Date:   Wed Aug 28 13:57:15 2019 +1000
> 
>     drivers/base/node.c: simplify unregister_memory_block_under_nodes()
> 
> that problem should be gone. There is no get_nid_for_pfn() call anymore.

Yes, the problem is gone. The above commit is still not present on arm64
tree against which this series was rebased and tested while posting.

> 
> So this patch should no longer be necessary - but as I said during
> earlier versions of this patch, the re-ordering might still make sense
> for consistency (removing stuff in the reverse order they were added).
> You'll have to rephrase the description then.

Sure will reword the commit message on these lines.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
