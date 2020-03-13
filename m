Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DC8D184B72
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 16:46:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/6npvs/bAsvyJcNCj07NCMwdw/sDmwMiOxdT5fLJsDY=; b=igzdiZwB6ZX8CE
	koJ9VJZefZmHMq6b7O75ar0WdS7bta+NnDFi2ioIQKCO7Emu/5O4B5iKFaC2P0PkKBwtQMCplx7BI
	tsCJFdbakiRHqK6adfcq4VcII/yf/KoeGQHR0tZNhPXPdD8hwN2ATXuq2d1cp1vrDeXcuddj1xPkF
	dQ8X2MJ/SW9goBWs0C+hpzD6VKsDcUEX9AJXg/JMLrogYJp0Pfq106xxbH7BBxhfo547raC9OeoD6
	exxmg/EEFqsfoGIu36G/BnehYXiBaT9ZGzbvF3CqvyDTtvr1bq6+wHMVDNQfTK2B6zGfAFaLbbiKd
	rUubrciovnH1OAMwuKnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCmWI-0007pV-3O; Fri, 13 Mar 2020 15:46:42 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCmU1-0004tV-U5
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 15:44:23 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7078C1045;
 Fri, 13 Mar 2020 08:44:21 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com
 [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7AE683F67D;
 Fri, 13 Mar 2020 08:44:18 -0700 (PDT)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org,
 clang-built-linux@googlegroups.com, x86@kernel.org
Subject: [PATCH v3 05/26] arm: Introduce asm/vdso/clocksource.h
Date: Fri, 13 Mar 2020 15:43:24 +0000
Message-Id: <20200313154345.56760-6-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200313154345.56760-1-vincenzo.frascino@arm.com>
References: <20200313154345.56760-1-vincenzo.frascino@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_084422_075544_AFC45AA6 
X-CRM114-Status: GOOD (  13.63  )
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
Cc: Mark Rutland <Mark.Rutland@arm.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Dmitry Safonov <0x7f454c46@gmail.com>, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, Stephen Boyd <sboyd@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Russell King <linux@armlinux.org.uk>, Mark Salyzyn <salyzyn@android.com>,
 Paul Burton <paul.burton@mips.com>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, Andy Lutomirski <luto@kernel.org>,
 Marc Zyngier <maz@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
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

Introduce asm/vdso/clocksource.h to contain all the arm64 specific
functions that are suitable for vDSO inclusion.

This header will be required by a future patch that will generalize
vdso/clocksource.h.

Cc: Russell King <linux@armlinux.org.uk>
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 arch/arm/include/asm/clocksource.h      | 6 +++---
 arch/arm/include/asm/vdso/clocksource.h | 8 ++++++++
 2 files changed, 11 insertions(+), 3 deletions(-)
 create mode 100644 arch/arm/include/asm/vdso/clocksource.h

diff --git a/arch/arm/include/asm/clocksource.h b/arch/arm/include/asm/clocksource.h
index 73beb7f131de..13651c731a81 100644
--- a/arch/arm/include/asm/clocksource.h
+++ b/arch/arm/include/asm/clocksource.h
@@ -1,7 +1,7 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 #ifndef _ASM_CLOCKSOURCE_H
 #define _ASM_CLOCKSOURCE_H
 
-#define VDSO_ARCH_CLOCKMODES	\
-	VDSO_CLOCKMODE_ARCHTIMER
+#include <asm/vdso/clocksource.h>
 
-#endif
+#endif /* _ASM_CLOCKSOURCE_H */
diff --git a/arch/arm/include/asm/vdso/clocksource.h b/arch/arm/include/asm/vdso/clocksource.h
new file mode 100644
index 000000000000..50c0b19fb755
--- /dev/null
+++ b/arch/arm/include/asm/vdso/clocksource.h
@@ -0,0 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __ASM_VDSOCLOCKSOURCE_H
+#define __ASM_VDSOCLOCKSOURCE_H
+
+#define VDSO_ARCH_CLOCKMODES	\
+	VDSO_CLOCKMODE_ARCHTIMER
+
+#endif /* __ASM_VDSOCLOCKSOURCE_H */
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
