Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8321A1365B0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 04:09:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=cshj3UWTng/3O0aEkcfUlEDofKqfU+aPShzRucQ1By8=; b=sYHTArqX6FIu90vLcRHoenOfix
	QN/0TLKR1nzgXVH8GbhnXu5YbWBOmZ01OJEnL4rS5vxTsDzRtYk4SntHk5Pe+Sic4ED+KZZg5bSRa
	nQYySDORAw8dp5MpbuwnlGu9V+Tjw0SUvCcsAF9pX81a526zgRTp+NHzzmZS0FmX8xgcV12b4gHFd
	xru+QEfqWVRa3d/AqogjOvTSsM9aGlB0s0RkvA+Zd+q2OGxec8yMvDzntjpUVdUUKoOIfDE/ngVuF
	TSTT67rAY7/We+XK3cEndmdBHjm9TW7S+KlZhy8aaVqNUFkjPZruQ1xscfDdoCy+p5lOHlCKaP/Yh
	NTAGefhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipkfr-00015G-UI; Fri, 10 Jan 2020 03:09:23 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipkfR-0000u8-3x
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 03:08:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BFC6E113E;
 Thu,  9 Jan 2020 19:08:56 -0800 (PST)
Received: from p8cg001049571a15.blr.arm.com (p8cg001049571a15.blr.arm.com
 [10.162.42.128])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 670D23F703;
 Thu,  9 Jan 2020 19:08:49 -0800 (PST)
From: Anshuman Khandual <anshuman.khandual@arm.com>
To: linux-mm@kvack.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, akpm@linux-foundation.org,
 catalin.marinas@arm.com, will@kernel.org
Subject: [PATCH V11 2/5] mm/memblock: Introduce MEMBLOCK_BOOT flag
Date: Fri, 10 Jan 2020 08:39:12 +0530
Message-Id: <1578625755-11792-3-git-send-email-anshuman.khandual@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1578625755-11792-1-git-send-email-anshuman.khandual@arm.com>
References: <1578625755-11792-1-git-send-email-anshuman.khandual@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_190857_277402_7A73251A 
X-CRM114-Status: GOOD (  13.59  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, Mike Rapoport <rppt@linux.ibm.com>,
 ira.weiny@intel.com, david@redhat.com, mgorman@techsingularity.net,
 steve.capper@arm.com, Robin.Murphy@arm.com, steven.price@arm.com,
 broonie@kernel.org, cai@lca.pw, ard.biesheuvel@arm.com, cpandya@codeaurora.org,
 arunks@codeaurora.org, dan.j.williams@intel.com,
 Anshuman Khandual <anshuman.khandual@arm.com>, logang@deltatee.com,
 valentin.schneider@arm.com, suzuki.poulose@arm.com, osalvador@suse.de
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On arm64 platform boot memory should never be hot removed due to certain
platform specific constraints. Hence the platform would like to override
earlier added arch call back arch_memory_removable() for this purpose. In
order to reject boot memory hot removal request, it needs to first track
them at runtime. In the future, there might be other platforms requiring
runtime boot memory enumeration. Hence lets expand the existing generic
memblock framework for this purpose rather then creating one just for
arm64 platforms.

This introduces a new memblock flag MEMBLOCK_BOOT along with helpers which
can be marked by given platform on all memory regions discovered during
boot.

Cc: Mike Rapoport <rppt@linux.ibm.com>
Cc: Andrew Morton <akpm@linux-foundation.org>
Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
---
 include/linux/memblock.h | 10 ++++++++++
 mm/memblock.c            | 37 +++++++++++++++++++++++++++++++++++++
 2 files changed, 47 insertions(+)

diff --git a/include/linux/memblock.h b/include/linux/memblock.h
index b38bbef..fb04c87 100644
--- a/include/linux/memblock.h
+++ b/include/linux/memblock.h
@@ -31,12 +31,14 @@ extern unsigned long long max_possible_pfn;
  * @MEMBLOCK_HOTPLUG: hotpluggable region
  * @MEMBLOCK_MIRROR: mirrored region
  * @MEMBLOCK_NOMAP: don't add to kernel direct mapping
+ * @MEMBLOCK_BOOT: memory received from firmware during boot
  */
 enum memblock_flags {
 	MEMBLOCK_NONE		= 0x0,	/* No special request */
 	MEMBLOCK_HOTPLUG	= 0x1,	/* hotpluggable region */
 	MEMBLOCK_MIRROR		= 0x2,	/* mirrored region */
 	MEMBLOCK_NOMAP		= 0x4,	/* don't add to kernel direct mapping */
+	MEMBLOCK_BOOT		= 0x8,	/* memory received from firmware during boot */
 };
 
 /**
@@ -116,6 +118,8 @@ int memblock_reserve(phys_addr_t base, phys_addr_t size);
 void memblock_trim_memory(phys_addr_t align);
 bool memblock_overlaps_region(struct memblock_type *type,
 			      phys_addr_t base, phys_addr_t size);
+int memblock_mark_boot(phys_addr_t base, phys_addr_t size);
+int memblock_clear_boot(phys_addr_t base, phys_addr_t size);
 int memblock_mark_hotplug(phys_addr_t base, phys_addr_t size);
 int memblock_clear_hotplug(phys_addr_t base, phys_addr_t size);
 int memblock_mark_mirror(phys_addr_t base, phys_addr_t size);
@@ -216,6 +220,11 @@ static inline bool memblock_is_nomap(struct memblock_region *m)
 	return m->flags & MEMBLOCK_NOMAP;
 }
 
+static inline bool memblock_is_boot(struct memblock_region *m)
+{
+	return m->flags & MEMBLOCK_BOOT;
+}
+
 #ifdef CONFIG_HAVE_MEMBLOCK_NODE_MAP
 int memblock_search_pfn_nid(unsigned long pfn, unsigned long *start_pfn,
 			    unsigned long  *end_pfn);
@@ -449,6 +458,7 @@ void memblock_cap_memory_range(phys_addr_t base, phys_addr_t size);
 void memblock_mem_limit_remove_map(phys_addr_t limit);
 bool memblock_is_memory(phys_addr_t addr);
 bool memblock_is_map_memory(phys_addr_t addr);
+bool memblock_is_boot_memory(phys_addr_t addr);
 bool memblock_is_region_memory(phys_addr_t base, phys_addr_t size);
 bool memblock_is_reserved(phys_addr_t addr);
 bool memblock_is_region_reserved(phys_addr_t base, phys_addr_t size);
diff --git a/mm/memblock.c b/mm/memblock.c
index 4bc2c7d..e10207f 100644
--- a/mm/memblock.c
+++ b/mm/memblock.c
@@ -865,6 +865,30 @@ static int __init_memblock memblock_setclr_flag(phys_addr_t base,
 }
 
 /**
+ * memblock_mark_bootmem - Mark boot memory with flag MEMBLOCK_BOOT.
+ * @base: the base phys addr of the region
+ * @size: the size of the region
+ *
+ * Return: 0 on success, -errno on failure.
+ */
+int __init_memblock memblock_mark_boot(phys_addr_t base, phys_addr_t size)
+{
+	return memblock_setclr_flag(base, size, 1, MEMBLOCK_BOOT);
+}
+
+/**
+ * memblock_clear_bootmem - Clear flag MEMBLOCK_BOOT for a specified region.
+ * @base: the base phys addr of the region
+ * @size: the size of the region
+ *
+ * Return: 0 on success, -errno on failure.
+ */
+int __init_memblock memblock_clear_boot(phys_addr_t base, phys_addr_t size)
+{
+	return memblock_setclr_flag(base, size, 0, MEMBLOCK_BOOT);
+}
+
+/**
  * memblock_mark_hotplug - Mark hotpluggable memory with flag MEMBLOCK_HOTPLUG.
  * @base: the base phys addr of the region
  * @size: the size of the region
@@ -974,6 +998,10 @@ static bool should_skip_region(struct memblock_region *m, int nid, int flags)
 	if ((flags & MEMBLOCK_MIRROR) && !memblock_is_mirror(m))
 		return true;
 
+	/* if we want boot memory skip non-boot memory regions */
+	if ((flags & MEMBLOCK_BOOT) && !memblock_is_boot(m))
+		return true;
+
 	/* skip nomap memory unless we were asked for it explicitly */
 	if (!(flags & MEMBLOCK_NOMAP) && memblock_is_nomap(m))
 		return true;
@@ -1785,6 +1813,15 @@ bool __init_memblock memblock_is_map_memory(phys_addr_t addr)
 	return !memblock_is_nomap(&memblock.memory.regions[i]);
 }
 
+bool __init_memblock memblock_is_boot_memory(phys_addr_t addr)
+{
+	int i = memblock_search(&memblock.memory, addr);
+
+	if (i == -1)
+		return false;
+	return memblock_is_boot(&memblock.memory.regions[i]);
+}
+
 #ifdef CONFIG_HAVE_MEMBLOCK_NODE_MAP
 int __init_memblock memblock_search_pfn_nid(unsigned long pfn,
 			 unsigned long *start_pfn, unsigned long *end_pfn)
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
