Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70EA117BF24
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 14:38:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JHVaeTjXsXLhzFi7Yw8+IQJKyQkauo5+UmTe8f+XMrE=; b=cBhThpxpfpBpUI
	XsSBPjAzJxqAK3gniuUBLod6spwkHrkVpu4mXDD4GwS7IgcAxW3mJ8G3Q/AA/Par8h7wngWoF/94g
	5wGBAAWcCnqTnVzJwEmjyjbDjcWibX4VB7cxFOJetDjri97sP3SvSdfhtVUvmPJXONex3orY5jORm
	lQBJxFyKjDQteFOwuc5HFgK2/lfcvBq9sKRJi22sTH75hlitlWDxXmID0f0/SY89MVXU3RjosK5Bp
	0W3T3XxB9WXnVPcfmTyPzfigzWHONK09t3H/ZeE/nL1o6auQTmzm+pVq5WFrQWJLRIMUZuavAw5eF
	nn42S5cg5Ze1Sqq1t0SQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jADBg-0002SI-B8; Fri, 06 Mar 2020 13:38:48 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAD6t-000575-Pv
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 13:33:53 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 442584B2;
 Fri,  6 Mar 2020 05:33:51 -0800 (PST)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com
 [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 830793F6CF;
 Fri,  6 Mar 2020 05:33:48 -0800 (PST)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org,
 clang-built-linux@googlegroups.com, x86@kernel.org
Subject: [PATCH v2 19/20] lib: vdso: Enable common headers
Date: Fri,  6 Mar 2020 13:32:41 +0000
Message-Id: <20200306133242.26279-20-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200306133242.26279-1-vincenzo.frascino@arm.com>
References: <20200306133242.26279-1-vincenzo.frascino@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_053351_955775_264F165C 
X-CRM114-Status: GOOD (  12.74  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Nick Desaulniers <ndesaulniers@google.com>,
 Dmitry Safonov <0x7f454c46@gmail.com>, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, Stephen Boyd <sboyd@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Russell King <linux@armlinux.org.uk>, Mark Salyzyn <salyzyn@android.com>,
 Paul Burton <paul.burton@mips.com>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, Andy Lutomirski <luto@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Peter Collingbourne <pcc@google.com>, Andrei Vagin <avagin@openvz.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The vDSO library should only include the necessary headers required for
a userspace library (UAPI and a minimal set of kernel headers). To make
this possible it is necessary to isolate from the kernel headers the
common parts that are strictly necessary to build the library.

Refactor the unified vdso code to use the common headers.

Cc: Andy Lutomirski <luto@kernel.org>
Cc: Thomas Gleixner <tglx@linutronix.de>
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 include/vdso/datapage.h | 32 +++++++++++++++++++++++++++++---
 lib/vdso/gettimeofday.c | 21 ---------------------
 2 files changed, 29 insertions(+), 24 deletions(-)

diff --git a/include/vdso/datapage.h b/include/vdso/datapage.h
index c5f347cc5e55..21842a73cbcf 100644
--- a/include/vdso/datapage.h
+++ b/include/vdso/datapage.h
@@ -4,9 +4,19 @@
 
 #ifndef __ASSEMBLY__
 
-#include <linux/bits.h>
-#include <linux/time.h>
-#include <linux/types.h>
+#include <linux/compiler.h>
+#include <uapi/linux/time.h>
+#include <uapi/linux/types.h>
+#include <uapi/asm-generic/errno-base.h>
+
+#include <common/bits.h>
+#include <common/ktime.h>
+#include <common/limits.h>
+#include <common/math64.h>
+#include <common/processor.h>
+#include <common/time.h>
+#include <common/time32.h>
+#include <common/time64.h>
 
 #define VDSO_BASES	(CLOCK_TAI + 1)
 #define VDSO_HRES	(BIT(CLOCK_REALTIME)		| \
@@ -101,6 +111,22 @@ struct vdso_data {
  */
 extern struct vdso_data _vdso_data[CS_BASES] __attribute__((visibility("hidden")));
 
+/*
+ * The generic vDSO implementation requires that gettimeofday.h
+ * provides:
+ * - __arch_get_vdso_data(): to get the vdso datapage.
+ * - __arch_get_hw_counter(): to get the hw counter based on the
+ *   clock_mode.
+ * - gettimeofday_fallback(): fallback for gettimeofday.
+ * - clock_gettime_fallback(): fallback for clock_gettime.
+ * - clock_getres_fallback(): fallback for clock_getres.
+ */
+#ifdef ENABLE_COMPAT_VDSO
+#include <asm/vdso/compat_gettimeofday.h>
+#else
+#include <asm/vdso/gettimeofday.h>
+#endif /* ENABLE_COMPAT_VDSO */
+
 #endif /* !__ASSEMBLY__ */
 
 #endif /* __VDSO_DATAPAGE_H */
diff --git a/lib/vdso/gettimeofday.c b/lib/vdso/gettimeofday.c
index f8b8ec5e63ac..e3244f74feea 100644
--- a/lib/vdso/gettimeofday.c
+++ b/lib/vdso/gettimeofday.c
@@ -2,30 +2,9 @@
 /*
  * Generic userspace implementations of gettimeofday() and similar.
  */
-#include <linux/compiler.h>
-#include <linux/math64.h>
-#include <linux/time.h>
-#include <linux/kernel.h>
-#include <linux/hrtimer_defs.h>
 #include <vdso/datapage.h>
 #include <vdso/helpers.h>
 
-/*
- * The generic vDSO implementation requires that gettimeofday.h
- * provides:
- * - __arch_get_vdso_data(): to get the vdso datapage.
- * - __arch_get_hw_counter(): to get the hw counter based on the
- *   clock_mode.
- * - gettimeofday_fallback(): fallback for gettimeofday.
- * - clock_gettime_fallback(): fallback for clock_gettime.
- * - clock_getres_fallback(): fallback for clock_getres.
- */
-#ifdef ENABLE_COMPAT_VDSO
-#include <asm/vdso/compat_gettimeofday.h>
-#else
-#include <asm/vdso/gettimeofday.h>
-#endif /* ENABLE_COMPAT_VDSO */
-
 #ifndef vdso_calc_delta
 /*
  * Default implementation which works for all sane clocksources. That
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
