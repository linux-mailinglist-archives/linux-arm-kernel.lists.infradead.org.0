Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25E97D5890
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 00:14:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o7ZUP4A8cfP18UVQg0HDd2dWKufK0Z2cnosPktohxn4=; b=p9oZa/UFhhe4nl
	2z5+E/R/WPTEKgAfmC2d7ZAJN+M2g6wMobhFV7KAwKxHQmgZqt25ILC+oqX9/8kMcLzGS8ng560Kl
	hN3jvGoEk93Jw6QCJ+Bk3EW6128dfWxpAHgYgOPm72LkijBF1qLYMsmcQN8B7gX80ZZAf+D8Mp+ng
	2X7DncGHnbmDBIw3burTKNQCSC1RhFjDRbKjfuKWfKfkzzL3Qux5ezTw4A0wPCmp/lGgioEXEyvQu
	zA+XSrc43/QfoHYBYwITQ3PcQy3Hifa0qjWV6MuJhBCf87m9i/SUYNbzEWaaQfCY1lqDuVJZKDMXw
	1Gus9PgXFMttFFE0nKOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJm8O-0006rW-93; Sun, 13 Oct 2019 22:14:40 +0000
Received: from chamillionaire.breakpoint.cc ([2a0a:51c0:0:12e:520::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJm7j-0006R9-Ga
 for linux-arm-kernel@lists.infradead.org; Sun, 13 Oct 2019 22:14:00 +0000
Received: from localhost ([127.0.0.1] helo=flow.W.breakpoint.cc)
 by Chamillionaire.breakpoint.cc with esmtp (Exim 4.92)
 (envelope-from <sebastian@breakpoint.cc>)
 id 1iJm7f-00089S-Te; Mon, 14 Oct 2019 00:13:56 +0200
From: Sebastian Andrzej Siewior <sebastian@breakpoint.cc>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 3/6] ARM: Add xchg_{8|16}() on generic cmpxchg() on CPU_V6
Date: Mon, 14 Oct 2019 00:13:07 +0200
Message-Id: <20191013221310.30748-4-sebastian@breakpoint.cc>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191013221310.30748-1-sebastian@breakpoint.cc>
References: <20191013221310.30748-1-sebastian@breakpoint.cc>
MIME-Version: 1.0
X-Breakpoint-Spam-Score: -1.0
X-Breakpoint-Spam-Level: -
X-Breakpoint-Spam-Status: No , -1.0 points, 5.0 required,  ALL_TRUSTED=-1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191013_151359_565338_3AFC3813 
X-CRM114-Status: GOOD (  12.65  )
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

Use generic xchg_u{8|16}()to implement the function based on cmpxchg().
The generic header file expects __cmpxchg_u32() to perform a 32bit
cmpxchg operation.

Signed-off-by: Sebastian Andrzej Siewior <sebastian@breakpoint.cc>
---
 arch/arm/include/asm/cmpxchg.h | 20 +++++++++++++++++++-
 1 file changed, 19 insertions(+), 1 deletion(-)

diff --git a/arch/arm/include/asm/cmpxchg.h b/arch/arm/include/asm/cmpxchg.h
index c61de6acf41ed..06e8b1c7a08fe 100644
--- a/arch/arm/include/asm/cmpxchg.h
+++ b/arch/arm/include/asm/cmpxchg.h
@@ -181,6 +181,16 @@ static inline unsigned long long __cmpxchg64(unsigned long long *ptr,
 #define swp_is_buggy
 #endif
 
+#ifdef CONFIG_CPU_V6
+static inline unsigned int __cmpxchg_u32(volatile void *ptr, unsigned int old,
+					 unsigned int new)
+{
+	return __cmpxchg(ptr, old, new, sizeof(unsigned int));
+}
+
+#include <asm-generic/cmpxchg-xchg.h>
+#endif
+
 static inline unsigned long __xchg(unsigned long x, volatile void *ptr, int size)
 {
 	extern void __bad_xchg(volatile void *, int);
@@ -196,7 +206,15 @@ static inline unsigned long __xchg(unsigned long x, volatile void *ptr, int size
 
 	switch (size) {
 #if __LINUX_ARM_ARCH__ >= 6
-#ifndef CONFIG_CPU_V6 /* MIN ARCH >= V6K */
+#ifdef CONFIG_CPU_V6
+	case 1:
+		ret = xchg_u8(ptr, x);
+		break;
+	case 2:
+		ret = xchg_u16(ptr, x);
+		break;
+
+#else /* MIN ARCH >= V6K */
 	case 1:
 		asm volatile("@	__xchg1\n"
 		"1:	ldrexb	%0, [%3]\n"
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
