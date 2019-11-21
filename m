Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C52761059ED
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 19:49:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1TZpLJlgPXGj4vbaR3FEt+mE/geGRKKtSLUsCV8qpxg=; b=GUvcejSUBDyfKE
	G4XFe+yX3JZckFNlMs31Nu3Lf3wKIE/S/UFbKirPVpZ4b7YRc921QtGNoBJ5E7ZohcM5dLF6dM8yu
	Ksn1j6awv2oZaO9vg8J49t9RXvNSNQS7rj3FSXt05VQ6eBo+mWv+Zhvi+ZOssrshryAmo2ecflHcn
	GSNcPoiO5I1i2TERrnL/0T7ziF40WdXm0sEjev1+x/e5N4i26bQyH0Ehw6MiHB7lTPpavzGz5kTUD
	CYP46VVHM4Fr/YbTFm5/o5Bi80RGo+fdMsO4d1S/NeA+Zl3YH1EixDDr3UgkF0oR2DbnvsI+R16tJ
	GN2qRRQSRCQ8T3g4KTOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXrVl-0000ve-Ol; Thu, 21 Nov 2019 18:49:01 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXrUy-0000VM-9E
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 18:48:14 +0000
Received: by mail-qt1-x844.google.com with SMTP id t20so4808131qtn.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 Nov 2019 10:48:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=HgQtjc5acLHzjiwVf/zPdL0W3rJRgxp/Mq6B1WIDDxY=;
 b=D8TF57oZonJsJ7ptNQX1Oql+1bGPweH7IQDgGXFghl6XLlpJMfByo9jtn6lWNVKneh
 s2cJgTr1kQWATQJrBvnkf95d+I3h7dwVBG/raggpy0IJob7OGHVHg9IPdtDdarosd954
 KFR3q4XmVCuDk6cTsFQy47BxZ22+ZDDQIEsZIop543H+GCFV/vAHhe7jJIwfww5UYbL5
 Gs9GL4HTjVd2fG46M2jukbPbRS4huhvRfKChueNRZEhzrnriSSgwr01jRIkK+k34OPaf
 xGvsJeSVsHNnl3tY0THdt6/yxjIzUUj/KIQb1SVBDN0kj4MtWe+F1Muehw4EuSxPRpXX
 0l4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=HgQtjc5acLHzjiwVf/zPdL0W3rJRgxp/Mq6B1WIDDxY=;
 b=a022MvsBU+PgRkNrdQ7yevIpjRJZ1F3SsRzlLZ8DmSR8endwo/Qfb1PQvLj6icVY8+
 xQi7++Y53kcB+2vYJXMlbrngcvZO0HxhOlOZfAB5o4KAt4Nrt6Jse5VFWk9Zgoq4sA2d
 xIedqSniPEMAOR4rVtFa2pRWrmEu7ukQh364HeJ9Xd3cGv2YWxx4zAJAABICFBWKm7R9
 4GRQ9yQgHzdxhAqne6IdN+qPWW0OgpET89uH8HZSDGNE45VkQBOK70IftkCs0+Tuv6Zw
 1ByVykCMADIL3PW6faVICsbNUgPCSSDj4kAYLjaUm0WYcjP5j2U+lF4jp/6ccZJB1XKL
 gb9Q==
X-Gm-Message-State: APjAAAWT3f8N9EardNT6CI5jvpy4VtNcEFJSPxG1O1Xn/ByfvON0P+XE
 S7YjBkP6uyZOwTSxbqwkZU3ZUA==
X-Google-Smtp-Source: APXvYqyC5mwODRFAu6hCA10XUD/HEGjTmVXQZnPp2NesFrAjEuQLsTPPaA4uJEbcoHdfWmybnns7cA==
X-Received: by 2002:ac8:7444:: with SMTP id h4mr10138097qtr.102.1574362091132; 
 Thu, 21 Nov 2019 10:48:11 -0800 (PST)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id t2sm1811634qkt.95.2019.11.21.10.48.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Nov 2019 10:48:10 -0800 (PST)
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
Date: Thu, 21 Nov 2019 13:48:04 -0500
Message-Id: <20191121184805.414758-3-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191121184805.414758-1-pasha.tatashin@soleen.com>
References: <20191121184805.414758-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_104812_352233_DA441F0E 
X-CRM114-Status: UNSURE (   9.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
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
