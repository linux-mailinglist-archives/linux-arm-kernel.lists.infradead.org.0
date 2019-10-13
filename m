Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D80CD588F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 00:14:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0Tmq0uoRDVcQTqPKMOtU8S1iPY7UNDN3tw3lgZJZ7i0=; b=lX+g3fGCODlZrJ
	IZlrmsNSSRe+G9KvAXYNBSe/EBweliD5mXrAA515I2jHM2Cz8bYvnZ+0FYNREiSaixLUBjJJOr153
	CX9OS8U0zc1cUMEJ7uZdGupAgt1fzWSZmG+65WOeIackF+8etmXuvCqejQQ2SzlM7blJ1ejawpS/b
	MQKnCePsw+cRnOQEFlw3bcQCDBv4MAASvbzEEsqFU+n8AYXjce71cugNYMaqY1DrJPT9N98a2j1l0
	knBo6FOCpMdwld8gEdnNdX9rFYzzNf8ylcKst5Ekw9NosziJiczXD/Iz/wAaBzGrjrLclvS43VeDd
	5qipGUHQsb1neJpmMSPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJm8C-0006dB-1F; Sun, 13 Oct 2019 22:14:28 +0000
Received: from chamillionaire.breakpoint.cc ([2a0a:51c0:0:12e:520::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJm7h-0006Qa-Lc
 for linux-arm-kernel@lists.infradead.org; Sun, 13 Oct 2019 22:13:59 +0000
Received: from localhost ([127.0.0.1] helo=flow.W.breakpoint.cc)
 by Chamillionaire.breakpoint.cc with esmtp (Exim 4.92)
 (envelope-from <sebastian@breakpoint.cc>)
 id 1iJm7d-00089S-Jo; Mon, 14 Oct 2019 00:13:54 +0200
From: Sebastian Andrzej Siewior <sebastian@breakpoint.cc>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/6] ARM: cmpxchg: Define first cmpxchg() followed by xchg()
Date: Mon, 14 Oct 2019 00:13:06 +0200
Message-Id: <20191013221310.30748-3-sebastian@breakpoint.cc>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191013221310.30748-1-sebastian@breakpoint.cc>
References: <20191013221310.30748-1-sebastian@breakpoint.cc>
MIME-Version: 1.0
X-Breakpoint-Spam-Score: -1.0
X-Breakpoint-Spam-Level: -
X-Breakpoint-Spam-Status: No , -1.0 points, 5.0 required,  ALL_TRUSTED=-1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191013_151357_702557_240685B3 
X-CRM114-Status: GOOD (  16.51  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a0a:51c0:0:12e:520:0:0:1 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Arnd Bergmann <arnd@arndb.de>, Peter Zijlstra <peterz@infradead.org>,
 Russell King <linux@armlinux.org.uk>,
 Sebastian Andrzej Siewior <sebastian@breakpoint.cc>,
 Ingo Molnar <mingo@redhat.com>, Waiman Long <longman@redhat.com>,
 Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In order to use the generic xchg_() implementation based on cmpxchg()
we need cmpxchg defined first.
Move the xchg bits to the lower part of the file.

Signed-off-by: Sebastian Andrzej Siewior <sebastian@breakpoint.cc>
---
 arch/arm/include/asm/cmpxchg.h | 227 ++++++++++++++++-----------------
 1 file changed, 113 insertions(+), 114 deletions(-)

diff --git a/arch/arm/include/asm/cmpxchg.h b/arch/arm/include/asm/cmpxchg.h
index 8b701f8e175c0..c61de6acf41ed 100644
--- a/arch/arm/include/asm/cmpxchg.h
+++ b/arch/arm/include/asm/cmpxchg.h
@@ -5,120 +5,6 @@
 #include <linux/irqflags.h>
 #include <linux/prefetch.h>
 #include <asm/barrier.h>
-
-#if defined(CONFIG_CPU_SA1100) || defined(CONFIG_CPU_SA110)
-/*
- * On the StrongARM, "swp" is terminally broken since it bypasses the
- * cache totally.  This means that the cache becomes inconsistent, and,
- * since we use normal loads/stores as well, this is really bad.
- * Typically, this causes oopsen in filp_close, but could have other,
- * more disastrous effects.  There are two work-arounds:
- *  1. Disable interrupts and emulate the atomic swap
- *  2. Clean the cache, perform atomic swap, flush the cache
- *
- * We choose (1) since its the "easiest" to achieve here and is not
- * dependent on the processor type.
- *
- * NOTE that this solution won't work on an SMP system, so explcitly
- * forbid it here.
- */
-#define swp_is_buggy
-#endif
-
-static inline unsigned long __xchg(unsigned long x, volatile void *ptr, int size)
-{
-	extern void __bad_xchg(volatile void *, int);
-	unsigned long ret;
-#ifdef swp_is_buggy
-	unsigned long flags;
-#endif
-#if __LINUX_ARM_ARCH__ >= 6
-	unsigned int tmp;
-#endif
-
-	prefetchw((const void *)ptr);
-
-	switch (size) {
-#if __LINUX_ARM_ARCH__ >= 6
-#ifndef CONFIG_CPU_V6 /* MIN ARCH >= V6K */
-	case 1:
-		asm volatile("@	__xchg1\n"
-		"1:	ldrexb	%0, [%3]\n"
-		"	strexb	%1, %2, [%3]\n"
-		"	teq	%1, #0\n"
-		"	bne	1b"
-			: "=&r" (ret), "=&r" (tmp)
-			: "r" (x), "r" (ptr)
-			: "memory", "cc");
-		break;
-	case 2:
-		asm volatile("@	__xchg2\n"
-		"1:	ldrexh	%0, [%3]\n"
-		"	strexh	%1, %2, [%3]\n"
-		"	teq	%1, #0\n"
-		"	bne	1b"
-			: "=&r" (ret), "=&r" (tmp)
-			: "r" (x), "r" (ptr)
-			: "memory", "cc");
-		break;
-#endif
-	case 4:
-		asm volatile("@	__xchg4\n"
-		"1:	ldrex	%0, [%3]\n"
-		"	strex	%1, %2, [%3]\n"
-		"	teq	%1, #0\n"
-		"	bne	1b"
-			: "=&r" (ret), "=&r" (tmp)
-			: "r" (x), "r" (ptr)
-			: "memory", "cc");
-		break;
-#elif defined(swp_is_buggy)
-#ifdef CONFIG_SMP
-#error SMP is not supported on this platform
-#endif
-	case 1:
-		raw_local_irq_save(flags);
-		ret = *(volatile unsigned char *)ptr;
-		*(volatile unsigned char *)ptr = x;
-		raw_local_irq_restore(flags);
-		break;
-
-	case 4:
-		raw_local_irq_save(flags);
-		ret = *(volatile unsigned long *)ptr;
-		*(volatile unsigned long *)ptr = x;
-		raw_local_irq_restore(flags);
-		break;
-#else
-	case 1:
-		asm volatile("@	__xchg1\n"
-		"	swpb	%0, %1, [%2]"
-			: "=&r" (ret)
-			: "r" (x), "r" (ptr)
-			: "memory", "cc");
-		break;
-	case 4:
-		asm volatile("@	__xchg4\n"
-		"	swp	%0, %1, [%2]"
-			: "=&r" (ret)
-			: "r" (x), "r" (ptr)
-			: "memory", "cc");
-		break;
-#endif
-	default:
-		/* Cause a link-time error, the xchg() size is not supported */
-		__bad_xchg(ptr, size), ret = 0;
-		break;
-	}
-
-	return ret;
-}
-
-#define xchg_relaxed(ptr, x) ({						\
-	(__typeof__(*(ptr)))__xchg((unsigned long)(x), (ptr),		\
-				   sizeof(*(ptr)));			\
-})
-
 #include <asm-generic/cmpxchg-local.h>
 
 #if __LINUX_ARM_ARCH__ < 6
@@ -276,4 +162,117 @@ static inline unsigned long long __cmpxchg64(unsigned long long *ptr,
 
 #endif	/* __LINUX_ARM_ARCH__ >= 6 */
 
+#if defined(CONFIG_CPU_SA1100) || defined(CONFIG_CPU_SA110)
+/*
+ * On the StrongARM, "swp" is terminally broken since it bypasses the
+ * cache totally.  This means that the cache becomes inconsistent, and,
+ * since we use normal loads/stores as well, this is really bad.
+ * Typically, this causes oopsen in filp_close, but could have other,
+ * more disastrous effects.  There are two work-arounds:
+ *  1. Disable interrupts and emulate the atomic swap
+ *  2. Clean the cache, perform atomic swap, flush the cache
+ *
+ * We choose (1) since its the "easiest" to achieve here and is not
+ * dependent on the processor type.
+ *
+ * NOTE that this solution won't work on an SMP system, so explcitly
+ * forbid it here.
+ */
+#define swp_is_buggy
+#endif
+
+static inline unsigned long __xchg(unsigned long x, volatile void *ptr, int size)
+{
+	extern void __bad_xchg(volatile void *, int);
+	unsigned long ret;
+#ifdef swp_is_buggy
+	unsigned long flags;
+#endif
+#if __LINUX_ARM_ARCH__ >= 6
+	unsigned int tmp;
+#endif
+
+	prefetchw((const void *)ptr);
+
+	switch (size) {
+#if __LINUX_ARM_ARCH__ >= 6
+#ifndef CONFIG_CPU_V6 /* MIN ARCH >= V6K */
+	case 1:
+		asm volatile("@	__xchg1\n"
+		"1:	ldrexb	%0, [%3]\n"
+		"	strexb	%1, %2, [%3]\n"
+		"	teq	%1, #0\n"
+		"	bne	1b"
+			: "=&r" (ret), "=&r" (tmp)
+			: "r" (x), "r" (ptr)
+			: "memory", "cc");
+		break;
+	case 2:
+		asm volatile("@	__xchg2\n"
+		"1:	ldrexh	%0, [%3]\n"
+		"	strexh	%1, %2, [%3]\n"
+		"	teq	%1, #0\n"
+		"	bne	1b"
+			: "=&r" (ret), "=&r" (tmp)
+			: "r" (x), "r" (ptr)
+			: "memory", "cc");
+		break;
+#endif
+	case 4:
+		asm volatile("@	__xchg4\n"
+		"1:	ldrex	%0, [%3]\n"
+		"	strex	%1, %2, [%3]\n"
+		"	teq	%1, #0\n"
+		"	bne	1b"
+			: "=&r" (ret), "=&r" (tmp)
+			: "r" (x), "r" (ptr)
+			: "memory", "cc");
+		break;
+#elif defined(swp_is_buggy)
+#ifdef CONFIG_SMP
+#error SMP is not supported on this platform
+#endif
+	case 1:
+		raw_local_irq_save(flags);
+		ret = *(volatile unsigned char *)ptr;
+		*(volatile unsigned char *)ptr = x;
+		raw_local_irq_restore(flags);
+		break;
+
+	case 4:
+		raw_local_irq_save(flags);
+		ret = *(volatile unsigned long *)ptr;
+		*(volatile unsigned long *)ptr = x;
+		raw_local_irq_restore(flags);
+		break;
+#else
+	case 1:
+		asm volatile("@	__xchg1\n"
+		"	swpb	%0, %1, [%2]"
+			: "=&r" (ret)
+			: "r" (x), "r" (ptr)
+			: "memory", "cc");
+		break;
+	case 4:
+		asm volatile("@	__xchg4\n"
+		"	swp	%0, %1, [%2]"
+			: "=&r" (ret)
+			: "r" (x), "r" (ptr)
+			: "memory", "cc");
+		break;
+#endif
+	default:
+		/* Cause a link-time error, the xchg() size is not supported */
+		__bad_xchg(ptr, size), ret = 0;
+		break;
+	}
+
+	return ret;
+}
+
+#define xchg_relaxed(ptr, x) ({						\
+	(__typeof__(*(ptr)))__xchg((unsigned long)(x), (ptr),		\
+				   sizeof(*(ptr)));			\
+})
+
 #endif /* __ASM_ARM_CMPXCHG_H */
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
