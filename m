Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13ACC105E9F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 03:24:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1TZpLJlgPXGj4vbaR3FEt+mE/geGRKKtSLUsCV8qpxg=; b=rWAzaFNiAam4qu
	zPCFp+Q/QCraTf7GuRS1B7KJeLEeHqIyIdM0NcAd3JXCDSYBF0579UN8CCsfuFj/ivENkG5taoKBw
	+4OhrrAVeLCP0OB++b6sD2pdufdxScBrBPA1sR0UP8gWGTEbCV8o+w2ZwxkS04L15/mcsWUL83yCg
	RIDY4LjdAWs0Xbrj3G7EGUHtm4o/oDpcsNaGC68NaZ1Ko6HKVFsgXZq6oEvHebgFqzETrKZkolNQi
	zHm6L7g131ngzYzI4t491emVumwVU/qD6s3xQuCWnw/hBIbmZT5ceaRamurBJe+IQiW0Xle0kybA9
	+pV8n7K8HODKvjOfrXOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXycp-0005hr-9L; Fri, 22 Nov 2019 02:24:47 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXycI-0005W9-NK
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 02:24:16 +0000
Received: by mail-qt1-x843.google.com with SMTP id t8so6135859qtc.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 Nov 2019 18:24:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=HgQtjc5acLHzjiwVf/zPdL0W3rJRgxp/Mq6B1WIDDxY=;
 b=NCJD76glok7tVpPWeRPMFMOTsJyN4W7x2c/GCYOWTwrHjqgkhGGyM4V97AkUHi7MJ8
 KGTYQXByuaFA/HeJ/VPbTjcCKJ1GKPTm/770K7AeT6xPogT8ulU3rOP9qd11J7e3lcP1
 QpEXRRxNPL/pyJn7e5Km8+UTwxnuBqX2xB6z45Aodil6sdu5WtiHlqtHjexiVH9xBs9h
 zn9vt/ZcjNmX4zQzavX5aYNETygv+Fy21dmaPT6M8AV/hr7nhpf+0pCuDj86VttXSygY
 B+SFKXJNsZUDaDYm066fXl8fGA4gF2/m3CEO9ntre4m2w/kNPPa7QP6LMBMl3WSEEyFs
 xtLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=HgQtjc5acLHzjiwVf/zPdL0W3rJRgxp/Mq6B1WIDDxY=;
 b=i/7FFxd6GfzEIgQV8hz5MFvNg6QkbHzSza9Vey+DjCYcXESCMBaZJ460IsoAuvLW4l
 e0JsfOPwVcwN44R9KXw8nZNKVcn9CVcbJToSxOcB9Oq3gqK2IJ0ZiAqsiyBja5PTjj7d
 A1rXJc1GHzadB1h7LK9WF/tpAOnZ2cjDuGmN2YVzfIGmaVgVa49CQQceMTAbWsPv6PzT
 AwLR+gn3o2G5daobxTbZqgqQygtdUDdriFCABickKHnSJ500Q0z/B99+MoezJEfTkB8m
 KM4YG2vKcFqHn5GDIhgkGZlt96N5aKi2OixkvjWaTc1jXMgTq2CC2HEL3yjhLUqtTfH6
 Hhcg==
X-Gm-Message-State: APjAAAVsK9qXE3olzyxS3my7E1EN87jtRB6ToRko1bs6CsWD9ea15lyL
 G5cvjirNDMn+1XlSSEwmd5iHWg==
X-Google-Smtp-Source: APXvYqyII7bwvpdPFvB1uClYqq9YlCH8qAJI5DdRg1eAxlpjXNOJ/Xqjeo/s4oaH3hLXKnjnqntnXg==
X-Received: by 2002:ac8:1084:: with SMTP id a4mr12202956qtj.114.1574389451666; 
 Thu, 21 Nov 2019 18:24:11 -0800 (PST)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id z5sm2609801qtm.9.2019.11.21.18.24.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Nov 2019 18:24:11 -0800 (PST)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 linux-kernel@vger.kernel.org, catalin.marinas@arm.com, will@kernel.org,
 steve.capper@arm.com, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 mark.rutland@arm.com, tglx@linutronix.de, gregkh@linuxfoundation.org,
 allison@lohutok.net, info@metux.net, alexios.zavras@intel.com,
 sstabellini@kernel.org, boris.ostrovsky@oracle.com, jgross@suse.com,
 stefan@agner.ch, yamada.masahiro@socionext.com,
 xen-devel@lists.xenproject.org, linux@armlinux.org.uk
Subject: [PATCH v2 2/3] arm64: remove uaccess_ttbr0 asm macros from cache
 functions
Date: Thu, 21 Nov 2019 21:24:05 -0500
Message-Id: <20191122022406.590141-3-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191122022406.590141-1-pasha.tatashin@soleen.com>
References: <20191122022406.590141-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_182414_759299_1F4507A4 
X-CRM114-Status: UNSURE (   9.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Replace the uaccess_ttbr0_disable/uaccess_ttbr0_enable via
inline variants, and remove asm macros.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
---
 arch/arm64/include/asm/asm-uaccess.h | 22 ----------------
 arch/arm64/include/asm/cacheflush.h  | 38 +++++++++++++++++++++++++---
 arch/arm64/mm/cache.S                | 30 ++++++++--------------
 arch/arm64/mm/flush.c                |  2 +-
 4 files changed, 46 insertions(+), 46 deletions(-)

diff --git a/arch/arm64/include/asm/asm-uaccess.h b/arch/arm64/include/asm/asm-uaccess.h
index 35e6145e1402..8f763e5b41b1 100644
--- a/arch/arm64/include/asm/asm-uaccess.h
+++ b/arch/arm64/include/asm/asm-uaccess.h
@@ -34,27 +34,5 @@
 	msr	ttbr0_el1, \tmp1		// set the non-PAN TTBR0_EL1
 	isb
 	.endm
-
-	.macro	uaccess_ttbr0_disable, tmp1, tmp2
-alternative_if_not ARM64_HAS_PAN
-	save_and_disable_irq \tmp2		// avoid preemption
-	__uaccess_ttbr0_disable \tmp1
-	restore_irq \tmp2
-alternative_else_nop_endif
-	.endm
-
-	.macro	uaccess_ttbr0_enable, tmp1, tmp2, tmp3
-alternative_if_not ARM64_HAS_PAN
-	save_and_disable_irq \tmp3		// avoid preemption
-	__uaccess_ttbr0_enable \tmp1, \tmp2
-	restore_irq \tmp3
-alternative_else_nop_endif
-	.endm
-#else
-	.macro	uaccess_ttbr0_disable, tmp1, tmp2
-	.endm
-
-	.macro	uaccess_ttbr0_enable, tmp1, tmp2, tmp3
-	.endm
 #endif
 #endif
diff --git a/arch/arm64/include/asm/cacheflush.h b/arch/arm64/include/asm/cacheflush.h
index 665c78e0665a..cdd4a8eb8708 100644
--- a/arch/arm64/include/asm/cacheflush.h
+++ b/arch/arm64/include/asm/cacheflush.h
@@ -61,16 +61,48 @@
  *		- kaddr  - page address
  *		- size   - region size
  */
-extern void __flush_icache_range(unsigned long start, unsigned long end);
-extern int  invalidate_icache_range(unsigned long start, unsigned long end);
+extern void __arch_flush_icache_range(unsigned long start, unsigned long end);
+extern long __arch_flush_cache_user_range(unsigned long start,
+					  unsigned long end);
+extern int  arch_invalidate_icache_range(unsigned long start,
+					 unsigned long end);
+
 extern void __flush_dcache_area(void *addr, size_t len);
 extern void __inval_dcache_area(void *addr, size_t len);
 extern void __clean_dcache_area_poc(void *addr, size_t len);
 extern void __clean_dcache_area_pop(void *addr, size_t len);
 extern void __clean_dcache_area_pou(void *addr, size_t len);
-extern long __flush_cache_user_range(unsigned long start, unsigned long end);
 extern void sync_icache_aliases(void *kaddr, unsigned long len);
 
+static inline void __flush_icache_range(unsigned long start, unsigned long end)
+{
+	uaccess_ttbr0_enable();
+	__arch_flush_icache_range(start, end);
+	uaccess_ttbr0_disable();
+}
+
+static inline void __flush_cache_user_range(unsigned long start,
+					    unsigned long end)
+{
+	uaccess_ttbr0_enable();
+	__arch_flush_cache_user_range(start, end);
+	uaccess_ttbr0_disable();
+}
+
+static inline int invalidate_icache_range(unsigned long start,
+					  unsigned long end)
+{
+	int rv;
+#if ARM64_HAS_CACHE_DIC
+	rv = arch_invalidate_icache_range(start, end);
+#else
+	uaccess_ttbr0_enable();
+	rv = arch_invalidate_icache_range(start, end);
+	uaccess_ttbr0_disable();
+#endif
+	return rv;
+}
+
 static inline void flush_icache_range(unsigned long start, unsigned long end)
 {
 	__flush_icache_range(start, end);
diff --git a/arch/arm64/mm/cache.S b/arch/arm64/mm/cache.S
index db767b072601..408d317a47d2 100644
--- a/arch/arm64/mm/cache.S
+++ b/arch/arm64/mm/cache.S
@@ -15,7 +15,7 @@
 #include <asm/asm-uaccess.h>
 
 /*
- *	flush_icache_range(start,end)
+ *	__arch_flush_icache_range(start,end)
  *
  *	Ensure that the I and D caches are coherent within specified region.
  *	This is typically used when code has been written to a memory region,
@@ -24,11 +24,11 @@
  *	- start   - virtual start address of region
  *	- end     - virtual end address of region
  */
-ENTRY(__flush_icache_range)
+ENTRY(__arch_flush_icache_range)
 	/* FALLTHROUGH */
 
 /*
- *	__flush_cache_user_range(start,end)
+ *	__arch_flush_cache_user_range(start,end)
  *
  *	Ensure that the I and D caches are coherent within specified region.
  *	This is typically used when code has been written to a memory region,
@@ -37,8 +37,7 @@ ENTRY(__flush_icache_range)
  *	- start   - virtual start address of region
  *	- end     - virtual end address of region
  */
-ENTRY(__flush_cache_user_range)
-	uaccess_ttbr0_enable x2, x3, x4
+ENTRY(__arch_flush_cache_user_range)
 alternative_if ARM64_HAS_CACHE_IDC
 	dsb	ishst
 	b	7f
@@ -60,14 +59,11 @@ alternative_if ARM64_HAS_CACHE_DIC
 alternative_else_nop_endif
 	invalidate_icache_by_line x0, x1, x2, x3, 9f
 8:	mov	x0, #0
-1:
-	uaccess_ttbr0_disable x1, x2
-	ret
-9:
-	mov	x0, #-EFAULT
+1:	ret
+9:	mov	x0, #-EFAULT
 	b	1b
-ENDPROC(__flush_icache_range)
-ENDPROC(__flush_cache_user_range)
+ENDPROC(__arch_flush_icache_range)
+ENDPROC(__arch_flush_cache_user_range)
 
 /*
  *	invalidate_icache_range(start,end)
@@ -83,16 +79,10 @@ alternative_if ARM64_HAS_CACHE_DIC
 	isb
 	ret
 alternative_else_nop_endif
-
-	uaccess_ttbr0_enable x2, x3, x4
-
 	invalidate_icache_by_line x0, x1, x2, x3, 2f
 	mov	x0, xzr
-1:
-	uaccess_ttbr0_disable x1, x2
-	ret
-2:
-	mov	x0, #-EFAULT
+1:	ret
+2:	mov	x0, #-EFAULT
 	b	1b
 ENDPROC(invalidate_icache_range)
 
diff --git a/arch/arm64/mm/flush.c b/arch/arm64/mm/flush.c
index ac485163a4a7..66249fca2092 100644
--- a/arch/arm64/mm/flush.c
+++ b/arch/arm64/mm/flush.c
@@ -75,7 +75,7 @@ EXPORT_SYMBOL(flush_dcache_page);
 /*
  * Additional functions defined in assembly.
  */
-EXPORT_SYMBOL(__flush_icache_range);
+EXPORT_SYMBOL(__arch_flush_icache_range);
 
 #ifdef CONFIG_ARCH_HAS_PMEM_API
 void arch_wb_cache_pmem(void *addr, size_t size)
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
