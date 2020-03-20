Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2A9718D1E5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 15:56:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GxFnlKzQehDWK+x+oWTAfpMUnmSNcVJ05ALKY3OXJxY=; b=dmBHD+gKCL3SJy
	LzhEX4F419jKXadRj2UqLIOIa0665pnRB/8v+viSVUQmbqFeOmiSGyvXGc/MIMGOObqjUkNvgEr3b
	i+fJ8QGaGo7sglgrGOU2vBwl7TOutvMTmvDeZxfCAVwmtJlyVNks4UWVCTd57Wphtmjs8WrCiAD7K
	W0ZbMs/KXB1fjrfGuEDgrSphExJRI2ir8dGtZiI4/P70w2NzupXGQ7RdWNJPnxk53xurUEjag/bOn
	qePdPVIYyu0BAXCn3+Q/cAA0qtzBMc2nOe6yv4emwsAPEOQ/6cbYtjmDPMlUu8YqpgpCn/xvj0DDQ
	55sA5N3gAxXijKkoBAUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFJ4F-0007O3-5H; Fri, 20 Mar 2020 14:56:11 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFJ2z-0005N0-M5
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 14:54:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3F6FD1FB;
 Fri, 20 Mar 2020 07:54:53 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com
 [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4A9073F792;
 Fri, 20 Mar 2020 07:54:50 -0700 (PDT)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
 linux-mips@vger.kernel.org, x86@kernel.org
Subject: [PATCH v5 03/26] linux/limits.h: Extract common header for vDSO
Date: Fri, 20 Mar 2020 14:53:28 +0000
Message-Id: <20200320145351.32292-4-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200320145351.32292-1-vincenzo.frascino@arm.com>
References: <20200320145351.32292-1-vincenzo.frascino@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_075453_853728_FF9D44B3 
X-CRM114-Status: GOOD (  12.85  )
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
Cc: Mark Rutland <Mark.Rutland@arm.com>,
 Nick Desaulniers <ndesaulniers@google.com>, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, Stephen Boyd <sboyd@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dmitry Safonov <0x7f454c46@gmail.com>, Russell King <linux@armlinux.org.uk>,
 Mark Salyzyn <salyzyn@android.com>, Paul Burton <paul.burton@mips.com>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, Marc Zyngier <maz@kernel.org>,
 Peter Collingbourne <pcc@google.com>, Thomas Gleixner <tglx@linutronix.de>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 Andrei Vagin <avagin@openvz.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The vDSO library should only include the necessary headers required for
a userspace library (UAPI and a minimal set of kernel headers). To make
this possible it is necessary to isolate from the kernel headers the
common parts that are strictly necessary to build the library.

Split limits.h into linux and common headers to make the latter suitable
for inclusion in the vDSO library.

Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 include/linux/limits.h | 13 +------------
 include/vdso/limits.h  | 19 +++++++++++++++++++
 2 files changed, 20 insertions(+), 12 deletions(-)
 create mode 100644 include/vdso/limits.h

diff --git a/include/linux/limits.h b/include/linux/limits.h
index 76afcd24ff8c..7fc497ee1393 100644
--- a/include/linux/limits.h
+++ b/include/linux/limits.h
@@ -4,19 +4,8 @@
 
 #include <uapi/linux/limits.h>
 #include <linux/types.h>
+#include <vdso/limits.h>
 
-#define USHRT_MAX	((unsigned short)~0U)
-#define SHRT_MAX	((short)(USHRT_MAX >> 1))
-#define SHRT_MIN	((short)(-SHRT_MAX - 1))
-#define INT_MAX		((int)(~0U >> 1))
-#define INT_MIN		(-INT_MAX - 1)
-#define UINT_MAX	(~0U)
-#define LONG_MAX	((long)(~0UL >> 1))
-#define LONG_MIN	(-LONG_MAX - 1)
-#define ULONG_MAX	(~0UL)
-#define LLONG_MAX	((long long)(~0ULL >> 1))
-#define LLONG_MIN	(-LLONG_MAX - 1)
-#define ULLONG_MAX	(~0ULL)
 #define SIZE_MAX	(~(size_t)0)
 #define PHYS_ADDR_MAX	(~(phys_addr_t)0)
 
diff --git a/include/vdso/limits.h b/include/vdso/limits.h
new file mode 100644
index 000000000000..0197888ad0e0
--- /dev/null
+++ b/include/vdso/limits.h
@@ -0,0 +1,19 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __VDSO_LIMITS_H
+#define __VDSO_LIMITS_H
+
+#define USHRT_MAX	((unsigned short)~0U)
+#define SHRT_MAX	((short)(USHRT_MAX >> 1))
+#define SHRT_MIN	((short)(-SHRT_MAX - 1))
+#define INT_MAX		((int)(~0U >> 1))
+#define INT_MIN		(-INT_MAX - 1)
+#define UINT_MAX	(~0U)
+#define LONG_MAX	((long)(~0UL >> 1))
+#define LONG_MIN	(-LONG_MAX - 1)
+#define ULONG_MAX	(~0UL)
+#define LLONG_MAX	((long long)(~0ULL >> 1))
+#define LLONG_MIN	(-LLONG_MAX - 1)
+#define ULLONG_MAX	(~0ULL)
+#define UINTPTR_MAX	ULONG_MAX
+
+#endif /* __VDSO_LIMITS_H */
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
