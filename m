Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1774941CAF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 08:53:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Io/qGtZzRWb6R47/a6sKB4biKYsH/Ch/S7CZtfM6hj4=; b=U09erS//p1rwJP
	1nitxwLiG3zqz8+ruByEE6oYg9/n+NbcCqfDqM3HV1s/8iDICcN3F2qT8zcpbCF5HrV1t4X+LhBgN
	XrUIAGMh+rrrhw4+0hNZJYo4UO29F5NkAqvT9a0Pp9mnj5fme3HUri98Yh83D01RxziD8M2Mz1ZPW
	36X9pPquHkpugexAxbNvJWEP/eipuDiENGiZkYWZ87Yv638Lc5snxO9fAv/fDHh1aX7nTDhoCh6tQ
	q24evcM4AdTgNa5RELBiE+UGR5TceP5V1uVpI4Y9JUZv0Xrnu7TqfAs8WESysigTcjk7fKTS4oNRv
	w116G9KhLaaVZXGbVd9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hax8p-0000sH-BY; Wed, 12 Jun 2019 06:53:51 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hax8b-0000rr-PF
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 06:53:40 +0000
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id C1ADC308FC4B;
 Wed, 12 Jun 2019 06:53:36 +0000 (UTC)
Received: from [10.36.117.17] (ovpn-117-17.ams2.redhat.com [10.36.117.17])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 706B3176B9;
 Wed, 12 Jun 2019 06:53:34 +0000 (UTC)
Subject: Re: [PATCH V5 - Rebased] mm/hotplug: Reorder memblock_[free|remove]()
 calls in try_remove_memory()
To: Anshuman Khandual <anshuman.khandual@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>
References: <36e0126f-e2d1-239c-71f3-91125a49e019@redhat.com>
 <1560252373-3230-1-git-send-email-anshuman.khandual@arm.com>
 <20190611151908.cdd6b73fd17fda09b1b3b65b@linux-foundation.org>
 <5b4f1f19-2f8d-9b8f-4240-7b728952b6fe@arm.com>
From: David Hildenbrand <david@redhat.com>
Openpgp: preference=signencrypt
Autocrypt: addr=david@redhat.com; prefer-encrypt=mutual; keydata=
 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
 SE+xAvmumFBY
Organization: Red Hat GmbH
Message-ID: <67f5c5ad-d753-77d8-8746-96cf4746b3e0@redhat.com>
Date: Wed, 12 Jun 2019 08:53:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <5b4f1f19-2f8d-9b8f-4240-7b728952b6fe@arm.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.43]); Wed, 12 Jun 2019 06:53:36 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_235337_924895_B6D64FD9 
X-CRM114-Status: GOOD (  20.35  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, mhocko@suse.com, catalin.marinas@arm.com,
 will.deacon@arm.com, linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 ard.biesheuvel@arm.com, linux-arm-kernel@lists.infradead.org,
 osalvador@suse.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 12.06.19 06:02, Anshuman Khandual wrote:
> 
> 
> On 06/12/2019 03:49 AM, Andrew Morton wrote:
>> On Tue, 11 Jun 2019 16:56:13 +0530 Anshuman Khandual <anshuman.khandual@arm.com> wrote:
>>
>>> Memory hot remove uses get_nid_for_pfn() while tearing down linked sysfs
>>> entries between memory block and node. It first checks pfn validity with
>>> pfn_valid_within() before fetching nid. With CONFIG_HOLES_IN_ZONE config
>>> (arm64 has this enabled) pfn_valid_within() calls pfn_valid().
>>>
>>> pfn_valid() is an arch implementation on arm64 (CONFIG_HAVE_ARCH_PFN_VALID)
>>> which scans all mapped memblock regions with memblock_is_map_memory(). This
>>> creates a problem in memory hot remove path which has already removed given
>>> memory range from memory block with memblock_[remove|free] before arriving
>>> at unregister_mem_sect_under_nodes(). Hence get_nid_for_pfn() returns -1
>>> skipping subsequent sysfs_remove_link() calls leaving node <-> memory block
>>> sysfs entries as is. Subsequent memory add operation hits BUG_ON() because
>>> of existing sysfs entries.
>>>
>>> [   62.007176] NUMA: Unknown node for memory at 0x680000000, assuming node 0
>>> [   62.052517] ------------[ cut here ]------------
>>> [   62.053211] kernel BUG at mm/memory_hotplug.c:1143!
>>> [   62.053868] Internal error: Oops - BUG: 0 [#1] PREEMPT SMP
>>> [   62.054589] Modules linked in:
>>> [   62.054999] CPU: 19 PID: 3275 Comm: bash Not tainted 5.1.0-rc2-00004-g28cea40b2683 #41
>>> [   62.056274] Hardware name: linux,dummy-virt (DT)
>>> [   62.057166] pstate: 40400005 (nZcv daif +PAN -UAO)
>>> [   62.058083] pc : add_memory_resource+0x1cc/0x1d8
>>> [   62.058961] lr : add_memory_resource+0x10c/0x1d8
>>> [   62.059842] sp : ffff0000168b3ce0
>>> [   62.060477] x29: ffff0000168b3ce0 x28: ffff8005db546c00
>>> [   62.061501] x27: 0000000000000000 x26: 0000000000000000
>>> [   62.062509] x25: ffff0000111ef000 x24: ffff0000111ef5d0
>>> [   62.063520] x23: 0000000000000000 x22: 00000006bfffffff
>>> [   62.064540] x21: 00000000ffffffef x20: 00000000006c0000
>>> [   62.065558] x19: 0000000000680000 x18: 0000000000000024
>>> [   62.066566] x17: 0000000000000000 x16: 0000000000000000
>>> [   62.067579] x15: ffffffffffffffff x14: ffff8005e412e890
>>> [   62.068588] x13: ffff8005d6b105d8 x12: 0000000000000000
>>> [   62.069610] x11: ffff8005d6b10490 x10: 0000000000000040
>>> [   62.070615] x9 : ffff8005e412e898 x8 : ffff8005e412e890
>>> [   62.071631] x7 : ffff8005d6b105d8 x6 : ffff8005db546c00
>>> [   62.072640] x5 : 0000000000000001 x4 : 0000000000000002
>>> [   62.073654] x3 : ffff8005d7049480 x2 : 0000000000000002
>>> [   62.074666] x1 : 0000000000000003 x0 : 00000000ffffffef
>>> [   62.075685] Process bash (pid: 3275, stack limit = 0x00000000d754280f)
>>> [   62.076930] Call trace:
>>> [   62.077411]  add_memory_resource+0x1cc/0x1d8
>>> [   62.078227]  __add_memory+0x70/0xa8
>>> [   62.078901]  probe_store+0xa4/0xc8
>>> [   62.079561]  dev_attr_store+0x18/0x28
>>> [   62.080270]  sysfs_kf_write+0x40/0x58
>>> [   62.080992]  kernfs_fop_write+0xcc/0x1d8
>>> [   62.081744]  __vfs_write+0x18/0x40
>>> [   62.082400]  vfs_write+0xa4/0x1b0
>>> [   62.083037]  ksys_write+0x5c/0xc0
>>> [   62.083681]  __arm64_sys_write+0x18/0x20
>>> [   62.084432]  el0_svc_handler+0x88/0x100
>>> [   62.085177]  el0_svc+0x8/0xc
>>
>> This seems like a serious problem.  Once which should be fixed in 5.2
>> and perhaps the various -stable kernels as well.
> 
> But the problem does not exist in the current kernel as yet till the reworked
> versions of the other two patches in this series get merged. This patch was
> after arm64 hot-remove enablement in V1 (https://lkml.org/lkml/2019/4/3/28)
> but after some discussions it was decided to be moved before hot-remove from
> V2 (https://lkml.org/lkml/2019/4/14/5) onwards as a prerequisite patch instead.
> 
>>
>>> Re-ordering memblock_[free|remove]() with arch_remove_memory() solves the
>>> problem on arm64 as pfn_valid() behaves correctly and returns positive
>>> as memblock for the address range still exists. arch_remove_memory()
>>> removes applicable memory sections from zone with __remove_pages() and
>>> tears down kernel linear mapping. Removing memblock regions afterwards
>>> is safe because there is no other memblock (bootmem) allocator user that
>>> late. So nobody is going to allocate from the removed range just to blow
>>> up later. Also nobody should be using the bootmem allocated range else
>>> we wouldn't allow to remove it. So reordering is indeed safe.
>>>
>>> ...
>>>
>>>
>>> - Rebased on linux-next (next-20190611)
>>
>> Yet the patch you've prepared is designed for 5.3.  Was that
>> deliberate, or should we be targeting earlier kernels?
> 
> It was deliberate for 5.3 as a preparation for upcoming reworked arm64 hot-remove.
> 

We should probably add to the patch description something like "This is
a preparation for arm64 memory hotremove. The described issue is not
relevant on other architectures."

-- 

Thanks,

David / dhildenb

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
