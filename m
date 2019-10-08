Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDFA7CFE2A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 17:54:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=w90KzHcoFfC7duzH2UC+DQjxyxr6HLnrZqoxbZINK38=; b=LQVx7e5eqyUhQv
	vRJhMlCVJ/RElljD92yAhPIn0wW5pvId1eVQk9R2TsDSQeHUb4uIaFpwB53hFpk0yN+mzMRXAEegr
	bS73oHtZ9mUG4jk7FBSTzVQNdNNtaQLcJHuCJ2ErB22bJRVMGU/x7uBLBb/zL4aVCtomKRs6ARGDD
	ickXoqTIjJAT+50fdMP6xNVXf61C6esw0SA3I2ZV3vSRcReQF0gQz4GHj14AyGz6+rnJGSde157XA
	KxReLHfu7zDlydQP+4U7R46ogh8FURPYGx78C1eulPSr9JXKfaMZbO8kDEtofj22NHqmvMZz+Bzti
	LPA+2FuP00H6KLIi88MQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHroJ-0006uY-10; Tue, 08 Oct 2019 15:54:03 +0000
Received: from imap1.codethink.co.uk ([176.9.8.82])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHroB-0006u3-Jd
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 15:53:57 +0000
Received: from [167.98.27.226] (helo=rainbowdash.codethink.co.uk)
 by imap1.codethink.co.uk with esmtpsa (Exim 4.84_2 #1 (Debian))
 id 1iHro7-0007JN-HF; Tue, 08 Oct 2019 16:53:51 +0100
Received: from ben by rainbowdash.codethink.co.uk with local (Exim 4.92.2)
 (envelope-from <ben@rainbowdash.codethink.co.uk>)
 id 1iHro7-0007K4-0p; Tue, 08 Oct 2019 16:53:51 +0100
From: Ben Dooks <ben.dooks@codethink.co.uk>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm: only build return_address() if needed
Date: Tue,  8 Oct 2019 16:53:49 +0100
Message-Id: <20191008155349.28105-1-ben.dooks@codethink.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_085355_794398_DFAB4974 
X-CRM114-Status: GOOD (  10.57  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [176.9.8.82 listed in list.dnswl.org]
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
Cc: linux-kernel@lists.codethink.co.uk, Steven Rostedt <rostedt@goodmis.org>,
 Ben Dooks <ben.dooks@codethink.co.uk>, Mark Charlebois <charlebm@gmail.com>,
 rmk@arm.linux.org.uk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The system currently warns if the config conditions for
building return_address in arch/arm/kernel/return_address.c
are not met, leaving just an EXPORT_SYMBOL_GPL(return_address)
of a function defined to be 'static linline'.
This is a result of aeea3592a13b ("ARM: 8158/1: LLVMLinux: use static inline in ARM ftrace.h").

Since we're not going to build anything other than an exported
symbol for something that is already being defined to be an
inline-able return of NULL, just avoid building the code to
remove the following warning:

Fixes: aeea3592a13b ("ARM: 8158/1: LLVMLinux: use static inline in ARM ftrace.h")
Signed-off-by: Ben Dooks <ben.dooks@codethink.co.uk>
---
KernelVersion: 5.4-rc2
---
 arch/arm/kernel/Makefile         | 6 +++++-
 arch/arm/kernel/return_address.c | 4 ----
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm/kernel/Makefile b/arch/arm/kernel/Makefile
index 8cad59465af3..818ed2f3c7b9 100644
--- a/arch/arm/kernel/Makefile
+++ b/arch/arm/kernel/Makefile
@@ -17,10 +17,14 @@ CFLAGS_REMOVE_return_address.o = -pg
 # Object file lists.
 
 obj-y		:= elf.o entry-common.o irq.o opcodes.o \
-		   process.o ptrace.o reboot.o return_address.o \
+		   process.o ptrace.o reboot.o \
 		   setup.o signal.o sigreturn_codes.o \
 		   stacktrace.o sys_arm.o time.o traps.o
 
+ifeq ($(CONFIG_ARM_UNWIND),n)
+obj-$(CONFIG_FRAME_POINTER)	+= return_address.o
+endif
+
 obj-$(CONFIG_ATAGS)		+= atags_parse.o
 obj-$(CONFIG_ATAGS_PROC)	+= atags_proc.o
 obj-$(CONFIG_DEPRECATED_PARAM_STRUCT) += atags_compat.o
diff --git a/arch/arm/kernel/return_address.c b/arch/arm/kernel/return_address.c
index b0d2f1fe891d..7b42ac010fdf 100644
--- a/arch/arm/kernel/return_address.c
+++ b/arch/arm/kernel/return_address.c
@@ -7,8 +7,6 @@
  */
 #include <linux/export.h>
 #include <linux/ftrace.h>
-
-#if defined(CONFIG_FRAME_POINTER) && !defined(CONFIG_ARM_UNWIND)
 #include <linux/sched.h>
 
 #include <asm/stacktrace.h>
@@ -53,6 +51,4 @@ void *return_address(unsigned int level)
 		return NULL;
 }
 
-#endif /* if defined(CONFIG_FRAME_POINTER) && !defined(CONFIG_ARM_UNWIND) */
-
 EXPORT_SYMBOL_GPL(return_address);
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
