Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAF27F0C75
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 04:07:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2q0H+esmVBjfy8ARwmGUSltJXwDJuck6YBrnJ+kW6Y8=; b=s8CaNtNRvdku53
	smcwceszVVr/jHQ+dJw05deMKyfGs4NCaF1SFYa4S5ldABIMvn9FZid3YGvWtZgXZJZJMgzAa/cil
	T8Yx9HDwNqsT5bh7TE5HuT3HEEtD5ZDBGQV09LSDY6bx3PM0nGvIOEZ8ieHaeipW2EU2nXgdnSmGU
	RSqe4zaFKgz1gI7g91+Aon55fthMK26az6odGiQ6cg2njEoqY4XpqZpTKRq/PbiPcF1g76yJzs2bV
	iY5Nu4yOxXyjn/dyYR6oU2FDcgWpHSCI2YCr05h4RhhHw/CrfBe54kZuRO4HEjvPODawEL8+OzrY1
	WL2rnjH2QqqrV7fGautA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSBfJ-0002J0-OH; Wed, 06 Nov 2019 03:07:25 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSBeT-0001lm-F7
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 03:06:35 +0000
Received: by mail-pl1-x642.google.com with SMTP id k7so10746316pll.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 19:06:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=googlenew;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=T4xceT58B6sbL4PhV43oCBSGVJEvO1DNZo325HcSVkg=;
 b=U3UPaJg+2y87NqfpsnwuDDEKpAogHQ3AUxQixZIutQNYD5rfoA7vZzTIL+Wd243QXP
 mBL9fQeYEt1+bO4QIY7SYhqSyra1ePH4jDwMACZsXCbmhl2yQo1oRhY7v4QTdpinYHuz
 GK3D7hxrdvZ3KaUactgAQElVQ2s6CAfVLUEqCHRsM25V4z4qa6ZPR6D/CmLuyTMpaUxn
 2EaC/jnzc+e2qN8UcInFBc9mIef6p2J19lLYVVbKE6XVpO1h2ngK3yPVEbB8GXDk2xOZ
 sKpwDTALK4MbaX2Rq4LrkGBNxOXmhl8LsikDWGzwGCe5RVjq721/u3WUUXx2rqLMK6A1
 GBGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=T4xceT58B6sbL4PhV43oCBSGVJEvO1DNZo325HcSVkg=;
 b=VyV92p6E80QcfWHi4cPn1q4BXUC27gQl7J4tliQyxFyG+vvU8gZlxUi3/NATS2idJR
 bxmOYGsKKGuq3HWFlRMTMLviVBnBBGxiHnF2FX2jhH59EwgN50UKQcWKrCvw5aDXGkwp
 B+cinyOZoLOrQ+5I/SmlEwmCIH3JZTHjToXiahm8Hg27MLf+Io74zUXu7TYLwoYqoHyc
 CxuuBDc02PzKxp2KahbNvdrpEuP7vIjH5qsTWn4RdWQuEUMNOsYJs6mZohDaJc+L4/jK
 Q3lVXWfiRgd6a8blNWAcwDkvLVOPNmA5i2TWsmBT0py21p3Mb0F69O7at66clLhsYX4i
 Yukg==
X-Gm-Message-State: APjAAAX7YN8T57QHThICIpjj+S1fjjxjf78V8iuKcmpp76DWHt9BsqmR
 TlUb+sf5okowjU+WkN7x7jZJVw==
X-Google-Smtp-Source: APXvYqyk+jwPIxnw+WSN1kToR1F8PVjBE6uY2e4pxOa1tt6VZ8XuJUjdGnhvtrpfbvJH4vxVL4+yFw==
X-Received: by 2002:a17:902:7783:: with SMTP id
 o3mr132537pll.313.1573009592111; 
 Tue, 05 Nov 2019 19:06:32 -0800 (PST)
Received: from Mindolluin.ire.aristanetworks.com ([217.173.96.166])
 by smtp.gmail.com with ESMTPSA id k24sm19570487pgl.6.2019.11.05.19.06.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Nov 2019 19:06:31 -0800 (PST)
From: Dmitry Safonov <dima@arista.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 06/50] arm: Add loglvl to dump_backtrace()
Date: Wed,  6 Nov 2019 03:04:57 +0000
Message-Id: <20191106030542.868541-7-dima@arista.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191106030542.868541-1-dima@arista.com>
References: <20191106030542.868541-1-dima@arista.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_190633_544907_150D1FD2 
X-CRM114-Status: GOOD (  14.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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
Cc: Petr Mladek <pmladek@suse.com>, Dmitry Safonov <dima@arista.com>,
 Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dmitry Safonov <0x7f454c46@gmail.com>, Russell King <linux@armlinux.org.uk>,
 Steven Rostedt <rostedt@goodmis.org>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 clang-built-linux@googlegroups.com, Jiri Slaby <jslaby@suse.com>,
 Andrew Morton <akpm@linux-foundation.org>, Will Deacon <will@kernel.org>,
 Ingo Molnar <mingo@kernel.org>, linux-arm-kernel@lists.infradead.org
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

As a good side-effect __die() now prints not only "Stack:" header with
KERN_EMERG, but the backtrace itself.

Cc: Russell King <linux@armlinux.org.uk>
Cc: Will Deacon <will@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org
Cc: clang-built-linux@googlegroups.com
[1]: https://lore.kernel.org/lkml/20190528002412.1625-1-dima@arista.com/T/#u
Signed-off-by: Dmitry Safonov <dima@arista.com>
---
 arch/arm/kernel/traps.c | 16 +++++++++-------
 1 file changed, 9 insertions(+), 7 deletions(-)

diff --git a/arch/arm/kernel/traps.c b/arch/arm/kernel/traps.c
index 69e35462c9e9..e4f4ec8a1899 100644
--- a/arch/arm/kernel/traps.c
+++ b/arch/arm/kernel/traps.c
@@ -200,17 +200,19 @@ static void dump_instr(const char *lvl, struct pt_regs *regs)
 }
 
 #ifdef CONFIG_ARM_UNWIND
-static inline void dump_backtrace(struct pt_regs *regs, struct task_struct *tsk)
+static inline void dump_backtrace(struct pt_regs *regs, struct task_struct *tsk,
+				  const char *loglvl)
 {
-	unwind_backtrace(regs, tsk, KERN_DEBUG);
+	unwind_backtrace(regs, tsk, loglvl);
 }
 #else
-static void dump_backtrace(struct pt_regs *regs, struct task_struct *tsk)
+static void dump_backtrace(struct pt_regs *regs, struct task_struct *tsk,
+			   const char *loglvl)
 {
 	unsigned int fp, mode;
 	int ok = 1;
 
-	printk("Backtrace: ");
+	printk("%sBacktrace: ", loglvl);
 
 	if (!tsk)
 		tsk = current;
@@ -237,13 +239,13 @@ static void dump_backtrace(struct pt_regs *regs, struct task_struct *tsk)
 	pr_cont("\n");
 
 	if (ok)
-		c_backtrace(fp, mode, NULL);
+		c_backtrace(fp, mode, loglvl);
 }
 #endif
 
 void show_stack(struct task_struct *tsk, unsigned long *sp)
 {
-	dump_backtrace(NULL, tsk);
+	dump_backtrace(NULL, tsk, KERN_DEFAULT);
 	barrier();
 }
 
@@ -285,7 +287,7 @@ static int __die(const char *str, int err, struct pt_regs *regs)
 	if (!user_mode(regs) || in_interrupt()) {
 		dump_mem(KERN_EMERG, "Stack: ", regs->ARM_sp,
 			 THREAD_SIZE + (unsigned long)task_stack_page(tsk));
-		dump_backtrace(regs, tsk);
+		dump_backtrace(regs, tsk, KERN_EMERG);
 		dump_instr(KERN_EMERG, regs);
 	}
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
