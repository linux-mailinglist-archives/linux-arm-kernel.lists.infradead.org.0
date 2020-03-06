Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26C2E17BF01
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 14:35:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tMTAeRLnIOVva9r1lnD/QYMRTo6mmYpJWNaZX+Dcvgo=; b=ZYTMNNcvugZCt5
	udtCOIqo+/4eYLbz9yi0RI5OkxwDXiDVwddxrCeUtbk3DvnQWvTH7V9SqzWND7WTtDvA4RTCmatSe
	iZiUoa7WUzjQQcD99dl2a8cEornwiCdXiy/JSeX63GbvcMeEx7vqfEfuVu6YnmXcnEUZhiS+ATi8Z
	clIEBYFjDy5E+W4KBIvgQuh8aPIKawTSEfppqsqj6JjyOBGkGTZd+vfuUz6vruKpP1rOvY6fkIgBg
	xQmQbnGE6oejvjjkaJNMlV/4yy5glnPhcSjuKayO5DxcvvnO4yRMJkChxQWN7iEpqLr45JkEVQZYf
	Xmdl1+b2Kj+l2JJm571Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAD8G-0006Ez-EY; Fri, 06 Mar 2020 13:35:16 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAD6J-0004X7-RD
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 13:33:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B900A31B;
 Fri,  6 Mar 2020 05:33:14 -0800 (PST)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com
 [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 00F583F6CF;
 Fri,  6 Mar 2020 05:33:11 -0800 (PST)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org,
 clang-built-linux@googlegroups.com, x86@kernel.org
Subject: [PATCH v2 07/20] linux/time64.h: Extract common header for vDSO
Date: Fri,  6 Mar 2020 13:32:29 +0000
Message-Id: <20200306133242.26279-8-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200306133242.26279-1-vincenzo.frascino@arm.com>
References: <20200306133242.26279-1-vincenzo.frascino@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_053315_938386_803696B4 
X-CRM114-Status: GOOD (  14.29  )
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

Split time64.h into linux and common headers to make the latter suitable
for inclusion in the vDSO library.

Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 include/common/time64.h | 14 ++++++++++++++
 include/linux/time64.h  | 10 +---------
 2 files changed, 15 insertions(+), 9 deletions(-)
 create mode 100644 include/common/time64.h

diff --git a/include/common/time64.h b/include/common/time64.h
new file mode 100644
index 000000000000..ff5a72fafb30
--- /dev/null
+++ b/include/common/time64.h
@@ -0,0 +1,14 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __COMMON_TIME64_H
+#define __COMMON_TIME64_H
+
+/* Parameters used to convert the timespec values: */
+#define MSEC_PER_SEC	1000L
+#define USEC_PER_MSEC	1000L
+#define NSEC_PER_USEC	1000L
+#define NSEC_PER_MSEC	1000000L
+#define USEC_PER_SEC	1000000L
+#define NSEC_PER_SEC	1000000000L
+#define FSEC_PER_SEC	1000000000000000LL
+
+#endif /* __COMMON_TIME64_H */
diff --git a/include/linux/time64.h b/include/linux/time64.h
index 19125489ae94..3d8b3739e885 100644
--- a/include/linux/time64.h
+++ b/include/linux/time64.h
@@ -3,6 +3,7 @@
 #define _LINUX_TIME64_H
 
 #include <linux/math64.h>
+#include <common/time64.h>
 
 typedef __s64 time64_t;
 typedef __u64 timeu64_t;
@@ -19,15 +20,6 @@ struct itimerspec64 {
 	struct timespec64 it_value;
 };
 
-/* Parameters used to convert the timespec values: */
-#define MSEC_PER_SEC	1000L
-#define USEC_PER_MSEC	1000L
-#define NSEC_PER_USEC	1000L
-#define NSEC_PER_MSEC	1000000L
-#define USEC_PER_SEC	1000000L
-#define NSEC_PER_SEC	1000000000L
-#define FSEC_PER_SEC	1000000000000000LL
-
 /* Located here for timespec[64]_valid_strict */
 #define TIME64_MAX			((s64)~((u64)1 << 63))
 #define TIME64_MIN			(-TIME64_MAX - 1)
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
