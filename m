Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58DFE10B602
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 19:45:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i5j8Qpg2ZlRBypMBBPvzXn6NJbMzAfunGgdGwZP7ZOo=; b=k0FSmyIvKLZ7Wy
	2PkBy51MqGu/usE1G091e7RXj4JahIRZ/kaiMl+4nhJoOOjp0201bZcohimoeKaF5M5l+z5p9LEc8
	WgJto8eMUK1Esi/QQIq6hTiAiNxXjLbb/Y+xXCvtxLDnFFmPNnCX5ITcTqqAuzQ98zHaUrhJrLoZU
	ieNAMmNaGwfbuvmhZQyoBLNi0UkbpdazMXf02vDox4XW1556FBWBquSBlINbOjNzYbXHW54ZquTbw
	T9OVTyjqv1sOV9lJPEAnq0hxNXLZzXF6uT+dCw51BfoCMM4sqK2QnvTjhNTrC4WcuEdnii8jiijmH
	75YGZJYrvOnwTi9/p5lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ia2Jt-0002BP-5b; Wed, 27 Nov 2019 18:45:45 +0000
Received: from mail-qv1-xf42.google.com ([2607:f8b0:4864:20::f42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ia2JA-0000kz-TD
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 18:45:03 +0000
Received: by mail-qv1-xf42.google.com with SMTP id v16so9331029qvq.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 Nov 2019 10:45:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=9lPl6Jq4cYK2gojP+93gKcsx89x6uNAQ+LS+NmqUUhU=;
 b=IQsLDxJ+1VvjHD/P7eC7cAA4v7pBTTpIKgyonX2PX42sEHf/f/SKXneXyDBIlknS2r
 oIELbxkyYWw6JbpVPgNBOFnYRlCp6Br362toJf3SCfGcztLqkclw7ACoh7fDogq4pBtK
 re+SrGOuchzjshkDeb9CSCsDa6ss5XZDFOaQphuLrxn+gKsLt2ORYD1LWoWzNdPyb9N6
 kc2zITJLABah5HoRpMLGVXN9gKAi3DTawfv9mZ9nwsKWLXRlK/EaWipM1dsdz3hkZGX5
 RR+w9/UlQwePfQyXu6ondg/qhbrne1w+wbomDMRP2AgPE/1v+Plq9RlH8qbjRrM/T6Dy
 odRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9lPl6Jq4cYK2gojP+93gKcsx89x6uNAQ+LS+NmqUUhU=;
 b=M0OIQqn9Tvu2JFYBgT2PQ5yguaELivQb/StQIcOp+SkK5TOyxtLZqhCcyztqZtUnw8
 Joz35jDUDSqxBM2+lQ1uP8cLMCbRHkj/K4OUlBltJFM7Lj6U807nIecjVIxcyirKgEcM
 tvADM5WCia1F0a+XHPUkYA0Kyv4Oiyi9eH9kJ7QzbCkUShRpEC5Onb03uCRW50fCVmSL
 P75nl+iyjaS8htioCSMXo0nccv/IlM7uxYxQJmD8ZdcjLIMJiz0gZ9LgA9f11gHh38MF
 Bj83PbGlxgYeQuF+CNhm9aHWSRe0TYBvZcbRadVzHPmAV9IYMD0T0CO7Rw2Dya11d7MZ
 GhFg==
X-Gm-Message-State: APjAAAUKosrzvD8WFm+PiJc3IIRSJ0zix/avoqj7EM0eEpOak6DbabfS
 lEqnqh2E2xTL1Eb19pZnLwEIEA==
X-Google-Smtp-Source: APXvYqzmB2+/vCZ7yiPOaRcYDbuGKkTFb4dB7fx5MMvjqYVhbYaDdbIryOEqm0eCwEaXqsRLhNlikw==
X-Received: by 2002:a0c:dd01:: with SMTP id u1mr6637926qvk.69.1574880299262;
 Wed, 27 Nov 2019 10:44:59 -0800 (PST)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id o62sm2748024qte.76.2019.11.27.10.44.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 Nov 2019 10:44:58 -0800 (PST)
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
Subject: [PATCH 2/3] arm64: remove uaccess_ttbr0 asm macros from cache
 functions
Date: Wed, 27 Nov 2019 13:44:52 -0500
Message-Id: <20191127184453.229321-3-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191127184453.229321-1-pasha.tatashin@soleen.com>
References: <20191127184453.229321-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_104500_945323_FD6A0686 
X-CRM114-Status: GOOD (  11.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

We currently duplicate the logic to enable/disable uaccess via TTBR0,
with C functions and assembly macros. This is a maintenenace burden
and is liable to lead to subtle bugs, so let's get rid of the assembly
macros, and always use the C functions. This requires refactoring
some assembly functions to have a C wrapper.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
---
 arch/arm64/include/asm/asm-uaccess.h | 22 ---------------
 arch/arm64/include/asm/cacheflush.h  | 39 ++++++++++++++++++++++++--
 arch/arm64/mm/cache.S                | 41 +++++++++-------------------
 arch/arm64/mm/flush.c                |  2 +-
 4 files changed, 50 insertions(+), 54 deletions(-)

diff --git a/arch/arm64/include/asm/asm-uaccess.h b/arch/arm64/include/asm/asm-uaccess.h
index f68a0e64482a..fba2a69f7fef 100644
--- a/arch/arm64/include/asm/asm-uaccess.h
+++ b/arch/arm64/include/asm/asm-uaccess.h
@@ -34,28 +34,6 @@
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
index 665c78e0665a..c0b265e12d9d 100644
--- a/arch/arm64/include/asm/cacheflush.h
+++ b/arch/arm64/include/asm/cacheflush.h
@@ -61,16 +61,49 @@
  *		- kaddr  - page address
  *		- size   - region size
  */
-extern void __flush_icache_range(unsigned long start, unsigned long end);
-extern int  invalidate_icache_range(unsigned long start, unsigned long end);
+extern void __asm_flush_icache_range(unsigned long start, unsigned long end);
+extern long __asm_flush_cache_user_range(unsigned long start,
+					 unsigned long end);
+extern int  asm_invalidate_icache_range(unsigned long start,
+					unsigned long end);
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
+	__asm_flush_icache_range(start, end);
+	uaccess_ttbr0_disable();
+}
+
+static inline void __flush_cache_user_range(unsigned long start,
+					    unsigned long end)
+{
+	uaccess_ttbr0_enable();
+	__asm_flush_cache_user_range(start, end);
+	uaccess_ttbr0_disable();
+}
+
+static inline int invalidate_icache_range(unsigned long start,
+					  unsigned long end)
+{
+	int rv;
+
+	if (cpus_have_const_cap(ARM64_HAS_CACHE_DIC)) {
+		isb();
+		return 0;
+	}
+	uaccess_ttbr0_enable();
+	rv = asm_invalidate_icache_range(start, end);
+	uaccess_ttbr0_disable();
+
+	return rv;
+}
+
 static inline void flush_icache_range(unsigned long start, unsigned long end)
 {
 	__flush_icache_range(start, end);
diff --git a/arch/arm64/mm/cache.S b/arch/arm64/mm/cache.S
index db767b072601..a48b6dba304e 100644
--- a/arch/arm64/mm/cache.S
+++ b/arch/arm64/mm/cache.S
@@ -15,7 +15,7 @@
 #include <asm/asm-uaccess.h>
 
 /*
- *	flush_icache_range(start,end)
+ *	__asm_flush_icache_range(start,end)
  *
  *	Ensure that the I and D caches are coherent within specified region.
  *	This is typically used when code has been written to a memory region,
@@ -24,11 +24,11 @@
  *	- start   - virtual start address of region
  *	- end     - virtual end address of region
  */
-ENTRY(__flush_icache_range)
+ENTRY(__asm_flush_icache_range)
 	/* FALLTHROUGH */
 
 /*
- *	__flush_cache_user_range(start,end)
+ *	__asm_flush_cache_user_range(start,end)
  *
  *	Ensure that the I and D caches are coherent within specified region.
  *	This is typically used when code has been written to a memory region,
@@ -37,8 +37,7 @@ ENTRY(__flush_icache_range)
  *	- start   - virtual start address of region
  *	- end     - virtual end address of region
  */
-ENTRY(__flush_cache_user_range)
-	uaccess_ttbr0_enable x2, x3, x4
+ENTRY(__asm_flush_cache_user_range)
 alternative_if ARM64_HAS_CACHE_IDC
 	dsb	ishst
 	b	7f
@@ -60,41 +59,27 @@ alternative_if ARM64_HAS_CACHE_DIC
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
+ENDPROC(__asm_flush_icache_range)
+ENDPROC(__asm_flush_cache_user_range)
 
 /*
- *	invalidate_icache_range(start,end)
+ *	asm_invalidate_icache_range(start,end)
  *
  *	Ensure that the I cache is invalid within specified region.
  *
  *	- start   - virtual start address of region
  *	- end     - virtual end address of region
  */
-ENTRY(invalidate_icache_range)
-alternative_if ARM64_HAS_CACHE_DIC
-	mov	x0, xzr
-	isb
-	ret
-alternative_else_nop_endif
-
-	uaccess_ttbr0_enable x2, x3, x4
-
+ENTRY(asm_invalidate_icache_range)
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
-ENDPROC(invalidate_icache_range)
+ENDPROC(asm_invalidate_icache_range)
 
 /*
  *	__flush_dcache_area(kaddr, size)
diff --git a/arch/arm64/mm/flush.c b/arch/arm64/mm/flush.c
index ac485163a4a7..b23f34d23f31 100644
--- a/arch/arm64/mm/flush.c
+++ b/arch/arm64/mm/flush.c
@@ -75,7 +75,7 @@ EXPORT_SYMBOL(flush_dcache_page);
 /*
  * Additional functions defined in assembly.
  */
-EXPORT_SYMBOL(__flush_icache_range);
+EXPORT_SYMBOL(__asm_flush_icache_range);
 
 #ifdef CONFIG_ARCH_HAS_PMEM_API
 void arch_wb_cache_pmem(void *addr, size_t size)
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
