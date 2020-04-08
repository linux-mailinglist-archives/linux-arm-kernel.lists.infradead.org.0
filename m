Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4BB61A2144
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Apr 2020 14:04:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NSiWkaFoxu+oWalinRztltltcbfQrrWfcNEAZzCRLaE=; b=ShwX+9g7SefV4g
	I0PMSOaBlXLUfk7gOH8uu1Q/hb6Gp4kLfz8iklYVy8CqV+rzjDZjmPa7cJ9FDkTQQiCWyHaraFfUh
	jJIwE6+tLZtHIeMGpkhnEmmPl/LaQ3XRlCm01nYIIIf8uAmPa1sQsHXQ7dhAVxY2eCdylLFFMNqEh
	l80WwPAQsjb2kVLRIncNKeSwk65NvA7X/rBvqT1n3+Irk3lklEa6s/vx06WKswWQTGRdhh8B2pBw/
	DUi38mgeYcCCdjEDl3VhOLqyVP2qGcol6SB/gHiM5YG8LgF7d+Evw9yb4DeTPlKlv706ZHle46DZE
	ebeb2galtSHNKPh0uXnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jM9Rd-0000z9-R5; Wed, 08 Apr 2020 12:04:37 +0000
Received: from [2001:4bb8:180:5765:65b6:f11e:f109:b151] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM9Nj-0005ML-NB; Wed, 08 Apr 2020 12:00:37 +0000
From: Christoph Hellwig <hch@lst.de>
To: Andrew Morton <akpm@linux-foundation.org>,
 "K. Y. Srinivasan" <kys@microsoft.com>,
 Haiyang Zhang <haiyangz@microsoft.com>,
 Stephen Hemminger <sthemmin@microsoft.com>, Wei Liu <wei.liu@kernel.org>,
 x86@kernel.org, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Laura Abbott <labbott@redhat.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Minchan Kim <minchan@kernel.org>, Nitin Gupta <ngupta@vflare.org>
Subject: [PATCH 18/28] mm: enforce that vmap can't map pages executable
Date: Wed,  8 Apr 2020 13:59:16 +0200
Message-Id: <20200408115926.1467567-19-hch@lst.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200408115926.1467567-1-hch@lst.de>
References: <20200408115926.1467567-1-hch@lst.de>
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
Cc: Christophe Leroy <christophe.leroy@c-s.fr>, linux-arch@vger.kernel.org,
 linux-hyperv@vger.kernel.org, linux-s390@vger.kernel.org,
 Peter Zijlstra <peterz@infradead.org>, linuxppc-dev@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org,
 iommu@lists.linux-foundation.org, bpf@vger.kernel.org,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

To help enforcing the W^X protection don't allow remapping existing
pages as executable.

Based on patch from Peter Zijlstra <peterz@infradead.org>.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/x86/include/asm/pgtable_types.h | 6 ++++++
 include/asm-generic/pgtable.h        | 4 ++++
 mm/vmalloc.c                         | 2 +-
 3 files changed, 11 insertions(+), 1 deletion(-)

diff --git a/arch/x86/include/asm/pgtable_types.h b/arch/x86/include/asm/pgtable_types.h
index 947867f112ea..2e7c442cc618 100644
--- a/arch/x86/include/asm/pgtable_types.h
+++ b/arch/x86/include/asm/pgtable_types.h
@@ -282,6 +282,12 @@ typedef struct pgprot { pgprotval_t pgprot; } pgprot_t;
 
 typedef struct { pgdval_t pgd; } pgd_t;
 
+static inline pgprot_t pgprot_nx(pgprot_t prot)
+{
+	return __pgprot(pgprot_val(prot) | _PAGE_NX);
+}
+#define pgprot_nx pgprot_nx
+
 #ifdef CONFIG_X86_PAE
 
 /*
diff --git a/include/asm-generic/pgtable.h b/include/asm-generic/pgtable.h
index 329b8c8ca703..8c5f9c29698b 100644
--- a/include/asm-generic/pgtable.h
+++ b/include/asm-generic/pgtable.h
@@ -491,6 +491,10 @@ static inline int arch_unmap_one(struct mm_struct *mm,
 #define flush_tlb_fix_spurious_fault(vma, address) flush_tlb_page(vma, address)
 #endif
 
+#ifndef pgprot_nx
+#define pgprot_nx(prot)	(prot)
+#endif
+
 #ifndef pgprot_noncached
 #define pgprot_noncached(prot)	(prot)
 #endif
diff --git a/mm/vmalloc.c b/mm/vmalloc.c
index 7356b3f07bd8..334c75251ddb 100644
--- a/mm/vmalloc.c
+++ b/mm/vmalloc.c
@@ -2390,7 +2390,7 @@ void *vmap(struct page **pages, unsigned int count,
 	if (!area)
 		return NULL;
 
-	if (map_kernel_range((unsigned long)area->addr, size, prot,
+	if (map_kernel_range((unsigned long)area->addr, size, pgprot_nx(prot),
 			pages) < 0) {
 		vunmap(area->addr);
 		return NULL;
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
