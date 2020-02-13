Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6588215C7C3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 17:21:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aWtpWngwTRF+FSdx85cvKoi3vydryu3QQIduNSPUXj0=; b=Kz0QeB1EW6QHTc
	hYNEQOfy3nrwNxh7smEtiZHNnPaD4bUOHSReNhR8ZxT3zeqNSQVXkLW9gq6jkxrWqokduynFLaX2W
	0asgQ+uy+YwShUPQg40I/tt92sYiqPVTqZl64hS2UrGiCngddsPLiEWpmowbzq4JmXtMK+P4Z8UQC
	/sTr5FdiS6miEmLv0l3cfagheaWyt3+ZzztranQAi3DCbu+xzR4Ak0TArZWdSw2CzVvmTGoQOuDUU
	pNkB64FpOMC+G4YIMgbExEXu4Hd1ZZHfnzndQufWsTFlwdNd6sc0AGgSjM52jYuJQQqy/3iwDLSup
	QiKgqWp9U0DD0MMdGshQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2HEZ-0000SU-Ow; Thu, 13 Feb 2020 16:20:59 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2HB7-0004O9-Ey
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 16:17:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2A7961063;
 Thu, 13 Feb 2020 08:17:24 -0800 (PST)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com
 [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9E84F3F6CF;
 Thu, 13 Feb 2020 08:17:21 -0800 (PST)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org,
 clang-built-linux@googlegroups.com, x86@kernel.org
Subject: [PATCH 15/19] mips: vdso: Enable mips to use common headers
Date: Thu, 13 Feb 2020 16:16:10 +0000
Message-Id: <20200213161614.23246-16-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200213161614.23246-1-vincenzo.frascino@arm.com>
References: <20200213161614.23246-1-vincenzo.frascino@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_081725_616394_EAF36FF8 
X-CRM114-Status: GOOD (  12.99  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: ndesaulniers@google.com, 0x7f454c46@gmail.com, avagin@openvz.org,
 arnd@arndb.de, sboyd@kernel.org, catalin.marinas@arm.com, will.deacon@arm.com,
 linux@armlinux.org.uk, salyzyn@android.com, paul.burton@mips.com,
 mingo@redhat.com, bp@alien8.de, luto@kernel.org, tglx@linutronix.de,
 pcc@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Enable mips to use only the common headers in the implementation of
the vDSO library.

Cc: Paul Burton <paulburton@kernel.org>
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 arch/mips/include/asm/common/processor.h  | 27 +++++++++++++++++++++++
 arch/mips/include/asm/processor.h         | 16 +-------------
 arch/mips/include/asm/vdso/gettimeofday.h |  4 ----
 3 files changed, 28 insertions(+), 19 deletions(-)
 create mode 100644 arch/mips/include/asm/common/processor.h

diff --git a/arch/mips/include/asm/common/processor.h b/arch/mips/include/asm/common/processor.h
new file mode 100644
index 000000000000..d2ee5d397d2b
--- /dev/null
+++ b/arch/mips/include/asm/common/processor.h
@@ -0,0 +1,27 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2020 ARM Ltd.
+ */
+#ifndef __ASM_COMMON_PROCESSOR_H
+#define __ASM_COMMON_PROCESSOR_H
+
+#ifndef __ASSEMBLY__
+
+#ifdef CONFIG_CPU_LOONGSON64
+/*
+ * Loongson-3's SFB (Store-Fill-Buffer) may buffer writes indefinitely when a
+ * tight read loop is executed, because reads take priority over writes & the
+ * hardware (incorrectly) doesn't ensure that writes will eventually occur.
+ *
+ * Since spin loops of any kind should have a cpu_relax() in them, force an SFB
+ * flush from cpu_relax() such that any pending writes will become visible as
+ * expected.
+ */
+#define cpu_relax()	smp_mb()
+#else
+#define cpu_relax()	barrier()
+#endif
+
+#endif /* __ASSEMBLY__ */
+
+#endif /* __ASM_COMMON_PROCESSOR_H */
diff --git a/arch/mips/include/asm/processor.h b/arch/mips/include/asm/processor.h
index 7619ad319400..b7eca25e2066 100644
--- a/arch/mips/include/asm/processor.h
+++ b/arch/mips/include/asm/processor.h
@@ -22,6 +22,7 @@
 #include <asm/dsemul.h>
 #include <asm/mipsregs.h>
 #include <asm/prefetch.h>
+#include <asm/common/processor.h>
 
 /*
  * System setup and hardware flags..
@@ -385,21 +386,6 @@ unsigned long get_wchan(struct task_struct *p);
 #define KSTK_ESP(tsk) (task_pt_regs(tsk)->regs[29])
 #define KSTK_STATUS(tsk) (task_pt_regs(tsk)->cp0_status)
 
-#ifdef CONFIG_CPU_LOONGSON64
-/*
- * Loongson-3's SFB (Store-Fill-Buffer) may buffer writes indefinitely when a
- * tight read loop is executed, because reads take priority over writes & the
- * hardware (incorrectly) doesn't ensure that writes will eventually occur.
- *
- * Since spin loops of any kind should have a cpu_relax() in them, force an SFB
- * flush from cpu_relax() such that any pending writes will become visible as
- * expected.
- */
-#define cpu_relax()	smp_mb()
-#else
-#define cpu_relax()	barrier()
-#endif
-
 /*
  * Return_address is a replacement for __builtin_return_address(count)
  * which on certain architectures cannot reasonably be implemented in GCC
diff --git a/arch/mips/include/asm/vdso/gettimeofday.h b/arch/mips/include/asm/vdso/gettimeofday.h
index a58687e26c5d..e8ab2fafe067 100644
--- a/arch/mips/include/asm/vdso/gettimeofday.h
+++ b/arch/mips/include/asm/vdso/gettimeofday.h
@@ -13,12 +13,8 @@
 
 #ifndef __ASSEMBLY__
 
-#include <linux/compiler.h>
-#include <linux/time.h>
-
 #include <asm/vdso/vdso.h>
 #include <asm/clocksource.h>
-#include <asm/io.h>
 #include <asm/unistd.h>
 #include <asm/vdso.h>
 
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
