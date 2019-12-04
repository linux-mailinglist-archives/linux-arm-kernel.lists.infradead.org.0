Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C057113817
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 00:21:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZGp8hD82X/I+7IsNRBaDcjUArXhXfIru9P9r8clJTBY=; b=mioPViPrNsvsmg
	FR5VoMy35ccllQRnKrEUIkx49PaHuLP9lDlT6Hao5UKv6TibF5i18uAWsi1LRlwMD7dRySUISUySQ
	EJPsDym/SHOWL95WlaoCV8WNuPAkkd9ML4UL/f9iwJWichG0zT0dhHL1ezZ9o0YtO4krs/Uf8E+Dl
	oD4mgi1OHpADRvHV5WNWgK4hRUtqEbkjwe3TJbuH4F3xgMxYaK506B2DHMfyDLQALya+FMgubQmVb
	JP5y3LtVczMtx6avCgDsnq/g5+y8Yo+8Nosbee4iz/ZUpzX/f2KBpTILUh4N2l9f50Hae5lW0VsNp
	4s0+1MC6iVArWzG8EYDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icdxx-0005lw-My; Wed, 04 Dec 2019 23:21:53 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icdxE-00058x-1H
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 23:21:09 +0000
Received: by mail-qt1-x843.google.com with SMTP id 38so1533420qtb.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Dec 2019 15:21:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=0RbtzKmo7zfuXDWfdHWu8S+RDp64jOvNIHTxCP2zpR0=;
 b=fKNAmmzITxBQfPXz7RiuSqDCTIOORLjqiebWygrTmb5GDTbu93eab5NdPlECyOpMU1
 bQycVBBiTsagRqQDAGCHalnDsreTbhq9OWqSwczPtC0iabVeXCIWyNwd0zY5A6fpBGtw
 BKN9bogl0ZI2CpWCScOwSItvhV47o5YyeNqB95okJJ/07WqsxwdFQnmqfF0aEoQmNRGW
 G9oIP64Vb03Kc2uzWTDE43+VAdjamyPxWnLdmYP2P3SJ7BpquFgkFhH7kjELqP6DG1Ul
 Wta7gGcIqNYLhwCSGgM42gICune/wyBO6yMOLDUu6z+3PLXyyW4zCU2Z0Qz1OZkITWeg
 6Y6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0RbtzKmo7zfuXDWfdHWu8S+RDp64jOvNIHTxCP2zpR0=;
 b=KsNo6ecq2uaFlDfoREglPSszhQNtCcxolTtX/rHIQ+/MtTclyYchULIA3bryPcp2jE
 S4cPOuyQ2QSmGVbHfeO6GOn8fHxB9gKgJY6k8OvBEWYtu15qydv0DrKhmmBipnpS0zWT
 t7TL/hpbpLzfkvOIttasdCygHMcZPdsJ4Mysta2Nd0+MeaYjO4qnETHEqh2qOhC6s4g/
 tSKat8X7u46t4ZIgCq8laEbvwvtzvmfTzuHUnUjuDKlvPYn72OmCBBlx9zUrdB72aXm8
 4B2B2dUHiHwNjDiRV1+Mfa1wmcjI2w8y7AjuPypQm0zeeqvX/ukn796unVze3BR1QYk7
 c4NQ==
X-Gm-Message-State: APjAAAUjq+OXiM9ejgRT3gQGK0elB25dlYIEXI9PoxWZEKxYS92E/e2x
 ZVS1LDlUTUeSHN8kABfk5TGPSQ==
X-Google-Smtp-Source: APXvYqwGVxtioWa6fg8PFhgdMLvrQWhtfXdKPWJtuq4IqRERiBvIOMKkvDiPshqepZ26wP88iuia0w==
X-Received: by 2002:aed:31a2:: with SMTP id 31mr4461846qth.196.1575501666754; 
 Wed, 04 Dec 2019 15:21:06 -0800 (PST)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id t38sm4667864qta.78.2019.12.04.15.21.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Dec 2019 15:21:06 -0800 (PST)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 linux-kernel@vger.kernel.org, catalin.marinas@arm.com, will@kernel.org,
 steve.capper@arm.com, linux-arm-kernel@lists.infradead.org, maz@kernel.org,
 james.morse@arm.com, vladimir.murzin@arm.com, mark.rutland@arm.com,
 tglx@linutronix.de, gregkh@linuxfoundation.org, allison@lohutok.net,
 info@metux.net, alexios.zavras@intel.com, sstabellini@kernel.org,
 boris.ostrovsky@oracle.com, jgross@suse.com, stefan@agner.ch,
 yamada.masahiro@socionext.com, xen-devel@lists.xenproject.org,
 linux@armlinux.org.uk, andrew.cooper3@citrix.com, julien@xen.org
Subject: [PATCH v4 3/6] arm64: remove uaccess_ttbr0 asm macros from cache
 functions
Date: Wed,  4 Dec 2019 18:20:55 -0500
Message-Id: <20191204232058.2500117-4-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191204232058.2500117-1-pasha.tatashin@soleen.com>
References: <20191204232058.2500117-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_152108_107515_1936E65E 
X-CRM114-Status: GOOD (  10.48  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 arch/arm64/include/asm/asm-uaccess.h | 22 -----------------
 arch/arm64/include/asm/cacheflush.h  | 35 ++++++++++++++++++++++++---
 arch/arm64/mm/cache.S                | 36 ++++++++++------------------
 arch/arm64/mm/flush.c                |  2 +-
 4 files changed, 46 insertions(+), 49 deletions(-)

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
index 665c78e0665a..431f8da2dd02 100644
--- a/arch/arm64/include/asm/cacheflush.h
+++ b/arch/arm64/include/asm/cacheflush.h
@@ -61,16 +61,45 @@
  *		- kaddr  - page address
  *		- size   - region size
  */
-extern void __flush_icache_range(unsigned long start, unsigned long end);
-extern int  invalidate_icache_range(unsigned long start, unsigned long end);
+extern void __asm_flush_icache_range(unsigned long start, unsigned long end);
+extern long __asm_flush_cache_user_range(unsigned long start,
+					 unsigned long end);
+extern int  __asm_invalidate_icache_range(unsigned long start,
+					  unsigned long end);
 extern void __flush_dcache_area(void *addr, size_t len);
 extern void __inval_dcache_area(void *addr, size_t len);
 extern void __clean_dcache_area_poc(void *addr, size_t len);
 extern void __clean_dcache_area_pop(void *addr, size_t len);
 extern void __clean_dcache_area_pou(void *addr, size_t len);
-extern long __flush_cache_user_range(unsigned long start, unsigned long end);
 extern void sync_icache_aliases(void *kaddr, unsigned long len);
 
+static inline void __flush_cache_user_range(unsigned long start,
+					    unsigned long end)
+{
+	uaccess_ttbr0_enable();
+	__asm_flush_cache_user_range(start, end);
+	uaccess_ttbr0_disable();
+}
+
+static inline void __flush_icache_range(unsigned long start, unsigned long end)
+{
+	uaccess_ttbr0_enable();
+	__asm_flush_icache_range(start, end);
+	uaccess_ttbr0_disable();
+}
+
+static inline int invalidate_icache_range(unsigned long start,
+					  unsigned long end)
+{
+	int ret;
+
+	uaccess_ttbr0_enable();
+	ret = __asm_invalidate_icache_range(start, end);
+	uaccess_ttbr0_disable();
+
+	return ret;
+}
+
 static inline void flush_icache_range(unsigned long start, unsigned long end)
 {
 	__flush_icache_range(start, end);
diff --git a/arch/arm64/mm/cache.S b/arch/arm64/mm/cache.S
index db767b072601..602b9aa8603a 100644
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
@@ -60,41 +59,32 @@ alternative_if ARM64_HAS_CACHE_DIC
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
+ *	__asm_invalidate_icache_range(start,end)
  *
  *	Ensure that the I cache is invalid within specified region.
  *
  *	- start   - virtual start address of region
  *	- end     - virtual end address of region
  */
-ENTRY(invalidate_icache_range)
+ENTRY(__asm_invalidate_icache_range)
 alternative_if ARM64_HAS_CACHE_DIC
 	mov	x0, xzr
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
-ENDPROC(invalidate_icache_range)
+ENDPROC(__asm_invalidate_icache_range)
 
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
