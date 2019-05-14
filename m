Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 057BA1C587
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 11:00:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=l+mcK80ZqO2idAmol9QZXmkNvZa3nWcgkv6WciZ5120=; b=S3D0M6Bo5iXs3Zcmt0HdXn8AWf
	elTtdh0wfvmGhFtZTWWbz/EU6XooOvZmvLwRV7jNzqONE1suwzwAhY67xKGwsZRrT2i+ZRfP8M3jY
	bb+/iIBJwq+GadTa+rvRWVq9clzXu1RdmLNp+oCjvH5dbwuhDCgHP6R/Je0tx0HhsRxoKNuQq7X4Y
	fZYUPTGAuFYXYY41hcNdg2YsWErZqFNd0wpnqrTJcqPjyD8RauVXQEDwrlPXG6Oav25mg75fEDeaX
	/WfBQNrITqrNNvT1LLRmi7sDgLzoaKKJSOMB6sejWZu9DbseFTyDKie3Zth3Gpm6t2DG90FEmB3LQ
	EvzTY7RQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQTIX-0007zh-15; Tue, 14 May 2019 09:00:33 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQTIH-0007nl-7L
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 09:00:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7A1D2374;
 Tue, 14 May 2019 02:00:16 -0700 (PDT)
Received: from p8cg001049571a15.arm.com (unknown [10.163.1.137])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id AB1053F71E;
 Tue, 14 May 2019 02:00:08 -0700 (PDT)
From: Anshuman Khandual <anshuman.khandual@arm.com>
To: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 akpm@linux-foundation.org, catalin.marinas@arm.com, will.deacon@arm.com
Subject: [PATCH V3 1/4] mm/hotplug: Reorder arch_remove_memory() call in
 __remove_memory()
Date: Tue, 14 May 2019 14:30:04 +0530
Message-Id: <1557824407-19092-2-git-send-email-anshuman.khandual@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1557824407-19092-1-git-send-email-anshuman.khandual@arm.com>
References: <1557824407-19092-1-git-send-email-anshuman.khandual@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_020017_569395_87085ED1 
X-CRM114-Status: GOOD (  13.57  )
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
 david@redhat.com, robin.murphy@arm.com, cai@lca.pw, logang@deltatee.com,
 james.morse@arm.com, cpandya@codeaurora.org, arunks@codeaurora.org,
 dan.j.williams@intel.com, mgorman@techsingularity.net, osalvador@suse.de
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Memory hot remove uses get_nid_for_pfn() while tearing down linked sysfs
entries between memory block and node. It first checks pfn validity with
pfn_valid_within() before fetching nid. With CONFIG_HOLES_IN_ZONE config
(arm64 has this enabled) pfn_valid_within() calls pfn_valid().

pfn_valid() is an arch implementation on arm64 (CONFIG_HAVE_ARCH_PFN_VALID)
which scans all mapped memblock regions with memblock_is_map_memory(). This
creates a problem in memory hot remove path which has already removed given
memory range from memory block with memblock_[remove|free] before arriving
at unregister_mem_sect_under_nodes(). Hence get_nid_for_pfn() returns -1
skipping subsequent sysfs_remove_link() calls leaving node <-> memory block
sysfs entries as is. Subsequent memory add operation hits BUG_ON() because
of existing sysfs entries.

[   62.007176] NUMA: Unknown node for memory at 0x680000000, assuming node 0
[   62.052517] ------------[ cut here ]------------
[   62.053211] kernel BUG at mm/memory_hotplug.c:1143!
[   62.053868] Internal error: Oops - BUG: 0 [#1] PREEMPT SMP
[   62.054589] Modules linked in:
[   62.054999] CPU: 19 PID: 3275 Comm: bash Not tainted 5.1.0-rc2-00004-g28cea40b2683 #41
[   62.056274] Hardware name: linux,dummy-virt (DT)
[   62.057166] pstate: 40400005 (nZcv daif +PAN -UAO)
[   62.058083] pc : add_memory_resource+0x1cc/0x1d8
[   62.058961] lr : add_memory_resource+0x10c/0x1d8
[   62.059842] sp : ffff0000168b3ce0
[   62.060477] x29: ffff0000168b3ce0 x28: ffff8005db546c00
[   62.061501] x27: 0000000000000000 x26: 0000000000000000
[   62.062509] x25: ffff0000111ef000 x24: ffff0000111ef5d0
[   62.063520] x23: 0000000000000000 x22: 00000006bfffffff
[   62.064540] x21: 00000000ffffffef x20: 00000000006c0000
[   62.065558] x19: 0000000000680000 x18: 0000000000000024
[   62.066566] x17: 0000000000000000 x16: 0000000000000000
[   62.067579] x15: ffffffffffffffff x14: ffff8005e412e890
[   62.068588] x13: ffff8005d6b105d8 x12: 0000000000000000
[   62.069610] x11: ffff8005d6b10490 x10: 0000000000000040
[   62.070615] x9 : ffff8005e412e898 x8 : ffff8005e412e890
[   62.071631] x7 : ffff8005d6b105d8 x6 : ffff8005db546c00
[   62.072640] x5 : 0000000000000001 x4 : 0000000000000002
[   62.073654] x3 : ffff8005d7049480 x2 : 0000000000000002
[   62.074666] x1 : 0000000000000003 x0 : 00000000ffffffef
[   62.075685] Process bash (pid: 3275, stack limit = 0x00000000d754280f)
[   62.076930] Call trace:
[   62.077411]  add_memory_resource+0x1cc/0x1d8
[   62.078227]  __add_memory+0x70/0xa8
[   62.078901]  probe_store+0xa4/0xc8
[   62.079561]  dev_attr_store+0x18/0x28
[   62.080270]  sysfs_kf_write+0x40/0x58
[   62.080992]  kernfs_fop_write+0xcc/0x1d8
[   62.081744]  __vfs_write+0x18/0x40
[   62.082400]  vfs_write+0xa4/0x1b0
[   62.083037]  ksys_write+0x5c/0xc0
[   62.083681]  __arm64_sys_write+0x18/0x20
[   62.084432]  el0_svc_handler+0x88/0x100
[   62.085177]  el0_svc+0x8/0xc

Re-ordering arch_remove_memory() with memblock_[free|remove] solves the
problem on arm64 as pfn_valid() behaves correctly and returns positive
as memblock for the address range still exists. arch_remove_memory()
removes applicable memory sections from zone with __remove_pages() and
tears down kernel linear mapping. Removing memblock regions afterwards
is safe because there is no other memblock (bootmem) allocator user that
late. So nobody is going to allocate from the removed range just to blow
up later. Also nobody should be using the bootmem allocated range else
we wouldn't allow to remove it. So reordering is indeed safe.

Acked-by: Michal Hocko <mhocko@suse.com>
Reviewed-by: David Hildenbrand <david@redhat.com>
Reviewed-by: Oscar Salvador <osalvador@suse.de>
Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
---
 mm/memory_hotplug.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/mm/memory_hotplug.c b/mm/memory_hotplug.c
index 0082d69..71d0d79 100644
--- a/mm/memory_hotplug.c
+++ b/mm/memory_hotplug.c
@@ -1872,11 +1872,10 @@ void __ref __remove_memory(int nid, u64 start, u64 size)
 
 	/* remove memmap entry */
 	firmware_map_remove(start, start + size, "System RAM");
+	arch_remove_memory(nid, start, size, NULL);
 	memblock_free(start, size);
 	memblock_remove(start, size);
 
-	arch_remove_memory(nid, start, size, NULL);
-
 	try_offline_node(nid);
 
 	mem_hotplug_done();
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
