Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61B351AF4D0
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 Apr 2020 22:22:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nz3B0EcN4zdbwNm2iUdMw0CSddIZra4XRtnrjHaOJLg=; b=G19yiUR1gDKN3p
	OSReYW/LmeIJ1BOabaZ5P/tPza9r8FLtdq50jQCBdsDU/iYb6umUR+xnV0Deny174rkPjC9gpFl2a
	NGM6NQnIiwP1nTsReufCM5D2gpXNYYS7ooNrteI16r/98uxOyC0UCx/GnzrRwXKfEPasHoD7297jt
	AHG2TYPyyGnq7m9ceD3ZvGOzxV6bPHHZ8inQiGhbD/zzLkN8UoP/w3hh2jNf+Dw1BeNGnlCizj/Sh
	Tub0ae23IJO5iWtUwlT9ijJXXAtOCMfcuFdGb9IpETREonaWdDjBT6nesnia+/AYQ6e1+qZKJBf5C
	VwBNMs8sbdGIRtXt72zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPtya-0005SL-UO; Sat, 18 Apr 2020 20:22:08 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPtwb-0001gI-VO
 for linux-arm-kernel@lists.infradead.org; Sat, 18 Apr 2020 20:20:08 +0000
Received: by mail-wr1-x443.google.com with SMTP id b11so7163235wrs.6
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 18 Apr 2020 13:20:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=googlenew;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=dkzyulJV/7qkkPtcep1pQetuOaGGqOXoTWxKZcMa1MQ=;
 b=EopnuNondkFwR/n2RHNBrhgTOKlqFeN5ZLK13kFcyl2cOryOL9JrgJP1wYf51IrAI5
 OqbD5wqQ8oeh9GAvYm7fhQvSrXoyOFUMZNkvrNGqLv8O5qOQZDrVtwG9P6JoA5SNRQHk
 puJV2KXWGobo0NBV4bVovQxoT4cZCTNJUA4FCk36JwWOwVZyC8+WdTghlRr5vDNxoyDg
 iGwCgA1A3ufIydrlqElIBlKloS/Tem7QSxwnT4yRe3uURl+c+EK4ezS+fMIwq96ghMcW
 Ge9G6hDUH/ML08BLqIu2fv+/Zk77jjW5EQVDsXO1FlT2UpQquJqkhhdA2LZWYGJikpF4
 s/tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=dkzyulJV/7qkkPtcep1pQetuOaGGqOXoTWxKZcMa1MQ=;
 b=WZsc+LwF++jXwzfyTZPO7gnSPM1lYwYPHPOI4TH+2wcv+ENTghYsDrWyQKgqJiGMsg
 zSVCm3Y09RGejdZAk0NOx4rrtwkbvt191Xsxdhak0iYR5IiT4tcyrixg3nFlC89kvEeY
 B/Ps57tg48ETCBluwY/MRfdpC0GALPBj1fSaK26y46laOAc/lyvmuvuCcdmAxQ8xIfT0
 Y3TxjnaaNLRyDCY5FSlIqJ/+TTDlAcZyiKn3gIWdMzHDFbCoWVPfXm2N6aeNHD+91L/H
 HVKFX4VTbPl2c8IowCExvOsoQAS8GPZSag/1Wol9uAWTFBVbjQV7I/nMKSMzwHNLBjJf
 jZvw==
X-Gm-Message-State: AGi0PuaxM+Ouy0vmQFD3DKxWLxda5fTc1E+u2ApadhWDryWG79tCMifZ
 U8vnmpFaS4ohn2uc/pFw8runOw==
X-Google-Smtp-Source: APiQypJmaeWTxqn/JM4JZMltVjQkoBv8DY/DUl2OpB7AN3FViMvQ+oo9/8RkwtGyLcScX2v4kIdP+Q==
X-Received: by 2002:a5d:640a:: with SMTP id z10mr4053329wru.280.1587241203021; 
 Sat, 18 Apr 2020 13:20:03 -0700 (PDT)
Received: from localhost.localdomain ([2a02:8084:e84:2480:228:f8ff:fe6f:83a8])
 by smtp.gmail.com with ESMTPSA id
 m1sm31735255wro.64.2020.04.18.13.20.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 18 Apr 2020 13:20:02 -0700 (PDT)
From: Dmitry Safonov <dima@arista.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCHv3 09/50] arm64: Add loglvl to dump_backtrace()
Date: Sat, 18 Apr 2020 21:19:03 +0100
Message-Id: <20200418201944.482088-10-dima@arista.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200418201944.482088-1-dima@arista.com>
References: <20200418201944.482088-1-dima@arista.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200418_132006_297613_D2B7E86C 
X-CRM114-Status: GOOD (  16.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 arch/arm64/kernel/traps.c           | 15 ++++++++-------
 3 files changed, 11 insertions(+), 9 deletions(-)

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
index 56be4cbf771f..360d3c8b9bb4 100644
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
index cf402be5c573..6e777cbd4eb5 100644
--- a/arch/arm64/kernel/traps.c
+++ b/arch/arm64/kernel/traps.c
@@ -53,9 +53,9 @@ static const char *handler[]= {
 
 int show_unhandled_signals = 0;
 
-static void dump_backtrace_entry(unsigned long where)
+static void dump_backtrace_entry(unsigned long where, const char *loglvl)
 {
-	printk(" %pS\n", (void *)where);
+	printk("%s %pS\n", loglvl, (void *)where);
 }
 
 static void dump_kernel_instr(const char *lvl, struct pt_regs *regs)
@@ -83,7 +83,8 @@ static void dump_kernel_instr(const char *lvl, struct pt_regs *regs)
 	printk("%sCode: %s\n", lvl, str);
 }
 
-void dump_backtrace(struct pt_regs *regs, struct task_struct *tsk)
+void dump_backtrace(struct pt_regs *regs, struct task_struct *tsk,
+		    const char *loglvl)
 {
 	struct stackframe frame;
 	int skip = 0;
@@ -115,11 +116,11 @@ void dump_backtrace(struct pt_regs *regs, struct task_struct *tsk)
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
@@ -129,7 +130,7 @@ void dump_backtrace(struct pt_regs *regs, struct task_struct *tsk)
 			 * at which an exception has taken place, use regs->pc
 			 * instead.
 			 */
-			dump_backtrace_entry(regs->pc);
+			dump_backtrace_entry(regs->pc, loglvl);
 		}
 	} while (!unwind_frame(tsk, &frame));
 
@@ -138,7 +139,7 @@ void dump_backtrace(struct pt_regs *regs, struct task_struct *tsk)
 
 void show_stack(struct task_struct *tsk, unsigned long *sp)
 {
-	dump_backtrace(NULL, tsk);
+	dump_backtrace(NULL, tsk, KERN_DEFAULT);
 	barrier();
 }
 
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
