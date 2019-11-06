Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16BE1F0C8B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 04:08:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=htuq/pM3sLH3gsLU2HqCZ9udNoZkoHWrEO1wt0A+J1w=; b=qSOj8SbImzCCbI
	ZL+jVqwHUORY6BmrgvZVRJ570XAAnFjxlnCvtcjaqopZqVZyyDLEeq6vsUcFbsefdixYgJAvxXG9N
	GQiMXglr+q4QMqRg2fgg1s263OCT/mVXYvHFdJfuYxvRBn7cxL9ajUCb5a6PmAD0d7KbTXfwhebbZ
	ct6DiGBjhuRsNE0BHZA8CgQeHsC4a2cgcEw0C0HiWGDgGM3G2UTKdMQrly0DyTB34+4MI12oyBxl3
	fe3xSITTkkvrTwfWhUFqOAwrEl8C86Cf1h7I8S3DjCkyOh7lRs4A+txNQwOrFVZtqGddBlvT5orOh
	WnoR/xHaepNoAWQN1C2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSBg0-00036F-Hq; Wed, 06 Nov 2019 03:08:08 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSBeg-0001zO-Ei
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 03:06:49 +0000
Received: by mail-pf1-x443.google.com with SMTP id 3so17714483pfb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 19:06:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=googlenew;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=nwR9CcGfOm2RmcVXjGycnTvK5Jd4c8Blttv9a/CZC/0=;
 b=UdMa2T9nHqA3LFMjK+pWj3K+yUaB0z+1BTvAUCLmq8bQfol0rDqOC2+1gH4O9E8A9h
 Yi3ZNqIkyTDIMhE55E4+6l5JYmf1RRUfULTwc8I4vanYKybs0i9ArtMod2CFq/SOJLw2
 KnSYnHKIMaIL2XcMxRpUhPlYwJFOmRTCCHEU5DlqpgSQLqQbxQTZAHuNRTKN2Cz7aD9W
 7Gw3ucM5qf3dc1YvUsn7RHLOhSt96s/fiOikxCDqUghfr0/RSTT59T66YrQNRhOZKKmT
 /fJjmAKh+QfzxwWjzZQJ7cAlhzHwS/6TkrU0xM2DT/MK7f37dnWPTFlgo9doHiy4Gab6
 JOxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nwR9CcGfOm2RmcVXjGycnTvK5Jd4c8Blttv9a/CZC/0=;
 b=V+mBXRvRcFzzb7grB6qf2Y/0yvDYAJ3VQSXvq0YRfagsSQGV2qijGSge4W51nu6h2C
 sipicNh/ilYTEUbeXy6xbTg3xDiBidwJhj/6spmGyeriiwET/mJi+SroUmY0XKXorllN
 NLs5FuQPwIwA3CzouKTvqja1bCChVj/N92yRMfVfHiQWzeYeXJpFhvmioUHwUblAKGjo
 ++9GE79WK+Bzg/hHpFfI8G1vWt7P8nDAQeKUSM+O6oKa6lt7v1xm10hxhkbnkAHlRbfn
 MCMl/S9pZpiSs5hW362FXl49YdUGqDHQzOIkW9QDx6CJ5Xg2X3F6g5x8GOAAEDtOW1FU
 XSPQ==
X-Gm-Message-State: APjAAAWHoDBq2jxCty6Et6+snOndINU2yDixG4+x1ZO85bWVj19ljHIp
 gdj+s2AN0CjtPa5XC7S/NuWS7A==
X-Google-Smtp-Source: APXvYqwl/ZkAnlXpWL33fvgsLGduP6TX1qo4dNY9VgxsWQ+dEiLM8Z4M9dI8XtEOR6FKqmqdz4o4Jg==
X-Received: by 2002:a63:f441:: with SMTP id p1mr197683pgk.362.1573009605013;
 Tue, 05 Nov 2019 19:06:45 -0800 (PST)
Received: from Mindolluin.ire.aristanetworks.com ([217.173.96.166])
 by smtp.gmail.com with ESMTPSA id k24sm19570487pgl.6.2019.11.05.19.06.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Nov 2019 19:06:43 -0800 (PST)
From: Dmitry Safonov <dima@arista.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 09/50] arm64: Add loglvl to dump_backtrace()
Date: Wed,  6 Nov 2019 03:05:00 +0000
Message-Id: <20191106030542.868541-10-dima@arista.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191106030542.868541-1-dima@arista.com>
References: <20191106030542.868541-1-dima@arista.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_190646_693371_72DD03A0 
X-CRM114-Status: GOOD (  16.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Petr Mladek <pmladek@suse.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Dmitry Safonov <dima@arista.com>,
 Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dmitry Safonov <0x7f454c46@gmail.com>, Russell King <linux@armlinux.org.uk>,
 Steven Rostedt <rostedt@goodmis.org>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Jiri Slaby <jslaby@suse.com>, Andrew Morton <akpm@linux-foundation.org>,
 Will Deacon <will@kernel.org>, Ingo Molnar <mingo@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently, the log-level of show_stack() depends on a platform
realization. It creates situations where the headers are printed with
lower log level or higher than the stacktrace (depending on
a platform or user).

Furthermore, it forces the logic decision from user to an architecture
side. In result, some users as sysrq/kdb/etc are doing tricks with
temporary rising console_loglevel while printing their messages.
And in result it not only may print unwanted messages from other CPUs,
but also omit printing at all in the unlucky case where the printk()
was deferred.

Introducing log-level parameter and KERN_UNSUPPRESSED [1] seems
an easier approach than introducing more printk buffers.
Also, it will consolidate printings with headers.

Add log level argument to dump_backtrace() as a preparation for
introducing show_stack_loglvl().

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Russell King <linux@armlinux.org.uk>
Cc: Will Deacon <will@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org
[1]: https://lore.kernel.org/lkml/20190528002412.1625-1-dima@arista.com/T/#u
Signed-off-by: Dmitry Safonov <dima@arista.com>
---
 arch/arm64/include/asm/stacktrace.h |  3 ++-
 arch/arm64/kernel/process.c         |  2 +-
 arch/arm64/kernel/traps.c           | 17 +++++++++--------
 3 files changed, 12 insertions(+), 10 deletions(-)

diff --git a/arch/arm64/include/asm/stacktrace.h b/arch/arm64/include/asm/stacktrace.h
index 4d9b1f48dc39..fdb913cc0bcb 100644
--- a/arch/arm64/include/asm/stacktrace.h
+++ b/arch/arm64/include/asm/stacktrace.h
@@ -64,7 +64,8 @@ struct stackframe {
 extern int unwind_frame(struct task_struct *tsk, struct stackframe *frame);
 extern void walk_stackframe(struct task_struct *tsk, struct stackframe *frame,
 			    int (*fn)(struct stackframe *, void *), void *data);
-extern void dump_backtrace(struct pt_regs *regs, struct task_struct *tsk);
+extern void dump_backtrace(struct pt_regs *regs, struct task_struct *tsk,
+			   const char *loglvl);
 
 DECLARE_PER_CPU(unsigned long *, irq_stack_ptr);
 
diff --git a/arch/arm64/kernel/process.c b/arch/arm64/kernel/process.c
index 71f788cd2b18..1a6b58b1be2c 100644
--- a/arch/arm64/kernel/process.c
+++ b/arch/arm64/kernel/process.c
@@ -291,7 +291,7 @@ void __show_regs(struct pt_regs *regs)
 void show_regs(struct pt_regs * regs)
 {
 	__show_regs(regs);
-	dump_backtrace(regs, NULL);
+	dump_backtrace(regs, NULL, KERN_DEFAULT);
 }
 
 static void tls_thread_flush(void)
diff --git a/arch/arm64/kernel/traps.c b/arch/arm64/kernel/traps.c
index 34739e80211b..59072c7b9fb4 100644
--- a/arch/arm64/kernel/traps.c
+++ b/arch/arm64/kernel/traps.c
@@ -52,9 +52,9 @@ static const char *handler[]= {
 
 int show_unhandled_signals = 0;
 
-static void dump_backtrace_entry(unsigned long where)
+static void dump_backtrace_entry(unsigned long where, const char *loglvl)
 {
-	printk(" %pS\n", (void *)where);
+	printk("%s %pS\n", loglvl, (void *)where);
 }
 
 static void dump_kernel_instr(const char *lvl, struct pt_regs *regs)
@@ -82,12 +82,13 @@ static void dump_kernel_instr(const char *lvl, struct pt_regs *regs)
 	printk("%sCode: %s\n", lvl, str);
 }
 
-void dump_backtrace(struct pt_regs *regs, struct task_struct *tsk)
+void dump_backtrace(struct pt_regs *regs, struct task_struct *tsk,
+		    const char *loglvl)
 {
 	struct stackframe frame;
 	int skip = 0;
 
-	pr_debug("%s(regs = %p tsk = %p)\n", __func__, regs, tsk);
+	printk("%s%s(regs = %p tsk = %p)\n", loglvl, __func__, regs, tsk);
 
 	if (regs) {
 		if (user_mode(regs))
@@ -114,11 +115,11 @@ void dump_backtrace(struct pt_regs *regs, struct task_struct *tsk)
 				thread_saved_pc(tsk));
 	}
 
-	printk("Call trace:\n");
+	printk("%sCall trace:\n", loglvl);
 	do {
 		/* skip until specified stack frame */
 		if (!skip) {
-			dump_backtrace_entry(frame.pc);
+			dump_backtrace_entry(frame.pc, loglvl);
 		} else if (frame.fp == regs->regs[29]) {
 			skip = 0;
 			/*
@@ -128,7 +129,7 @@ void dump_backtrace(struct pt_regs *regs, struct task_struct *tsk)
 			 * at which an exception has taken place, use regs->pc
 			 * instead.
 			 */
-			dump_backtrace_entry(regs->pc);
+			dump_backtrace_entry(regs->pc, loglvl);
 		}
 	} while (!unwind_frame(tsk, &frame));
 
@@ -137,7 +138,7 @@ void dump_backtrace(struct pt_regs *regs, struct task_struct *tsk)
 
 void show_stack(struct task_struct *tsk, unsigned long *sp)
 {
-	dump_backtrace(NULL, tsk);
+	dump_backtrace(NULL, tsk, KERN_DEFAULT);
 	barrier();
 }
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
