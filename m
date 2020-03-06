Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1278817BEFF
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 14:35:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KLOAxmLCePUfksw8rOpTHZx6um2SuikSDOrWlXy28Zw=; b=Gqpuc23rSAE/Jd
	jlPkG12GTiE5eigudwQYqYaZ9Idav/LPr1R6XxVjeQEAOypDkzcMhNhAxoO14DY33sKUGKJcriWZP
	b1T+4lv/Z4u9AjNj/VijlLpDinf8N/a0CNkbU49jNHbfKCp346WTT2d73DANkgRZnxYycui1yHFFq
	ewT7OiHc3NTgozEY4lwfF7Ne8CqV0k6K63c6Z9R1tvfMimsmOMG4nzinEmVqlBFVhT0mhOwxpzCgS
	VZyZU8HwcGbmMfC9ORw/W8OvgXGz488XMH5eyYb+8y7fprtsZhyJdsvzFsXIZm5vOQOnOS0zyfeBZ
	uwk0CFto1CTxfkMkTL5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAD7v-0005xO-HY; Fri, 06 Mar 2020 13:34:55 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAD6G-0004U0-Po
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 13:33:14 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BF0E1101E;
 Fri,  6 Mar 2020 05:33:11 -0800 (PST)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com
 [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0971D3F6CF;
 Fri,  6 Mar 2020 05:33:08 -0800 (PST)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org,
 clang-built-linux@googlegroups.com, x86@kernel.org
Subject: [PATCH v2 06/20] linux/time32.h: Extract common header for vDSO
Date: Fri,  6 Mar 2020 13:32:28 +0000
Message-Id: <20200306133242.26279-7-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200306133242.26279-1-vincenzo.frascino@arm.com>
References: <20200306133242.26279-1-vincenzo.frascino@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_053312_895097_017694C7 
X-CRM114-Status: GOOD (  13.59  )
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

Split time32.h into linux and common headers to make the latter suitable
for inclusion in the vDSO library.

Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 include/common/time32.h | 17 +++++++++++++++++
 include/linux/time32.h  | 13 +------------
 2 files changed, 18 insertions(+), 12 deletions(-)
 create mode 100644 include/common/time32.h

diff --git a/include/common/time32.h b/include/common/time32.h
new file mode 100644
index 000000000000..d5b85abdfaf1
--- /dev/null
+++ b/include/common/time32.h
@@ -0,0 +1,17 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __COMMON_TIME32_H
+#define __COMMON_TIME32_H
+
+typedef s32		old_time32_t;
+
+struct old_timespec32 {
+	old_time32_t	tv_sec;
+	s32		tv_nsec;
+};
+
+struct old_timeval32 {
+	old_time32_t	tv_sec;
+	s32		tv_usec;
+};
+
+#endif /* __COMMON_TIME32_H */
diff --git a/include/linux/time32.h b/include/linux/time32.h
index cf9320cd2d0b..e75dd5f9df8f 100644
--- a/include/linux/time32.h
+++ b/include/linux/time32.h
@@ -11,18 +11,7 @@
 
 #include <linux/time64.h>
 #include <linux/timex.h>
-
-typedef s32		old_time32_t;
-
-struct old_timespec32 {
-	old_time32_t	tv_sec;
-	s32		tv_nsec;
-};
-
-struct old_timeval32 {
-	old_time32_t	tv_sec;
-	s32		tv_usec;
-};
+#include <common/time32.h>
 
 struct old_itimerspec32 {
 	struct old_timespec32 it_interval;
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
