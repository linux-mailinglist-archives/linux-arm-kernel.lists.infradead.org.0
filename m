Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D844C1AF4D4
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 Apr 2020 22:22:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qRtsav38nxKxxmXYDsheAz1Fv7a7NM+Fftyg4ilvgIk=; b=oBgDvOR8flloFZ
	xilh0miwIr85gCLjg7dC93MknRyO1BD8iiKpX7PnioBB2MZc81xFPH1goRcSz/j2srHTjHmDziNes
	hkb1BAZNRhWe+g73PylYDSQL3boPF2qM/m6MEJ3gN8+SMXirjhDZXmc5TdIp7rIb9JCTeY9lCVQmK
	W+kYW8t8TzThE5Y3QbJbio3L0SNV147dcrhXt/hjo2TcDN9D3wtg+FCyypqRHHA6rW+JtiQul3fOn
	09KW1IOQTykoB/xakTq+S0DArgPLNCM0esxWfv3F/YzpBqRUGqDn2NPKHwYi1GqhTYtiMZHR3r1Zj
	oElAlt7g85MSrw5l5BJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPtyq-0005m0-Aw; Sat, 18 Apr 2020 20:22:24 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPtwd-0001sJ-O9
 for linux-arm-kernel@lists.infradead.org; Sat, 18 Apr 2020 20:20:10 +0000
Received: by mail-wm1-x342.google.com with SMTP id e26so6491897wmk.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 18 Apr 2020 13:20:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=googlenew;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=S9UHEvfxwrRnXPy0faw2y8HTiLGhsJabGIVgIOzQk4k=;
 b=hZbmBuYvSaXbYP6DSe47SFq+xJdk5s8P5DGnS9P1+n556dqd46XTEPaHpYnhldQObU
 tMfW5/GeVdqLidhFVtLoEnEhTE5HOpYcJeLosfTjht6J7usmZJF7vIwrPA4HUUulYJE7
 mnbEyGNpW7VNQsdVtuKgII22Z5geWQKzIDcRk+surFpZefl9luUpTGXPS5hYUPEljRVy
 N+jDzTTzHSJ4boN5BYBxehKaBAZOa8lYqJpChcbJmn7tetKqKB5VqdcMyWfAzuSF9nxl
 IDh8x5yd8AHH/PtFnhIx54yaaVLq80uFoYJTskBZvDc38dzNar/uxrwU7q59M1Xru9RZ
 eWvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=S9UHEvfxwrRnXPy0faw2y8HTiLGhsJabGIVgIOzQk4k=;
 b=DFv33a4sJIJdno9bK7h1XV5JUgw/TS1GwXlhaD0vAjdfDrTAR42IqVCDuqbWjpKD9O
 anCqAYgS7ZNOkr1SkKjmY/sR7/rblLVFrhqhRJlRrhpgg5brn4Vz3KuYkfM3GcUV/05C
 V25S5PYM9sHZixMnqmZG8rafXDHDLIvL8jKwIX79NRkl8CG3EvbgNAO6WAt3oxM/MNuE
 K5TqsdgM0Ig9GxCqKlOXPhyFGxUaoOoOaGSSIgqNNGfyunNP+NAUqUwDUKdKCOVcDibO
 OKKEixYTNFNNTENK40beA9/N67FRIeTyV0Bal4RlN001xwu+OeUg+pJEy52m3BoPyVD7
 6WmA==
X-Gm-Message-State: AGi0Pua12hCmBWO3olv300ZV4on0sR8IBOaMzJITEBYrGt/8k3YeoTLi
 Ft+ZKKDURu51MvYwXKckkx+pXw==
X-Google-Smtp-Source: APiQypK4Qy1tfeCeENkNw5qEez0359RKZu0L0gpM2vI1Wyd4ThavVQZTyo3UbgnzNJs2Nap3JVigCg==
X-Received: by 2002:a7b:cf27:: with SMTP id m7mr10115682wmg.183.1587241204307; 
 Sat, 18 Apr 2020 13:20:04 -0700 (PDT)
Received: from localhost.localdomain ([2a02:8084:e84:2480:228:f8ff:fe6f:83a8])
 by smtp.gmail.com with ESMTPSA id
 m1sm31735255wro.64.2020.04.18.13.20.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 18 Apr 2020 13:20:03 -0700 (PDT)
From: Dmitry Safonov <dima@arista.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCHv3 10/50] arm64: Add show_stack_loglvl()
Date: Sat, 18 Apr 2020 21:19:04 +0100
Message-Id: <20200418201944.482088-11-dima@arista.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200418201944.482088-1-dima@arista.com>
References: <20200418201944.482088-1-dima@arista.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200418_132007_870175_9257500C 
X-CRM114-Status: GOOD (  12.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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

Introduce show_stack_loglvl(), that eventually will substitute
show_stack().

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Russell King <linux@armlinux.org.uk>
Cc: Will Deacon <will@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org
[1]: https://lore.kernel.org/lkml/20190528002412.1625-1-dima@arista.com/T/#u
Signed-off-by: Dmitry Safonov <dima@arista.com>
---
 arch/arm64/kernel/traps.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/kernel/traps.c b/arch/arm64/kernel/traps.c
index 6e777cbd4eb5..516e92332fd0 100644
--- a/arch/arm64/kernel/traps.c
+++ b/arch/arm64/kernel/traps.c
@@ -137,12 +137,18 @@ void dump_backtrace(struct pt_regs *regs, struct task_struct *tsk,
 	put_task_stack(tsk);
 }
 
-void show_stack(struct task_struct *tsk, unsigned long *sp)
+void show_stack_loglvl(struct task_struct *tsk, unsigned long *sp,
+		       const char *loglvl)
 {
-	dump_backtrace(NULL, tsk, KERN_DEFAULT);
+	dump_backtrace(NULL, tsk, loglvl);
 	barrier();
 }
 
+void show_stack(struct task_struct *tsk, unsigned long *sp)
+{
+	show_stack_loglvl(tsk, sp, KERN_DEFAULT);
+}
+
 #ifdef CONFIG_PREEMPT
 #define S_PREEMPT " PREEMPT"
 #elif defined(CONFIG_PREEMPT_RT)
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
