Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D405A17BF03
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 14:35:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+1+70P+gSSSSn+nn96va6Tpq7QgvY2VVSt37u4rG9HE=; b=oKP4cxOpq2j78m
	FrDzjVwdRB4pta+ZRJgpy7TitYDWjsA+2/fVULWtFoOqOLoTsw1U0vc0pEkOG474yR/ZUdsLmbKJy
	VfnHW+CD8cskK5O0/5exFoLm68qSb8EOdRd4m9XYTU9ZoTdpqVDzsNrEfu5MMIIbwvb8+M0QyM5qo
	p5cOEPgdLIxPCNDNJ7fIx/BMEElkIVdV6crbQfO/owzys7Uu+1GORa7LGMYiE0YRFNdMbRTL9zbPi
	oUnuy4XrieK9M0vT2bPApYxiRtjheLPlm5bOCtGmWYL91J2KeTWoKixbSWLUo5nzQ8wy5SV8hxpil
	vEZothCtVVZ4x5VxVX3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAD8V-0007gU-B6; Fri, 06 Mar 2020 13:35:31 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAD6M-0004aE-5Q
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 13:33:19 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AE5DD4B2;
 Fri,  6 Mar 2020 05:33:17 -0800 (PST)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com
 [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id ECC3E3F6CF;
 Fri,  6 Mar 2020 05:33:14 -0800 (PST)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org,
 clang-built-linux@googlegroups.com, x86@kernel.org
Subject: [PATCH v2 08/20] linux/jiffies.h: Extract common header for vDSO
Date: Fri,  6 Mar 2020 13:32:30 +0000
Message-Id: <20200306133242.26279-9-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200306133242.26279-1-vincenzo.frascino@arm.com>
References: <20200306133242.26279-1-vincenzo.frascino@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_053318_258140_BA51D274 
X-CRM114-Status: GOOD (  14.28  )
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

Split jiffies.h into linux and common headers to make the latter suitable
for inclusion in the vDSO library.

Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 include/common/jiffies.h | 11 +++++++++++
 include/linux/jiffies.h  |  4 +---
 2 files changed, 12 insertions(+), 3 deletions(-)
 create mode 100644 include/common/jiffies.h

diff --git a/include/common/jiffies.h b/include/common/jiffies.h
new file mode 100644
index 000000000000..ff0207f00550
--- /dev/null
+++ b/include/common/jiffies.h
@@ -0,0 +1,11 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __COMMON_JIFFIES_H
+#define __COMMON_JIFFIES_H
+
+#include <asm/param.h>			/* for HZ */
+#include <common/time64.h>
+
+/* TICK_NSEC is the time between ticks in nsec assuming SHIFTED_HZ */
+#define TICK_NSEC ((NSEC_PER_SEC+HZ/2)/HZ)
+
+#endif /* __COMMON_JIFFIES_H */
diff --git a/include/linux/jiffies.h b/include/linux/jiffies.h
index e3279ef24d28..710539d1e39b 100644
--- a/include/linux/jiffies.h
+++ b/include/linux/jiffies.h
@@ -8,6 +8,7 @@
 #include <linux/types.h>
 #include <linux/time.h>
 #include <linux/timex.h>
+#include <common/jiffies.h>
 #include <asm/param.h>			/* for HZ */
 #include <generated/timeconst.h>
 
@@ -59,9 +60,6 @@
 
 extern int register_refined_jiffies(long clock_tick_rate);
 
-/* TICK_NSEC is the time between ticks in nsec assuming SHIFTED_HZ */
-#define TICK_NSEC ((NSEC_PER_SEC+HZ/2)/HZ)
-
 /* TICK_USEC is the time between ticks in usec assuming SHIFTED_HZ */
 #define TICK_USEC ((USEC_PER_SEC + HZ/2) / HZ)
 
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
