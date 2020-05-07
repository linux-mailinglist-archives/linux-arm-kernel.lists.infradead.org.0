Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1151A1C9391
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 17:04:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P6hmzF8jenCshegeg3+SigSBqrAFoiXC2ERRzJwmNNI=; b=KkKOCmlnK19dVz
	fSrnoMQgW/BHj71kggubiMLd46+2eJjR2ZN3957MWz1VtOzQS0wnIUpxNcOfxE3PTbex26e0blm0T
	SzKR6gbHag2u0iin6aa00qKREIEpDpldSvZTp5hsHfkTZ6kMRvRelBoVP8eV+VLfoZSTbYRwXp4BP
	fGvs87921SnWJed1P3DGeEwxj9iR80urAaiHvYMocFoUPFfuatN7qH3B9hdlEj6R4VeZZ6krQK145
	+LM3hxYsIUYJduP2iJ3N5pBIZEzapCj7occx2czuVg/zoCgi4goMlMup0l4YylLK8mFvI5QRrJLc6
	NKcBW2nIA6jJfvxh1KHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWi4U-0008DN-BC; Thu, 07 May 2020 15:04:22 +0000
Received: from mga03.intel.com ([134.134.136.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWi0h-0003kI-DO; Thu, 07 May 2020 15:00:30 +0000
IronPort-SDR: qlV/Qi5RtrA5gzf4i9L52L9NILmDxAvBJtE9kBtCGo1I2D4vmtHcuirTDNVLEpHG4PGiictaKQ
 CA/r+IaVQmfA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2020 08:00:21 -0700
IronPort-SDR: saT76zwPdNDhyVhlS8gGstj7Z1vEVhsiCVSWpU8SA2MZuPcSyBfm4xuaedmODqMXokcDkJBKU+
 8RFyk6fiFs3w==
X-IronPort-AV: E=Sophos;i="5.73,364,1583222400"; d="scan'208";a="370140539"
Received: from iweiny-desk2.sc.intel.com (HELO localhost) ([10.3.52.147])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2020 08:00:21 -0700
From: ira.weiny@intel.com
To: linux-kernel@vger.kernel.org,
	Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH V3 13/15] parisc/kmap: Remove duplicate kmap code
Date: Thu,  7 May 2020 08:00:01 -0700
Message-Id: <20200507150004.1423069-14-ira.weiny@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200507150004.1423069-1-ira.weiny@intel.com>
References: <20200507150004.1423069-1-ira.weiny@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_080027_548390_199F3D7C 
X-CRM114-Status: GOOD (  11.84  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.65 listed in list.dnswl.org]
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
Cc: Peter Zijlstra <peterz@infradead.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Dave Hansen <dave.hansen@linux.intel.com>, dri-devel@lists.freedesktop.org,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 Max Filippov <jcmvbkbc@gmail.com>, Paul Mackerras <paulus@samba.org>,
 "H. Peter Anvin" <hpa@zytor.com>, sparclinux@vger.kernel.org,
 Ira Weiny <ira.weiny@intel.com>, Thomas Gleixner <tglx@linutronix.de>,
 Helge Deller <deller@gmx.de>, x86@kernel.org, linux-csky@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>, Ingo Molnar <mingo@redhat.com>,
 linux-snps-arc@lists.infradead.org, linux-xtensa@linux-xtensa.org,
 Borislav Petkov <bp@alien8.de>, Al Viro <viro@zeniv.linux.org.uk>,
 Andy Lutomirski <luto@kernel.org>, Dan Williams <dan.j.williams@intel.com>,
 linux-arm-kernel@lists.infradead.org, Chris Zankel <chris@zankel.net>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>, linux-parisc@vger.kernel.org,
 linux-mips@vger.kernel.org, Christian Koenig <christian.koenig@amd.com>,
 linuxppc-dev@lists.ozlabs.org, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ira Weiny <ira.weiny@intel.com>

parisc reimplements the kmap calls except to flush it's dcache.  This is
arguably an abuse of kmap but regardless it is messy and confusing.

Remove the duplicate code and have parisc define
ARCH_HAS_FLUSH_ON_KUNMAP for a kunmap_flush_on_unmap() architecture
specific call to flush the cache.

Suggested-by: Al Viro <viro@zeniv.linux.org.uk>
Signed-off-by: Ira Weiny <ira.weiny@intel.com>

---
Changes from V2:
	New Patch for this series
---
 arch/parisc/include/asm/cacheflush.h | 28 ++--------------------------
 include/linux/highmem.h              | 10 +++++++---
 2 files changed, 9 insertions(+), 29 deletions(-)

diff --git a/arch/parisc/include/asm/cacheflush.h b/arch/parisc/include/asm/cacheflush.h
index 119c9a7681bc..99663fc1f997 100644
--- a/arch/parisc/include/asm/cacheflush.h
+++ b/arch/parisc/include/asm/cacheflush.h
@@ -100,35 +100,11 @@ flush_anon_page(struct vm_area_struct *vma, struct page *page, unsigned long vma
 	}
 }
 
-#include <asm/kmap_types.h>
-
-#define ARCH_HAS_KMAP
-
-static inline void *kmap(struct page *page)
-{
-	might_sleep();
-	return page_address(page);
-}
-
-static inline void kunmap(struct page *page)
-{
-	flush_kernel_dcache_page_addr(page_address(page));
-}
-
-static inline void *kmap_atomic(struct page *page)
-{
-	preempt_disable();
-	pagefault_disable();
-	return page_address(page);
-}
-
-static inline void kunmap_atomic_high(void *addr)
+#define ARCH_HAS_FLUSH_ON_KUNMAP
+static inline void kunmap_flush_on_unmap(void *addr)
 {
 	flush_kernel_dcache_page_addr(addr);
 }
 
-#define kmap_atomic_prot(page, prot)	kmap_atomic(page)
-#define kmap_atomic_pfn(pfn)	kmap_atomic(pfn_to_page(pfn))
-
 #endif /* _PARISC_CACHEFLUSH_H */
 
diff --git a/include/linux/highmem.h b/include/linux/highmem.h
index 89838306f50d..cc0c3904e501 100644
--- a/include/linux/highmem.h
+++ b/include/linux/highmem.h
@@ -129,7 +129,6 @@ static inline struct page *kmap_to_page(void *addr)
 
 static inline unsigned long totalhigh_pages(void) { return 0UL; }
 
-#ifndef ARCH_HAS_KMAP
 static inline void *kmap(struct page *page)
 {
 	might_sleep();
@@ -138,6 +137,9 @@ static inline void *kmap(struct page *page)
 
 static inline void kunmap(struct page *page)
 {
+#ifdef ARCH_HAS_FLUSH_ON_KUNMAP
+	kunmap_flush_on_unmap(page_address(page));
+#endif
 }
 
 static inline void *kmap_atomic(struct page *page)
@@ -150,14 +152,16 @@ static inline void *kmap_atomic(struct page *page)
 
 static inline void kunmap_atomic_high(void *addr)
 {
-	/* Nothing to do in the CONFIG_HIGHMEM=n case as kunmap_atomic()
+	/* Mostly nothing to do in the CONFIG_HIGHMEM=n case as kunmap_atomic()
 	 * handles re-enabling faults + preemption */
+#ifdef ARCH_HAS_FLUSH_ON_KUNMAP
+	kunmap_flush_on_unmap(addr);
+#endif
 }
 
 #define kmap_atomic_pfn(pfn)	kmap_atomic(pfn_to_page(pfn))
 
 #define kmap_flush_unused()	do {} while(0)
-#endif
 
 #endif /* CONFIG_HIGHMEM */
 
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
