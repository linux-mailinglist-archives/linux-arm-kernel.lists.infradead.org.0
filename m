Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 619F018D210
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 15:57:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uBs1hiJaGG5Yu3dljxplfHS3kASfJj/2ZSfsqLxVXOY=; b=CfcG01uf2+h6z9
	tqtnzRp/Wgj8ToNnjmf2zkeHcM9HSs39HtEQTyV45Y2TtgvqX1ihIDt+jf3dctSRhOsIA/qJg4Vjn
	YeqZCUY2qRUdko98YwrjK2iNG8czOtJ5NUnkBM/6Z0x91Gd8GOVZCXADBkIQUZIvjhqHvaLnP4QSi
	qWWyhItLuy/T0aOR9icw9LJyCO9Tw0XoaD75CtlyYiWzQY3cxTR6OEOI3XChg2l2Mgc4T81Cp9xm/
	gDREdgPf5Rw1Ck/AwRUres7n9njEL/bD257meeJtsVGV/71HFmZu9ai0ellJ2nNmnx4nnxY/YwYj2
	6lfMJPzkIw4HNTlTiGvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFJ5o-0000D4-Cc; Fri, 20 Mar 2020 14:57:48 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFJ3G-0006AP-3j
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 14:55:12 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 48B22FEC;
 Fri, 20 Mar 2020 07:55:09 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com
 [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 510D33F792;
 Fri, 20 Mar 2020 07:55:06 -0700 (PDT)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
 linux-mips@vger.kernel.org, x86@kernel.org
Subject: [PATCH v5 08/26] linux/clocksource.h: Extract common header for vDSO
Date: Fri, 20 Mar 2020 14:53:33 +0000
Message-Id: <20200320145351.32292-9-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200320145351.32292-1-vincenzo.frascino@arm.com>
References: <20200320145351.32292-1-vincenzo.frascino@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_075510_790062_39649546 
X-CRM114-Status: GOOD (  14.30  )
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

Split clocksource.h into linux and common headers to make the latter
suitable for inclusion in the vDSO library.

Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 include/linux/clocksource.h | 11 +----------
 include/vdso/clocksource.h  | 23 +++++++++++++++++++++++
 2 files changed, 24 insertions(+), 10 deletions(-)
 create mode 100644 include/vdso/clocksource.h

diff --git a/include/linux/clocksource.h b/include/linux/clocksource.h
index 02e3282719bd..86d143db6523 100644
--- a/include/linux/clocksource.h
+++ b/include/linux/clocksource.h
@@ -28,16 +28,7 @@ struct module;
 #include <asm/clocksource.h>
 #endif
 
-enum vdso_clock_mode {
-	VDSO_CLOCKMODE_NONE,
-#ifdef CONFIG_GENERIC_GETTIMEOFDAY
-	VDSO_ARCH_CLOCKMODES,
-#endif
-	VDSO_CLOCKMODE_MAX,
-
-	/* Indicator for time namespace VDSO */
-	VDSO_CLOCKMODE_TIMENS = INT_MAX
-};
+#include <vdso/clocksource.h>
 
 /**
  * struct clocksource - hardware abstraction for a free running counter
diff --git a/include/vdso/clocksource.h b/include/vdso/clocksource.h
new file mode 100644
index 000000000000..ab58330e4e5d
--- /dev/null
+++ b/include/vdso/clocksource.h
@@ -0,0 +1,23 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __VDSO_CLOCKSOURCE_H
+#define __VDSO_CLOCKSOURCE_H
+
+#include <vdso/limits.h>
+
+#if defined(CONFIG_ARCH_CLOCKSOURCE_DATA) || \
+	defined(CONFIG_GENERIC_GETTIMEOFDAY)
+#include <asm/vdso/clocksource.h>
+#endif /* CONFIG_ARCH_CLOCKSOURCE_DATA || CONFIG_GENERIC_GETTIMEOFDAY */
+
+enum vdso_clock_mode {
+	VDSO_CLOCKMODE_NONE,
+#ifdef CONFIG_GENERIC_GETTIMEOFDAY
+	VDSO_ARCH_CLOCKMODES,
+#endif
+	VDSO_CLOCKMODE_MAX,
+
+	/* Indicator for time namespace VDSO */
+	VDSO_CLOCKMODE_TIMENS = INT_MAX
+};
+
+#endif /* __VDSO_CLOCKSOURCE_H */
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
