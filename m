Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56B57117F2E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 05:48:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fW5vd9MN+cFpvjVd4gYuNTeYVJCGIhbqjpRgex8dhX0=; b=i17OPb6Bc1i6fE
	rhn1N4pcGbwbCHO9ilAzXgUsa3lyIeWcK3bO2Eu28XAVV5IT2kbYLV8fkcTarIIcBsBND41q8DpAg
	L65XX0Y8ej4onc4O0Fy2BGTD5ekx0MUPJJboxV4qA21ORirZRfAcFYOlEuGkHmMBm4PfI/Vq9ryjQ
	2u9Rh3iyYAlpxIs26CSdfd2B91S9LkftoDMeb5zgBy6Xoi378o0oC75YgjjRWPgmD8Dz2m/77sxU6
	m9JlieRCx9y4Gvmo7FWuCQ4/J4v4HY0p+RJQFRa5RlaOXf+aJIHHnYoDYG9lofLXP1NZwOg9IDQue
	t2LgUa35uW4q/nTtsIiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieXRG-0004Aw-6P; Tue, 10 Dec 2019 04:47:58 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieXQo-00043a-PV
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 04:47:32 +0000
Received: by mail-pj1-x1044.google.com with SMTP id g4so6855797pjs.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Dec 2019 20:47:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axtens.net; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Qz4EMw+QBJw2XWxTbQKVczK3wuv6III+QMaefXi4B1g=;
 b=O5nCdYx24XRHih+SobL+eWjqEusRBefcWBDsBAOpFVAMMe2QengfDnaGE/2eb0QLV2
 8SvJ9eVwh2xDfgv4uBgb6H0ZItjFdyKZ+Miq75UP9ce2bzPevxnMdJ0+S6UXrQPHQNOt
 ILMzn3kwdJAJNWxoffMwxSm2RUfbtz0r2eGag=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Qz4EMw+QBJw2XWxTbQKVczK3wuv6III+QMaefXi4B1g=;
 b=hFXMaWc5nrGz2vrUcrjYfvuWC23xICNk+EvTBfhXuQnVLCvtoJ6gZGOcUAqCSss7up
 msfYflKdHXcADO7JMllnNp4C12M8q8emwuA6mt7GHuV08yWSpqdMzf2ZLo7YdPhrwnEB
 BCGnw2BJAqZeiQ7p/qeOBVEM8NLivWCo4X3iiJPP8TbZg8sysy2iyZyabpvAGkMzY8rz
 jWouyvgFY5AOfZiaUzzgjF6d5/cBEpjwtdSjsQiEktdByzBVGFXiE0C5gsLJFogsYjxE
 2tuXX/gAlSAeVjYxtmApH6b5FcPgT9nyqGsiNARbGVtIG8Ea5w5RoOoFhyicbboOzi90
 IEDQ==
X-Gm-Message-State: APjAAAWZrcDKJLbuAFagzoY+evAjrQFDtceb0U3b9JTOD0V0pBsbKAf5
 jKZQnZ6IBeWptK0RzZzLcpvYJQ==
X-Google-Smtp-Source: APXvYqw7LnsjeT+HcbOOl/JAdXG9ZgiZpjPbgIlnkKCZPr9JzIqeMTG75gBMCWn5zm8HjDsTA4uL0A==
X-Received: by 2002:a17:90a:374f:: with SMTP id
 u73mr3243246pjb.22.1575953249787; 
 Mon, 09 Dec 2019 20:47:29 -0800 (PST)
Received: from localhost
 (2001-44b8-1113-6700-e460-0b66-7007-c654.static.ipv6.internode.on.net.
 [2001:44b8:1113:6700:e460:b66:7007:c654])
 by smtp.gmail.com with ESMTPSA id a14sm1176178pfn.22.2019.12.09.20.47.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Dec 2019 20:47:29 -0800 (PST)
From: Daniel Axtens <dja@axtens.net>
To: linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 linuxppc-dev@lists.ozlabs.org, linux-s390@vger.kernel.org,
 linux-xtensa@linux-xtensa.org, linux-arch@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, kasan-dev@googlegroups.com,
 christophe.leroy@c-s.fr, aneesh.kumar@linux.ibm.com, bsingharora@gmail.com
Subject: [PATCH v2 1/4] mm: define MAX_PTRS_PER_{PTE,PMD,PUD}
Date: Tue, 10 Dec 2019 15:47:11 +1100
Message-Id: <20191210044714.27265-2-dja@axtens.net>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191210044714.27265-1-dja@axtens.net>
References: <20191210044714.27265-1-dja@axtens.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_204730_849804_CA5F0C32 
X-CRM114-Status: GOOD (  16.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Daniel Axtens <dja@axtens.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

powerpc has boot-time configurable PTRS_PER_PTE, PMD and PUD. The
values are selected based on the MMU under which the kernel is
booted. This is much like how 4 vs 5-level paging on x86_64 leads to
boot-time configurable PTRS_PER_P4D.

So far, this hasn't leaked out of arch/powerpc. But with KASAN, we
have static arrays based on PTRS_PER_*, so for powerpc support must
provide constant upper bounds for generic code.

Define MAX_PTRS_PER_{PTE,PMD,PUD} for this purpose.

I have configured these constants:
 - in asm-generic headers
 - on arches that implement KASAN: x86, s390, arm64, xtensa and powerpc

I haven't wired up any other arches just yet - there is no user of
the constants outside of the KASAN code I add in the next patch, so
missing the constants on arches that don't support KASAN shouldn't
break anything.

Suggested-by: Christophe Leroy <christophe.leroy@c-s.fr>
Signed-off-by: Daniel Axtens <dja@axtens.net>
---
 arch/arm64/include/asm/pgtable-hwdef.h       | 3 +++
 arch/powerpc/include/asm/book3s/64/hash.h    | 4 ++++
 arch/powerpc/include/asm/book3s/64/pgtable.h | 7 +++++++
 arch/powerpc/include/asm/book3s/64/radix.h   | 5 +++++
 arch/s390/include/asm/pgtable.h              | 3 +++
 arch/x86/include/asm/pgtable_types.h         | 5 +++++
 arch/xtensa/include/asm/pgtable.h            | 1 +
 include/asm-generic/pgtable-nop4d-hack.h     | 9 +++++----
 include/asm-generic/pgtable-nopmd.h          | 9 +++++----
 include/asm-generic/pgtable-nopud.h          | 9 +++++----
 10 files changed, 43 insertions(+), 12 deletions(-)

diff --git a/arch/arm64/include/asm/pgtable-hwdef.h b/arch/arm64/include/asm/pgtable-hwdef.h
index d9fbd433cc17..485e1f3c5c6f 100644
--- a/arch/arm64/include/asm/pgtable-hwdef.h
+++ b/arch/arm64/include/asm/pgtable-hwdef.h
@@ -41,6 +41,7 @@
 #define ARM64_HW_PGTABLE_LEVEL_SHIFT(n)	((PAGE_SHIFT - 3) * (4 - (n)) + 3)
 
 #define PTRS_PER_PTE		(1 << (PAGE_SHIFT - 3))
+#define MAX_PTRS_PER_PTE	PTRS_PER_PTE
 
 /*
  * PMD_SHIFT determines the size a level 2 page table entry can map.
@@ -50,6 +51,7 @@
 #define PMD_SIZE		(_AC(1, UL) << PMD_SHIFT)
 #define PMD_MASK		(~(PMD_SIZE-1))
 #define PTRS_PER_PMD		PTRS_PER_PTE
+#define MAX_PTRS_PER_PMD	PTRS_PER_PMD
 #endif
 
 /*
@@ -60,6 +62,7 @@
 #define PUD_SIZE		(_AC(1, UL) << PUD_SHIFT)
 #define PUD_MASK		(~(PUD_SIZE-1))
 #define PTRS_PER_PUD		PTRS_PER_PTE
+#define MAX_PTRS_PER_PUD	PTRS_PER_PUD
 #endif
 
 /*
diff --git a/arch/powerpc/include/asm/book3s/64/hash.h b/arch/powerpc/include/asm/book3s/64/hash.h
index 2781ebf6add4..fce329b8452e 100644
--- a/arch/powerpc/include/asm/book3s/64/hash.h
+++ b/arch/powerpc/include/asm/book3s/64/hash.h
@@ -18,6 +18,10 @@
 #include <asm/book3s/64/hash-4k.h>
 #endif
 
+#define H_PTRS_PER_PTE		(1 << H_PTE_INDEX_SIZE)
+#define H_PTRS_PER_PMD		(1 << H_PMD_INDEX_SIZE)
+#define H_PTRS_PER_PUD		(1 << H_PUD_INDEX_SIZE)
+
 /* Bits to set in a PMD/PUD/PGD entry valid bit*/
 #define HASH_PMD_VAL_BITS		(0x8000000000000000UL)
 #define HASH_PUD_VAL_BITS		(0x8000000000000000UL)
diff --git a/arch/powerpc/include/asm/book3s/64/pgtable.h b/arch/powerpc/include/asm/book3s/64/pgtable.h
index b01624e5c467..209817235a44 100644
--- a/arch/powerpc/include/asm/book3s/64/pgtable.h
+++ b/arch/powerpc/include/asm/book3s/64/pgtable.h
@@ -231,6 +231,13 @@ extern unsigned long __pmd_frag_size_shift;
 #define PTRS_PER_PUD	(1 << PUD_INDEX_SIZE)
 #define PTRS_PER_PGD	(1 << PGD_INDEX_SIZE)
 
+#define MAX_PTRS_PER_PTE	((H_PTRS_PER_PTE > R_PTRS_PER_PTE) ? \
+				  H_PTRS_PER_PTE : R_PTRS_PER_PTE)
+#define MAX_PTRS_PER_PMD	((H_PTRS_PER_PMD > R_PTRS_PER_PMD) ? \
+				  H_PTRS_PER_PMD : R_PTRS_PER_PMD)
+#define MAX_PTRS_PER_PUD	((H_PTRS_PER_PUD > R_PTRS_PER_PUD) ? \
+				  H_PTRS_PER_PUD : R_PTRS_PER_PUD)
+
 /* PMD_SHIFT determines what a second-level page table entry can map */
 #define PMD_SHIFT	(PAGE_SHIFT + PTE_INDEX_SIZE)
 #define PMD_SIZE	(1UL << PMD_SHIFT)
diff --git a/arch/powerpc/include/asm/book3s/64/radix.h b/arch/powerpc/include/asm/book3s/64/radix.h
index d97db3ad9aae..4f826259de71 100644
--- a/arch/powerpc/include/asm/book3s/64/radix.h
+++ b/arch/powerpc/include/asm/book3s/64/radix.h
@@ -35,6 +35,11 @@
 #define RADIX_PMD_SHIFT		(PAGE_SHIFT + RADIX_PTE_INDEX_SIZE)
 #define RADIX_PUD_SHIFT		(RADIX_PMD_SHIFT + RADIX_PMD_INDEX_SIZE)
 #define RADIX_PGD_SHIFT		(RADIX_PUD_SHIFT + RADIX_PUD_INDEX_SIZE)
+
+#define R_PTRS_PER_PTE		(1 << RADIX_PTE_INDEX_SIZE)
+#define R_PTRS_PER_PMD		(1 << RADIX_PMD_INDEX_SIZE)
+#define R_PTRS_PER_PUD		(1 << RADIX_PUD_INDEX_SIZE)
+
 /*
  * Size of EA range mapped by our pagetables.
  */
diff --git a/arch/s390/include/asm/pgtable.h b/arch/s390/include/asm/pgtable.h
index 7b03037a8475..3b491ce52ed2 100644
--- a/arch/s390/include/asm/pgtable.h
+++ b/arch/s390/include/asm/pgtable.h
@@ -342,6 +342,9 @@ static inline int is_module_addr(void *addr)
 #define PTRS_PER_PGD	_CRST_ENTRIES
 
 #define MAX_PTRS_PER_P4D	PTRS_PER_P4D
+#define MAX_PTRS_PER_PUD	PTRS_PER_PUD
+#define MAX_PTRS_PER_PMD	PTRS_PER_PMD
+#define MAX_PTRS_PER_PTE	PTRS_PER_PTE
 
 /*
  * Segment table and region3 table entry encoding
diff --git a/arch/x86/include/asm/pgtable_types.h b/arch/x86/include/asm/pgtable_types.h
index ea7400726d7a..82d523db133b 100644
--- a/arch/x86/include/asm/pgtable_types.h
+++ b/arch/x86/include/asm/pgtable_types.h
@@ -257,6 +257,11 @@ enum page_cache_mode {
 # include <asm/pgtable_64_types.h>
 #endif
 
+/* There is no runtime switching of these sizes */
+#define MAX_PTRS_PER_PUD PTRS_PER_PUD
+#define MAX_PTRS_PER_PMD PTRS_PER_PMD
+#define MAX_PTRS_PER_PTE PTRS_PER_PTE
+
 #ifndef __ASSEMBLY__
 
 #include <linux/types.h>
diff --git a/arch/xtensa/include/asm/pgtable.h b/arch/xtensa/include/asm/pgtable.h
index 27ac17c9da09..5d6aa16ceae6 100644
--- a/arch/xtensa/include/asm/pgtable.h
+++ b/arch/xtensa/include/asm/pgtable.h
@@ -55,6 +55,7 @@
  * we don't really have any PMD directory physically.
  */
 #define PTRS_PER_PTE		1024
+#define MAX_PTRS_PER_PTE	1024
 #define PTRS_PER_PTE_SHIFT	10
 #define PTRS_PER_PGD		1024
 #define PGD_ORDER		0
diff --git a/include/asm-generic/pgtable-nop4d-hack.h b/include/asm-generic/pgtable-nop4d-hack.h
index 829bdb0d6327..6faa23f9e0b4 100644
--- a/include/asm-generic/pgtable-nop4d-hack.h
+++ b/include/asm-generic/pgtable-nop4d-hack.h
@@ -14,10 +14,11 @@
  */
 typedef struct { pgd_t pgd; } pud_t;
 
-#define PUD_SHIFT	PGDIR_SHIFT
-#define PTRS_PER_PUD	1
-#define PUD_SIZE	(1UL << PUD_SHIFT)
-#define PUD_MASK	(~(PUD_SIZE-1))
+#define PUD_SHIFT		PGDIR_SHIFT
+#define MAX_PTRS_PER_PUD	1
+#define PTRS_PER_PUD		1
+#define PUD_SIZE		(1UL << PUD_SHIFT)
+#define PUD_MASK		(~(PUD_SIZE-1))
 
 /*
  * The "pgd_xxx()" functions here are trivial for a folded two-level
diff --git a/include/asm-generic/pgtable-nopmd.h b/include/asm-generic/pgtable-nopmd.h
index 0d9b28cba16d..4a860f47f3e6 100644
--- a/include/asm-generic/pgtable-nopmd.h
+++ b/include/asm-generic/pgtable-nopmd.h
@@ -17,10 +17,11 @@ struct mm_struct;
  */
 typedef struct { pud_t pud; } pmd_t;
 
-#define PMD_SHIFT	PUD_SHIFT
-#define PTRS_PER_PMD	1
-#define PMD_SIZE  	(1UL << PMD_SHIFT)
-#define PMD_MASK  	(~(PMD_SIZE-1))
+#define PMD_SHIFT		PUD_SHIFT
+#define MAX_PTRS_PER_PMD	1
+#define PTRS_PER_PMD		1
+#define PMD_SIZE  		(1UL << PMD_SHIFT)
+#define PMD_MASK  		(~(PMD_SIZE-1))
 
 /*
  * The "pud_xxx()" functions here are trivial for a folded two-level
diff --git a/include/asm-generic/pgtable-nopud.h b/include/asm-generic/pgtable-nopud.h
index d3776cb494c0..1aef1b18edbc 100644
--- a/include/asm-generic/pgtable-nopud.h
+++ b/include/asm-generic/pgtable-nopud.h
@@ -18,10 +18,11 @@
  */
 typedef struct { p4d_t p4d; } pud_t;
 
-#define PUD_SHIFT	P4D_SHIFT
-#define PTRS_PER_PUD	1
-#define PUD_SIZE  	(1UL << PUD_SHIFT)
-#define PUD_MASK  	(~(PUD_SIZE-1))
+#define PUD_SHIFT		P4D_SHIFT
+#define MAX_PTRS_PER_PUD	1
+#define PTRS_PER_PUD		1
+#define PUD_SIZE  		(1UL << PUD_SHIFT)
+#define PUD_MASK  		(~(PUD_SIZE-1))
 
 /*
  * The "p4d_xxx()" functions here are trivial for a folded two-level
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
