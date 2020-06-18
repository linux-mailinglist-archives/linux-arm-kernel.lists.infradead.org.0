Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 021861FEBB2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 08:44:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bIvV4PLy2TN9M6ztSut5IQvy1hLFut1fetHUHLN2R0k=; b=IN5X8xBJPfXT6P
	Tg7H5/Xbr5feQEe2Xoshs1eDfCFdWW62x5trrHVrly2fSwHwtYUGsln6e2CSR5nr0hEkBm8hY9NL5
	slPe1DTqbfgb6NUVaDsGNU54VNuXNcpZ379VAqgr3uTpR/madUF4ttLVW1oaj1aLTzwVZvfE0Rwoa
	OUTG+fgNjksP+kUS1Bg7K6uTqR03bHHtBIsNre/JRciIpmjfmEdJXrlVXzxy22WXIct7sbTAtnbEO
	evLvBCoxuEMVSVtXc8l5J1P++xCdyADWAHAsOhuhBmdHcLymPDvlEb1pPfX2vwnwt0iuBVVpZFCQk
	PU2oxjFfWPzV3O3oAyfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jloHj-0000HK-Gx; Thu, 18 Jun 2020 06:44:27 +0000
Received: from 195-192-102-148.dyn.cablelink.at ([195.192.102.148]
 helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jloGe-00081Z-Qm; Thu, 18 Jun 2020 06:43:21 +0000
From: Christoph Hellwig <hch@lst.de>
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH 3/3] mm: remove vmalloc_exec
Date: Thu, 18 Jun 2020 08:43:07 +0200
Message-Id: <20200618064307.32739-4-hch@lst.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200618064307.32739-1-hch@lst.de>
References: <20200618064307.32739-1-hch@lst.de>
MIME-Version: 1.0
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
Cc: linux-hyperv@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, x86@kernel.org,
 Dexuan Cui <decui@microsoft.com>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, Jessica Yu <jeyu@kernel.org>,
 Vitaly Kuznetsov <vkuznets@redhat.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Merge vmalloc_exec into its only caller.  Note that for !CONFIG_MMU
__vmalloc_node_range maps to __vmalloc, which directly clears the
__GFP_HIGHMEM added by the vmalloc_exec stub anyway.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 include/linux/vmalloc.h |  1 -
 kernel/module.c         |  4 +++-
 mm/nommu.c              | 17 -----------------
 mm/vmalloc.c            | 20 --------------------
 4 files changed, 3 insertions(+), 39 deletions(-)

diff --git a/include/linux/vmalloc.h b/include/linux/vmalloc.h
index 48bb681e6c2aed..0221f852a7e1a3 100644
--- a/include/linux/vmalloc.h
+++ b/include/linux/vmalloc.h
@@ -106,7 +106,6 @@ extern void *vzalloc(unsigned long size);
 extern void *vmalloc_user(unsigned long size);
 extern void *vmalloc_node(unsigned long size, int node);
 extern void *vzalloc_node(unsigned long size, int node);
-extern void *vmalloc_exec(unsigned long size);
 extern void *vmalloc_32(unsigned long size);
 extern void *vmalloc_32_user(unsigned long size);
 extern void *__vmalloc(unsigned long size, gfp_t gfp_mask);
diff --git a/kernel/module.c b/kernel/module.c
index e8a198588f26ee..0c6573b98c3662 100644
--- a/kernel/module.c
+++ b/kernel/module.c
@@ -2783,7 +2783,9 @@ static void dynamic_debug_remove(struct module *mod, struct _ddebug *debug)
 
 void * __weak module_alloc(unsigned long size)
 {
-	return vmalloc_exec(size);
+	return __vmalloc_node_range(size, 1, VMALLOC_START, VMALLOC_END,
+			GFP_KERNEL, PAGE_KERNEL_EXEC, VM_FLUSH_RESET_PERMS,
+			NUMA_NO_NODE, __func__);
 }
 
 bool __weak module_init_section(const char *name)
diff --git a/mm/nommu.c b/mm/nommu.c
index cdcad5d61dd194..f32a69095d509e 100644
--- a/mm/nommu.c
+++ b/mm/nommu.c
@@ -290,23 +290,6 @@ void *vzalloc_node(unsigned long size, int node)
 }
 EXPORT_SYMBOL(vzalloc_node);
 
-/**
- *	vmalloc_exec  -  allocate virtually contiguous, executable memory
- *	@size:		allocation size
- *
- *	Kernel-internal function to allocate enough pages to cover @size
- *	the page level allocator and map them into contiguous and
- *	executable kernel virtual space.
- *
- *	For tight control over page level allocator and protection flags
- *	use __vmalloc() instead.
- */
-
-void *vmalloc_exec(unsigned long size)
-{
-	return __vmalloc(size, GFP_KERNEL | __GFP_HIGHMEM);
-}
-
 /**
  * vmalloc_32  -  allocate virtually contiguous memory (32bit addressable)
  *	@size:		allocation size
diff --git a/mm/vmalloc.c b/mm/vmalloc.c
index 3091c2ca60dfd1..f60948aac0d0e4 100644
--- a/mm/vmalloc.c
+++ b/mm/vmalloc.c
@@ -2696,26 +2696,6 @@ void *vzalloc_node(unsigned long size, int node)
 }
 EXPORT_SYMBOL(vzalloc_node);
 
-/**
- * vmalloc_exec - allocate virtually contiguous, executable memory
- * @size:	  allocation size
- *
- * Kernel-internal function to allocate enough pages to cover @size
- * the page level allocator and map them into contiguous and
- * executable kernel virtual space.
- *
- * For tight control over page level allocator and protection flags
- * use __vmalloc() instead.
- *
- * Return: pointer to the allocated memory or %NULL on error
- */
-void *vmalloc_exec(unsigned long size)
-{
-	return __vmalloc_node_range(size, 1, VMALLOC_START, VMALLOC_END,
-			GFP_KERNEL, PAGE_KERNEL_EXEC, VM_FLUSH_RESET_PERMS,
-			NUMA_NO_NODE, __builtin_return_address(0));
-}
-
 #if defined(CONFIG_64BIT) && defined(CONFIG_ZONE_DMA32)
 #define GFP_VMALLOC32 (GFP_DMA32 | GFP_KERNEL)
 #elif defined(CONFIG_64BIT) && defined(CONFIG_ZONE_DMA)
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
