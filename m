Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7406B1B8CBD
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 07:55:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0nAJDKHQslmZI3gLdQAajyKnBv5O79cVqL+bvNUvznE=; b=j//ZuRYBhAn4IW
	6ZxIpvke5LPDuXR3gPfpSfjZOtfcZ9xJQx/Gxs2xEQLW2INiJ4ZcjMI6naG8Aad6NzzTZ58UcAS/U
	GDD0/XbnPBBsGYMzfxeVTOPnGyvqLbP1m6yilUxPhQkiWHBM8T+Vxqv2qIZBIWS07yPYCt/IFm2RO
	OgFe4hz2QCKsd26jIwRT6Ct2l3S5PI2a7bL58/ER/SeyG2y9P34DNMxZjoKKChIbiOL1lcm2j59yV
	GwLTmF1GBaRXswiGMAZw+TANKgs5ep4BenlfUNDdEvXtuNh+1Fmg8ZLcJkgMJXY+Txlz0O4glbjFc
	ZghWsNadZ8xJxbY278BQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSaFi-00043F-30; Sun, 26 Apr 2020 05:54:54 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSaFH-0003rz-Am; Sun, 26 Apr 2020 05:54:28 +0000
IronPort-SDR: ZgoeIZ50wETB7EmEch6hZsJCCTbOrOiWK4qgSudL67A/dzLkFQpYCz51aIoCZUdubWTam/yb7y
 dstQ28Sf1xqQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2020 22:54:24 -0700
IronPort-SDR: ULIPpftXlRuZVncLUHSwuauSzU7AMt8SQ3FSLW4e25oH6OANV+RbXbJFufO4yzakpq0D15kNUU
 6n3sFI9wk+2w==
X-IronPort-AV: E=Sophos;i="5.73,319,1583222400"; d="scan'208";a="245732999"
Received: from iweiny-desk2.sc.intel.com (HELO localhost) ([10.3.52.147])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2020 22:54:23 -0700
From: ira.weiny@intel.com
To: linux-kernel@vger.kernel.org,
	Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH 5/5] arch/kunmap_atomic: Consolidate duplicate code
Date: Sat, 25 Apr 2020 22:54:06 -0700
Message-Id: <20200426055406.134198-6-ira.weiny@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200426055406.134198-1-ira.weiny@intel.com>
References: <20200426055406.134198-1-ira.weiny@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_225427_430708_58BD6C03 
X-CRM114-Status: GOOD (  12.05  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
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
 Dave Hansen <dave.hansen@linux.intel.com>,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 Max Filippov <jcmvbkbc@gmail.com>, Paul Mackerras <paulus@samba.org>,
 "H. Peter Anvin" <hpa@zytor.com>, sparclinux@vger.kernel.org,
 Ira Weiny <ira.weiny@intel.com>, Dan Williams <dan.j.williams@intel.com>,
 Helge Deller <deller@gmx.de>, x86@kernel.org, linux-csky@vger.kernel.org,
 Ingo Molnar <mingo@redhat.com>, linux-snps-arc@lists.infradead.org,
 linux-xtensa@linux-xtensa.org, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, Chris Zankel <chris@zankel.net>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>, linux-parisc@vger.kernel.org,
 linux-mips@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ira Weiny <ira.weiny@intel.com>

Every single architecture (including !CONFIG_HIGHMEM) calls...

	pagefault_enable();
	preempt_enable();

... before returning from __kunmap_atomic().  Lift this code into the
kunmap_atomic() macro.

Reviewed-by: Dan Williams <dan.j.williams@intel.com>
Signed-off-by: Ira Weiny <ira.weiny@intel.com>
---
 arch/arc/mm/highmem.c                | 3 ---
 arch/arm/mm/highmem.c                | 2 --
 arch/csky/mm/highmem.c               | 5 +----
 arch/microblaze/mm/highmem.c         | 2 --
 arch/mips/mm/highmem.c               | 2 --
 arch/nds32/mm/highmem.c              | 2 --
 arch/parisc/include/asm/cacheflush.h | 2 --
 arch/powerpc/mm/highmem.c            | 2 --
 arch/sparc/mm/highmem.c              | 2 --
 arch/x86/mm/highmem_32.c             | 3 ---
 arch/xtensa/mm/highmem.c             | 3 ---
 include/linux/highmem.h              | 6 ++++--
 12 files changed, 5 insertions(+), 29 deletions(-)

diff --git a/arch/arc/mm/highmem.c b/arch/arc/mm/highmem.c
index 1cae4b911a33..0725fc56b016 100644
--- a/arch/arc/mm/highmem.c
+++ b/arch/arc/mm/highmem.c
@@ -91,9 +91,6 @@ void __kunmap_atomic(void *kv)
 
 		kmap_atomic_idx_pop();
 	}
-
-	pagefault_enable();
-	preempt_enable();
 }
 EXPORT_SYMBOL(__kunmap_atomic);
 
diff --git a/arch/arm/mm/highmem.c b/arch/arm/mm/highmem.c
index 4a629f616a6a..4983bf18ec32 100644
--- a/arch/arm/mm/highmem.c
+++ b/arch/arm/mm/highmem.c
@@ -98,8 +98,6 @@ void __kunmap_atomic(void *kvaddr)
 		/* this address was obtained through kmap_high_get() */
 		kunmap_high(pte_page(pkmap_page_table[PKMAP_NR(vaddr)]));
 	}
-	pagefault_enable();
-	preempt_enable();
 }
 EXPORT_SYMBOL(__kunmap_atomic);
 
diff --git a/arch/csky/mm/highmem.c b/arch/csky/mm/highmem.c
index 1191f57f53ae..106fa6773084 100644
--- a/arch/csky/mm/highmem.c
+++ b/arch/csky/mm/highmem.c
@@ -50,7 +50,7 @@ void __kunmap_atomic(void *kvaddr)
 	int idx;
 
 	if (vaddr < FIXADDR_START)
-		goto out;
+		return;
 
 #ifdef CONFIG_DEBUG_HIGHMEM
 	idx = KM_TYPE_NR*smp_processor_id() + kmap_atomic_idx();
@@ -63,9 +63,6 @@ void __kunmap_atomic(void *kvaddr)
 	(void) idx; /* to kill a warning */
 #endif
 	kmap_atomic_idx_pop();
-out:
-	pagefault_enable();
-	preempt_enable();
 }
 EXPORT_SYMBOL(__kunmap_atomic);
 
diff --git a/arch/microblaze/mm/highmem.c b/arch/microblaze/mm/highmem.c
index 99fdf826edc2..d382c6821747 100644
--- a/arch/microblaze/mm/highmem.c
+++ b/arch/microblaze/mm/highmem.c
@@ -81,7 +81,5 @@ void __kunmap_atomic(void *kvaddr)
 	local_flush_tlb_page(NULL, vaddr);
 
 	kmap_atomic_idx_pop();
-	pagefault_enable();
-	preempt_enable();
 }
 EXPORT_SYMBOL(__kunmap_atomic);
diff --git a/arch/mips/mm/highmem.c b/arch/mips/mm/highmem.c
index ba03ca75d4a1..5a3fc7e84e66 100644
--- a/arch/mips/mm/highmem.c
+++ b/arch/mips/mm/highmem.c
@@ -79,8 +79,6 @@ void __kunmap_atomic(void *kvaddr)
 	}
 #endif
 	kmap_atomic_idx_pop();
-	pagefault_enable();
-	preempt_enable();
 }
 EXPORT_SYMBOL(__kunmap_atomic);
 
diff --git a/arch/nds32/mm/highmem.c b/arch/nds32/mm/highmem.c
index 4aabde586489..b8862aafa189 100644
--- a/arch/nds32/mm/highmem.c
+++ b/arch/nds32/mm/highmem.c
@@ -49,8 +49,6 @@ void __kunmap_atomic(void *kvaddr)
 		ptep = pte_offset_kernel(pmd_off_k(vaddr), vaddr);
 		set_pte(ptep, 0);
 	}
-	pagefault_enable();
-	preempt_enable();
 }
 
 EXPORT_SYMBOL(__kunmap_atomic);
diff --git a/arch/parisc/include/asm/cacheflush.h b/arch/parisc/include/asm/cacheflush.h
index 0c83644bfa5c..c8458491b9af 100644
--- a/arch/parisc/include/asm/cacheflush.h
+++ b/arch/parisc/include/asm/cacheflush.h
@@ -125,8 +125,6 @@ static inline void *kmap_atomic(struct page *page)
 static inline void __kunmap_atomic(void *addr)
 {
 	flush_kernel_dcache_page_addr(addr);
-	pagefault_enable();
-	preempt_enable();
 }
 
 #define kmap_atomic_prot(page, prot)	kmap_atomic(page)
diff --git a/arch/powerpc/mm/highmem.c b/arch/powerpc/mm/highmem.c
index cdf5b716801a..7dfccf519621 100644
--- a/arch/powerpc/mm/highmem.c
+++ b/arch/powerpc/mm/highmem.c
@@ -76,7 +76,5 @@ void __kunmap_atomic(void *kvaddr)
 	}
 
 	kmap_atomic_idx_pop();
-	pagefault_enable();
-	preempt_enable();
 }
 EXPORT_SYMBOL(__kunmap_atomic);
diff --git a/arch/sparc/mm/highmem.c b/arch/sparc/mm/highmem.c
index 178641805567..7a99a1097f67 100644
--- a/arch/sparc/mm/highmem.c
+++ b/arch/sparc/mm/highmem.c
@@ -130,7 +130,5 @@ void __kunmap_atomic(void *kvaddr)
 #endif
 
 	kmap_atomic_idx_pop();
-	pagefault_enable();
-	preempt_enable();
 }
 EXPORT_SYMBOL(__kunmap_atomic);
diff --git a/arch/x86/mm/highmem_32.c b/arch/x86/mm/highmem_32.c
index 34770499b0ff..b20e81b2b833 100644
--- a/arch/x86/mm/highmem_32.c
+++ b/arch/x86/mm/highmem_32.c
@@ -78,9 +78,6 @@ void __kunmap_atomic(void *kvaddr)
 		BUG_ON(vaddr >= (unsigned long)high_memory);
 	}
 #endif
-
-	pagefault_enable();
-	preempt_enable();
 }
 EXPORT_SYMBOL(__kunmap_atomic);
 
diff --git a/arch/xtensa/mm/highmem.c b/arch/xtensa/mm/highmem.c
index 38c14e0b578c..9a49263e4cd6 100644
--- a/arch/xtensa/mm/highmem.c
+++ b/arch/xtensa/mm/highmem.c
@@ -77,9 +77,6 @@ void __kunmap_atomic(void *kvaddr)
 
 		kmap_atomic_idx_pop();
 	}
-
-	pagefault_enable();
-	preempt_enable();
 }
 EXPORT_SYMBOL(__kunmap_atomic);
 
diff --git a/include/linux/highmem.h b/include/linux/highmem.h
index eee53e151900..94145d4200ab 100644
--- a/include/linux/highmem.h
+++ b/include/linux/highmem.h
@@ -133,8 +133,8 @@ static inline void *kmap_atomic(struct page *page)
 
 static inline void __kunmap_atomic(void *addr)
 {
-	pagefault_enable();
-	preempt_enable();
+	/* Nothing to do in the CONFIG_HIGHMEM=n case as kunmap_atomic()
+	 * handles re-enabling faults + preemption */
 }
 
 #define kmap_atomic_pfn(pfn)	kmap_atomic(pfn_to_page(pfn))
@@ -185,6 +185,8 @@ static inline void kmap_atomic_idx_pop(void)
 do {                                                            \
 	BUILD_BUG_ON(__same_type((addr), struct page *));       \
 	__kunmap_atomic(addr);                                  \
+	pagefault_enable();                                     \
+	preempt_enable();                                       \
 } while (0)
 
 
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
