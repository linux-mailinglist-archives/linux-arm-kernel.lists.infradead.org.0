Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76B6617BEEC
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 14:34:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pHZVThsfY6ksxFWZrXxGeYnU2usOI/G0Ub2vE8e7gZg=; b=H6yKA21o1FW4rs
	/YkcSRnfl0HzhiKIIEJUq5qEP0Ut3zog/52DUuA0zuAW4r5kQ56qBgtP+e45H5X2bYQ8fCYyomecj
	kCO2Q6yFZ2wXJ73PXTAgGPtep9lR9twZAAs6xprkUbBYClFiW9U/WIzw8sbaan9kMTeSHA3/ONPuk
	MbZVWWtO8EeQTtmajbZ8r3cH/OW3o2AbeaZVfYD7lEt0zgNa7ALMK/YHlZ8F1hFGwOcA+FO7keMQM
	r3Kp0Dhto7NePmvcGnQK2XPyHByP1H6ek7cwhfxQY+ywNNvY6m7S0RItEyrYHPNzp1Tt4mrk8lj2u
	ZCcYiWRs8gXtOIriPhpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAD7M-0005NP-1G; Fri, 06 Mar 2020 13:34:20 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAD6A-0004N2-EG
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 13:33:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D26A131B;
 Fri,  6 Mar 2020 05:33:05 -0800 (PST)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com
 [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1E0EE3F6CF;
 Fri,  6 Mar 2020 05:33:03 -0800 (PST)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org,
 clang-built-linux@googlegroups.com, x86@kernel.org
Subject: [PATCH v2 04/20] linux/math64.h: Extract common header for vDSO
Date: Fri,  6 Mar 2020 13:32:26 +0000
Message-Id: <20200306133242.26279-5-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200306133242.26279-1-vincenzo.frascino@arm.com>
References: <20200306133242.26279-1-vincenzo.frascino@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_053306_532441_866B0B0F 
X-CRM114-Status: GOOD (  16.56  )
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

Split math64.h into linux and common headers to make the latter suitable
for inclusion in the vDSO library.

Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 include/common/math64.h | 24 ++++++++++++++++++++++++
 include/linux/math64.h  | 20 +-------------------
 2 files changed, 25 insertions(+), 19 deletions(-)
 create mode 100644 include/common/math64.h

diff --git a/include/common/math64.h b/include/common/math64.h
new file mode 100644
index 000000000000..4e1870e40182
--- /dev/null
+++ b/include/common/math64.h
@@ -0,0 +1,24 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __COMMON_MATH64_H
+#define __COMMON_MATH64_H
+
+static __always_inline u32
+__iter_div_u64_rem(u64 dividend, u32 divisor, u64 *remainder)
+{
+	u32 ret = 0;
+
+	while (dividend >= divisor) {
+		/* The following asm() prevents the compiler from
+		   optimising this loop into a modulo operation.  */
+		asm("" : "+rm"(dividend));
+
+		dividend -= divisor;
+		ret++;
+	}
+
+	*remainder = dividend;
+
+	return ret;
+}
+
+#endif /* __COMMON_MATH64_H */
diff --git a/include/linux/math64.h b/include/linux/math64.h
index 65bef21cdddb..54eb486b5d1a 100644
--- a/include/linux/math64.h
+++ b/include/linux/math64.h
@@ -3,6 +3,7 @@
 #define _LINUX_MATH64_H
 
 #include <linux/types.h>
+#include <common/math64.h>
 #include <asm/div64.h>
 
 #if BITS_PER_LONG == 64
@@ -142,25 +143,6 @@ static inline s64 div_s64(s64 dividend, s32 divisor)
 
 u32 iter_div_u64_rem(u64 dividend, u32 divisor, u64 *remainder);
 
-static __always_inline u32
-__iter_div_u64_rem(u64 dividend, u32 divisor, u64 *remainder)
-{
-	u32 ret = 0;
-
-	while (dividend >= divisor) {
-		/* The following asm() prevents the compiler from
-		   optimising this loop into a modulo operation.  */
-		asm("" : "+rm"(dividend));
-
-		dividend -= divisor;
-		ret++;
-	}
-
-	*remainder = dividend;
-
-	return ret;
-}
-
 #ifndef mul_u32_u32
 /*
  * Many a GCC version messes this up and generates a 64x64 mult :-(
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
