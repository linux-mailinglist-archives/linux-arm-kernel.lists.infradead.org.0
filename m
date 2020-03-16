Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DDB4186D68
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 15:41:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pZlfyW2T7oQ+2V3B7W5jpKpf3B/rGiNDttPUTmZAVt4=; b=akqUtbM6Zp+DyX
	N3lr+HYWgOEjsEpqRgqQLF9VIYHNIKM4VzBRGCBpBJJji71A2jd5RdwnTtPWQPHuPXpdWbmntclZK
	X+M77ehW+Shst1257lArKr3T/yIlPaclpcMOgKNw/40hSSFcStCTdbrbt8v4JFPWfPejAY4NHuZBH
	FjTGflZlGw68/qX6Ep1Yvc2WXt67QPcpyZNkfHe+aJ96KymQmAhOWu3S3oAveFjmJVdejtSBnVU04
	Uygs2KBtyMkaLNlbfwOiw+Q26LVIQKY1hu1+4DvkCzxe8zCq9e39YUKmeElETghcMY1zpJGVf4Kwf
	qgmEWUMSfPgTCJ32al8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDqvR-0002ZF-Di; Mon, 16 Mar 2020 14:41:05 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDquY-00019N-P1
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 14:40:12 +0000
Received: by mail-pj1-x1041.google.com with SMTP id hg10so4525703pjb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Mar 2020 07:40:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=googlenew;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=NTTI3yeeENs2ZgUYcRA67its707iG/GndxpZmZw7i/c=;
 b=Jk9g1oUNFqnrxDjJjiHsiZmC4IEi4NNiURUYTAbuBjADgpPEe2ER75XEbFXwxLgdzc
 EFpD7ogpTsYeloXgC70ErIaA94WpDZnQUm3mVWdn+qoLWpQIqdWn/p4RIUMFC2RgKr1S
 ilBB6T1nv+ru4Qg1whMKn71h3wu12lQBzNSHjJzdwYMWocfPxkp2J+YwTxr7qa5Zmh0Z
 bltg4MN4hrMmRefnpiBA09URG8ZTpda1kP0IwuEl5YrrPplA0kqlOgKGGxDFTgUR11QH
 TEkoJ3Xcls/wzi9r1CCQKbmA2JWd/t5lGLasBpMAL2yyuiaJKR2dAPyYWwoGFQUySS/Y
 FGbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=NTTI3yeeENs2ZgUYcRA67its707iG/GndxpZmZw7i/c=;
 b=bGXk0V3kwypdhLP56xwWAqnN0pUeOyESd2TRCvLe0D5a6i+aEJ/Fw0pPZwkrP4Y9sX
 /MiIkijk96shja9OyOBu+izWYwqR57xk9lSQLsmklWMiQScVdCULKfjF5Bfl6a72CWJt
 7uxmglrCD/8mONVKX4ZWVyT3iE4VfKogiIe2d6XI+gJQFOmHr5k8WzWqTTCCgIxgLJdb
 44Y21IjGe6hlojkRPR7bzkEvXehRJgtUnup0A7jF1k0KlgDIYh7XckMyaQH8zsuik+o8
 XTgnqDFGRfnuOTw+JjIsh1SPmk+jCO71XouenIm9vJ43MCEntd8rR4/ICrvasKgQiAUD
 JlGg==
X-Gm-Message-State: ANhLgQ0zbDqxpipvTXlhuvacPihph6lUrEiZ8JyVtrIjHKMqdMbDN9FV
 kxLvP8ai/5rYsSr9fRemFB/jkg==
X-Google-Smtp-Source: ADFU+vs61F04BWjvxDCeZwFtjsQYjDIVpWt/23PJlfO2bLlD7Ck7GLB062kqMhXBrKwYN+ji9n4JWg==
X-Received: by 2002:a17:902:bccc:: with SMTP id
 o12mr5824551pls.96.1584369609808; 
 Mon, 16 Mar 2020 07:40:09 -0700 (PDT)
Received: from Mindolluin.aristanetworks.com
 ([2a02:8084:e84:2480:228:f8ff:fe6f:83a8])
 by smtp.gmail.com with ESMTPSA id i2sm81524pjs.21.2020.03.16.07.40.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Mar 2020 07:40:09 -0700 (PDT)
From: Dmitry Safonov <dima@arista.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCHv2 06/50] arm: Add loglvl to dump_backtrace()
Date: Mon, 16 Mar 2020 14:38:32 +0000
Message-Id: <20200316143916.195608-7-dima@arista.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200316143916.195608-1-dima@arista.com>
References: <20200316143916.195608-1-dima@arista.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_074011_036174_A051EA1F 
X-CRM114-Status: GOOD (  13.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
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
index 685e17c2e275..0f09ace18e6c 100644
--- a/arch/arm/kernel/traps.c
+++ b/arch/arm/kernel/traps.c
@@ -202,17 +202,19 @@ static void dump_instr(const char *lvl, struct pt_regs *regs)
 }
 
 #ifdef CONFIG_ARM_UNWIND
-static inline void dump_backtrace(struct pt_regs *regs, struct task_struct *tsk)
+static inline void dump_backtrace(struct pt_regs *regs, struct task_struct *tsk,
+				  const char *loglvl)
 {
-	unwind_backtrace(regs, tsk, KERN_DEFAULT);
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
@@ -239,13 +241,13 @@ static void dump_backtrace(struct pt_regs *regs, struct task_struct *tsk)
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
 
@@ -289,7 +291,7 @@ static int __die(const char *str, int err, struct pt_regs *regs)
 	if (!user_mode(regs) || in_interrupt()) {
 		dump_mem(KERN_EMERG, "Stack: ", regs->ARM_sp,
 			 THREAD_SIZE + (unsigned long)task_stack_page(tsk));
-		dump_backtrace(regs, tsk);
+		dump_backtrace(regs, tsk, KERN_EMERG);
 		dump_instr(KERN_EMERG, regs);
 	}
 
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
