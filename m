Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68459B330C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 03:45:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3SRUnFxYLb8tHsLSElzOps6S5zg0oBluy56RjqzL/78=; b=mh2A1AT0DzPZGT
	QJ5ZeZMHbEu2BfRCynlO7UClO/SBpg2yo8+ORj8gD9XB+O4mwWc4JLWdnk9ALSMyg4qj0kMmKqOpc
	quE0v1eRK02eYqLgzbrB/B0IvchXdRkHiy9E1Gu6mCgRFrBQA+ukbUif55vgeJiKcM1BRiU4JmWnR
	3YMzoZdj6nGmPlDYvI9gPnSQsyz4sP7Y+bDC9Xm3PZzwTfO7w4aJSfkUr+nRm7uY4RFDttpFxDCgO
	kPqeNXVJ8v51HGplCNkp5RQ6wR3ivCfjrHwD6CJcpIvXFpt0Oq/Lro9tai5QSlsC2SzOskjbpUBje
	UwzXA5R/rDUpyfoPN12A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9g4q-0008CQ-9V; Mon, 16 Sep 2019 01:45:16 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9g4f-0007Ss-7d
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 01:45:07 +0000
Received: by mail-pl1-x644.google.com with SMTP id e5so5073635pls.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 15 Sep 2019 18:45:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=fNnAnq8pDeljhZQ4pgIKWXaM6E5rsGED87rKuk4gjk8=;
 b=nzjYwpMTP1y7w3N0WhvyyFQQwOr8d8qbDv4YObmyIib7IyAUBcul+5byappQyOVIPS
 Dqq8kh9xySZGdarsR6D1u26oZGnDDUMZi+a+6aZ48GU2jYPbQM3Aj1St0Tq1NoONC3PB
 hyxV+xHcpXHMsLKL+P+l6q6FcTVAya7m7ouCaVwvLNZF/0Rx/ir/MI6o3V84P8aKI+ts
 DJ1q3a2kFi4ktMZp7BCmykYy6NIAzSQsaY2yTNBqwsD526wj6KGKopXBuO3ksZ9eFb3/
 5K78S6grm1nfjSnrpfwR1MfyuoawoNyHhgEK9uHCdOEwV7eDA2RNMeIG8cj1dXAxiHUx
 DRsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=fNnAnq8pDeljhZQ4pgIKWXaM6E5rsGED87rKuk4gjk8=;
 b=AOecmB28zv3zdHLd3ZNeXA1T/rbpP//b6xpXwda3aJJgSMrIDY1vICv4sJu5KBxRQs
 uQI8kmqA+AAaiuV9y6aK/aA1daAu4TSK7Fk27qWO2w5VJsfPw8eRER6du7vzoulDYXhv
 8+pFh+3+hxbV5sgdW2bfKDb92iWdqYdzjUttILQTMEDo2NKXtK6oEy4iFzw6uMwkAXrl
 BrhI9Q6o8xhsWcmbZlW9TRuMDpXSzypSLIXYwJCyYIVUE2nRjogwHjYDjNhI6vU1hAUb
 /2oPTjjqHhCBR9y6HHq5EIi7DnpBEQvX/56bJtXyh1sVCzpE7+JJmb9ZRuG66UYz7mPh
 gaFA==
X-Gm-Message-State: APjAAAWbDoeHv3M+Grf/KkNy4ajwcpOpWQoAizWkD2py1sJWqKSitKnQ
 +5VoE9SAD24B01sGaSQ8IeE=
X-Google-Smtp-Source: APXvYqxdgDyg1BgZoFwrA5D2pgqFh+fcaV8rX9gUUp7aqgZghpzjiomJ6OzKYVqhvUmCfXheWT5MQA==
X-Received: by 2002:a17:902:854b:: with SMTP id
 d11mr57017596plo.146.1568598302555; 
 Sun, 15 Sep 2019 18:45:02 -0700 (PDT)
Received: from [192.168.68.119] (220-245-129-191.tpgi.com.au.
 [220.245.129.191])
 by smtp.gmail.com with ESMTPSA id t13sm3343972pfe.69.2019.09.15.18.44.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 15 Sep 2019 18:45:01 -0700 (PDT)
Subject: Re: [PATCH V7 1/3] mm/hotplug: Reorder memblock_[free|remove]() calls
 in try_remove_memory()
To: Anshuman Khandual <anshuman.khandual@arm.com>, linux-mm@kvack.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 akpm@linux-foundation.org, catalin.marinas@arm.com, will@kernel.org
References: <1567503958-25831-1-git-send-email-anshuman.khandual@arm.com>
 <1567503958-25831-2-git-send-email-anshuman.khandual@arm.com>
From: Balbir Singh <bsingharora@gmail.com>
Message-ID: <74bcbd36-3bec-be67-917d-60cd74cbcef0@gmail.com>
Date: Mon, 16 Sep 2019 11:44:50 +1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1567503958-25831-2-git-send-email-anshuman.khandual@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190915_184505_288918_0887DB6D 
X-CRM114-Status: GOOD (  25.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bsingharora[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, mhocko@suse.com, david@redhat.com,
 ira.weiny@intel.com, steve.capper@arm.com, mgorman@techsingularity.net,
 steven.price@arm.com, broonie@kernel.org, cai@lca.pw, ard.biesheuvel@arm.com,
 cpandya@codeaurora.org, arunks@codeaurora.org, dan.j.williams@intel.com,
 Robin.Murphy@arm.com, logang@deltatee.com, valentin.schneider@arm.com,
 suzuki.poulose@arm.com, osalvador@suse.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 3/9/19 7:45 pm, Anshuman Khandual wrote:
> Memory hot remove uses get_nid_for_pfn() while tearing down linked sysfs

I could not find this path in the code, the only called for get_nid_for_pfn()
was register_mem_sect_under_node() when the system is under boot.

> entries between memory block and node. It first checks pfn validity with
> pfn_valid_within() before fetching nid. With CONFIG_HOLES_IN_ZONE config
> (arm64 has this enabled) pfn_valid_within() calls pfn_valid().
> 
> pfn_valid() is an arch implementation on arm64 (CONFIG_HAVE_ARCH_PFN_VALID)
> which scans all mapped memblock regions with memblock_is_map_memory(). This
> creates a problem in memory hot remove path which has already removed given
> memory range from memory block with memblock_[remove|free] before arriving
> at unregister_mem_sect_under_nodes(). Hence get_nid_for_pfn() returns -1
> skipping subsequent sysfs_remove_link() calls leaving node <-> memory block
> sysfs entries as is. Subsequent memory add operation hits BUG_ON() because
> of existing sysfs entries.
> 
> [   62.007176] NUMA: Unknown node for memory at 0x680000000, assuming node 0
> [   62.052517] ------------[ cut here ]------------

This seems like arm64 is not ready for probe_store() via drivers/base/memory.c/ode.c

> [   62.053211] kernel BUG at mm/memory_hotplug.c:1143!



> [   62.053868] Internal error: Oops - BUG: 0 [#1] PREEMPT SMP
> [   62.054589] Modules linked in:
> [   62.054999] CPU: 19 PID: 3275 Comm: bash Not tainted 5.1.0-rc2-00004-g28cea40b2683 #41
> [   62.056274] Hardware name: linux,dummy-virt (DT)
> [   62.057166] pstate: 40400005 (nZcv daif +PAN -UAO)
> [   62.058083] pc : add_memory_resource+0x1cc/0x1d8
> [   62.058961] lr : add_memory_resource+0x10c/0x1d8
> [   62.059842] sp : ffff0000168b3ce0
> [   62.060477] x29: ffff0000168b3ce0 x28: ffff8005db546c00
> [   62.061501] x27: 0000000000000000 x26: 0000000000000000
> [   62.062509] x25: ffff0000111ef000 x24: ffff0000111ef5d0
> [   62.063520] x23: 0000000000000000 x22: 00000006bfffffff
> [   62.064540] x21: 00000000ffffffef x20: 00000000006c0000
> [   62.065558] x19: 0000000000680000 x18: 0000000000000024
> [   62.066566] x17: 0000000000000000 x16: 0000000000000000
> [   62.067579] x15: ffffffffffffffff x14: ffff8005e412e890
> [   62.068588] x13: ffff8005d6b105d8 x12: 0000000000000000
> [   62.069610] x11: ffff8005d6b10490 x10: 0000000000000040
> [   62.070615] x9 : ffff8005e412e898 x8 : ffff8005e412e890
> [   62.071631] x7 : ffff8005d6b105d8 x6 : ffff8005db546c00
> [   62.072640] x5 : 0000000000000001 x4 : 0000000000000002
> [   62.073654] x3 : ffff8005d7049480 x2 : 0000000000000002
> [   62.074666] x1 : 0000000000000003 x0 : 00000000ffffffef
> [   62.075685] Process bash (pid: 3275, stack limit = 0x00000000d754280f)
> [   62.076930] Call trace:
> [   62.077411]  add_memory_resource+0x1cc/0x1d8
> [   62.078227]  __add_memory+0x70/0xa8
> [   62.078901]  probe_store+0xa4/0xc8
> [   62.079561]  dev_attr_store+0x18/0x28
> [   62.080270]  sysfs_kf_write+0x40/0x58
> [   62.080992]  kernfs_fop_write+0xcc/0x1d8
> [   62.081744]  __vfs_write+0x18/0x40
> [   62.082400]  vfs_write+0xa4/0x1b0
> [   62.083037]  ksys_write+0x5c/0xc0
> [   62.083681]  __arm64_sys_write+0x18/0x20
> [   62.084432]  el0_svc_handler+0x88/0x100
> [   62.085177]  el0_svc+0x8/0xc
> 
> Re-ordering memblock_[free|remove]() with arch_remove_memory() solves the
> problem on arm64 as pfn_valid() behaves correctly and returns positive
> as memblock for the address range still exists. arch_remove_memory()
> removes applicable memory sections from zone with __remove_pages() and
> tears down kernel linear mapping. Removing memblock regions afterwards
> is safe because there is no other memblock (bootmem) allocator user that
> late. So nobody is going to allocate from the removed range just to blow
> up later. Also nobody should be using the bootmem allocated range else
> we wouldn't allow to remove it. So reordering is indeed safe.
> 
> Reviewed-by: David Hildenbrand <david@redhat.com>
> Reviewed-by: Oscar Salvador <osalvador@suse.de>
> Acked-by: Mark Rutland <mark.rutland@arm.com>
> Acked-by: Michal Hocko <mhocko@suse.com>
> Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
> ---

Honestly, the issue is not clear from the changelog, largely
because I can't find the use of get_nid_for_pfn()  being used
in memory hotunplug. I can see why using pfn_valid() after
memblock_free/remove is bad on the architecture.

I think the checks to pfn_valid() can be avoided from the
remove paths if we did the following

memblock_isolate_regions()
for each isolate_region {
	memblock_free
	memblock_remove
	arch_memory_remove

	# ensure that __remove_memory can avoid calling pfn_valid
}

Having said that, your patch is easier and if your assumption
about not using the memblocks is valid (after arch_memory_remove())
then might be the least resistant way forward

Balbir Singh.


>  mm/memory_hotplug.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/mm/memory_hotplug.c b/mm/memory_hotplug.c
> index c73f09913165..355c466e0621 100644
> --- a/mm/memory_hotplug.c
> +++ b/mm/memory_hotplug.c
> @@ -1770,13 +1770,13 @@ static int __ref try_remove_memory(int nid, u64 start, u64 size)
>  
>  	/* remove memmap entry */
>  	firmware_map_remove(start, start + size, "System RAM");
> -	memblock_free(start, size);
> -	memblock_remove(start, size);
>  
>  	/* remove memory block devices before removing memory */
>  	remove_memory_block_devices(start, size);
>  
>  	arch_remove_memory(nid, start, size, NULL);
> +	memblock_free(start, size);
> +	memblock_remove(start, size);
>  	__release_memory_resource(start, size);
>  
>  	try_offline_node(nid);
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
