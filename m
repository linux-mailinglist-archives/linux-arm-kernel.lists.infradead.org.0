Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E40107C3A9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 15:35:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=5+D+A/wep03adVlvua3b1yugVuzM6+s6sr9cGTulrhs=; b=B1+
	U/L0i5OvxWu1JRQdGE3MDV/QRrHjqVDrBHbDJcsyxtk+F0F77ULrnQDYTsU8MrMYZb98avHAHR2xA
	Z56EaD6IfuyFdypi3Nt3cMTSlg8pwBcVGUAUab3fVYEROAUSyULYGrC5r7kK16OEJ3lFdVNB5SzDE
	C8gbk2BAImIMViNgbU529GA7oapF6WCwl5uuJMV0ObGXaeTNvQfQxhrkewDPGk4Vg1Y2aqg1qtwav
	KjnccJVkm/pN8Laa/GD98/RbdiEMISLk0Lm/c5IPlUGrNdCO0ZzlrweOpzXM6rDd9bLrwmrwfyjxp
	K4FzNkZ19IUOESmJAUaGCbQ9yEMqMHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsolR-0006eR-VL; Wed, 31 Jul 2019 13:35:33 +0000
Received: from michel.telenet-ops.be ([2a02:1800:110:4::f00:18])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsolK-0006dN-JL
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 13:35:28 +0000
Received: from ramsan ([84.194.98.4]) by michel.telenet-ops.be with bizsmtp
 id jRbM2000f05gfCL06RbNwn; Wed, 31 Jul 2019 15:35:22 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1hsolF-0001Cx-TU; Wed, 31 Jul 2019 15:35:21 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1hsolF-0004g7-RV; Wed, 31 Jul 2019 15:35:21 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Subject: [PATCH] arm64: Move TIF_* documentation to individual definitions
Date: Wed, 31 Jul 2019 15:35:20 +0200
Message-Id: <20190731133520.17939-1-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_063526_801057_7C44F062 
X-CRM114-Status: UNSURE (   8.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:110:4:0:0:f00:18 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Will Drewry <wad@chromium.org>, Kees Cook <keescook@chromium.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>, linux-kernel@vger.kernel.org,
 Andy Lutomirski <luto@amacapital.net>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some TIF_* flags are documented in the comment block at the top, some
next to their definitions, some in both places.

Move all documentation to the individual definitions for consistency,
and for easy lookup.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
The alternative is to move all of them to the comment block, and using
linuxdoc style.

 arch/arm64/include/asm/thread_info.h | 24 ++++++++----------------
 1 file changed, 8 insertions(+), 16 deletions(-)

diff --git a/arch/arm64/include/asm/thread_info.h b/arch/arm64/include/asm/thread_info.h
index 180b34ec59650a9b..cb3eb1ccccc4116b 100644
--- a/arch/arm64/include/asm/thread_info.h
+++ b/arch/arm64/include/asm/thread_info.h
@@ -60,28 +60,20 @@ void arch_release_task_struct(struct task_struct *tsk);
 #endif
 
 /*
- * thread information flags:
- *  TIF_SYSCALL_TRACE	- syscall trace active
- *  TIF_SYSCALL_TRACEPOINT - syscall tracepoint for ftrace
- *  TIF_SYSCALL_AUDIT	- syscall auditing
- *  TIF_SECCOMP		- syscall secure computing
- *  TIF_SYSCALL_EMU     - syscall emulation active
- *  TIF_SIGPENDING	- signal pending
- *  TIF_NEED_RESCHED	- rescheduling necessary
- *  TIF_NOTIFY_RESUME	- callback before returning to user
+ * thread information flags
  */
-#define TIF_SIGPENDING		0
-#define TIF_NEED_RESCHED	1
+#define TIF_SIGPENDING		0	/* signal pending */
+#define TIF_NEED_RESCHED	1	/* rescheduling necessary */
 #define TIF_NOTIFY_RESUME	2	/* callback before returning to user */
 #define TIF_FOREIGN_FPSTATE	3	/* CPU's FP state is not current's */
 #define TIF_UPROBE		4	/* uprobe breakpoint or singlestep */
 #define TIF_FSCHECK		5	/* Check FS is USER_DS on return */
 #define TIF_NOHZ		7
-#define TIF_SYSCALL_TRACE	8
-#define TIF_SYSCALL_AUDIT	9
-#define TIF_SYSCALL_TRACEPOINT	10
-#define TIF_SECCOMP		11
-#define TIF_SYSCALL_EMU		12
+#define TIF_SYSCALL_TRACE	8	/* syscall trace active */
+#define TIF_SYSCALL_AUDIT	9	/* syscall auditing */
+#define TIF_SYSCALL_TRACEPOINT	10	/* syscall tracepoint for ftrace */
+#define TIF_SECCOMP		11	/* syscall secure computing */
+#define TIF_SYSCALL_EMU		12	/* syscall emulation active */
 #define TIF_MEMDIE		18	/* is terminating due to OOM killer */
 #define TIF_FREEZE		19
 #define TIF_RESTORE_SIGMASK	20
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
