Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 351BA186D7B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 15:42:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fbGyscp13f1Q683jPWjLW6rOkK/0jUZciixFpOx7iIY=; b=Osu8kl3JxFXNso
	2uUCA2IAaMp6OmzViL81E3ojgAsHE9grWn5EPSNXjjcYmm0zzJhKG8jl5FvEqZk5vk+T5ZNaYXSVd
	6xYYak2F09QQK3+DruDJuSir3Aao9EXs89zsSGuLADM+8LoRxgLNp0sjn/molfKdbJObo8qIbQne7
	nDzOYpfX6aGPDga8xfsy2bBwb+/lyFt9TULS4tynv3cG6n90j388WGnRB8ooJQGBks13WrTUsXmrm
	BW0BHiPLlEhzwobnq9Fl2o6UDGV5Nx6ZtdAbZcvn9dPg/l0tQ4chyfrt3sZr95OU536wkiUoKmNQU
	Z8f42VEzDaps2F2VjTIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDqwE-0003Ht-Mb; Mon, 16 Mar 2020 14:41:54 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDqun-00025C-WA
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 14:40:28 +0000
Received: by mail-pl1-x644.google.com with SMTP id t3so8094877plz.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Mar 2020 07:40:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=googlenew;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Kscgl6LMW8fnhvnht43GSfN2W2mDU+MdbGlTg6HKa0I=;
 b=Gne+q2gYLPZmQpw2g8GRgQzskeppT1C+fJCqkoXNdVYmIZQjpev41BEdLNF1jjIQjG
 bGjjMFxo5Gkn1Q6mgz4J6CKJTMSKDZbkqxPsKKCyL04HIEt0Sil53pBRzeTo6GIXZMq0
 /o+sZrqei2DdmSDlTsng/iEneFCOSu/ri3/3ZvVa64ByrypgmIPwqhdio/XJZJ3akJcK
 v+Eyy3Tivuc/8IbuEDxriEyeuOjFT1/o70jxvSmW+LjyHiOiCv3pL/yxTHjm3ewO+Kdf
 GVr9RSJWpKaWctz4YEi5W/j4l93ItRFd4l+7ZK+rQP8/nEqazAWa2tUwHrzQiJgwWZ9W
 AvOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Kscgl6LMW8fnhvnht43GSfN2W2mDU+MdbGlTg6HKa0I=;
 b=osVGgpzQMzJq5z+/aDiwSJ3TG8V4YILSIsI5vfaZMP4VxE524HDPnGukRgKugVOLVx
 vFf2nTK218m0T2bzkKlhnGwjXyg32LaIKjN8VSdp8bNQrp1HDEId7EVFPmHL2BE1uPwx
 M9He5P+SWoCLugl/iaHqv9BMuOAj5Ox4OJCc8WefN2XIf3Cak1+v5EiXsfsrMEAK7pw8
 ytslFtnUIasQ9cqCWyObdik8QOo6yPdZDG+oKoIeV3wYV1Q2/2mRlUrtqUrqxphBVOyL
 DDoby2u+JVCfZUlSMny7JFuQLmDjsDdiN5MB1oMLJnMcEuonhnFjHCJz+dynW6v07swx
 TcHQ==
X-Gm-Message-State: ANhLgQ2uivROIiZ7E2/gp0HhsaHptNSdrzQv41GVqKOOr/6B2ipULP/A
 dfj1G8aLoDvGinEHdkwOI7q1YQ==
X-Google-Smtp-Source: ADFU+vsPJUeIS/9K8JoSoRdTLtr8Qnr3nNiYpumTfiHTDVGAp6UAnWBdhmDA7OEr/ZotrD9OuoakaQ==
X-Received: by 2002:a17:902:724c:: with SMTP id
 c12mr3070339pll.60.1584369623471; 
 Mon, 16 Mar 2020 07:40:23 -0700 (PDT)
Received: from Mindolluin.aristanetworks.com
 ([2a02:8084:e84:2480:228:f8ff:fe6f:83a8])
 by smtp.gmail.com with ESMTPSA id i2sm81524pjs.21.2020.03.16.07.40.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Mar 2020 07:40:22 -0700 (PDT)
From: Dmitry Safonov <dima@arista.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCHv2 09/50] arm64: Add loglvl to dump_backtrace()
Date: Mon, 16 Mar 2020 14:38:35 +0000
Message-Id: <20200316143916.195608-10-dima@arista.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200316143916.195608-1-dima@arista.com>
References: <20200316143916.195608-1-dima@arista.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_074026_523861_215B5A8A 
X-CRM114-Status: GOOD (  16.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
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
index 00626057a384..2ee44d95f023 100644
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
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
