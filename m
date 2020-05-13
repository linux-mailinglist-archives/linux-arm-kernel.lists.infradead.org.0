Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4908F1D22B8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 01:07:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nTmi/FB2kvPnUR/2+JHTnnzfp9Uwv/Znz0x6RCGtHlo=; b=Qdwcpud9MOVKkQ
	CWNWN2ZbNMFauu9lkCB4VYvuMvP8TdVlqo+k7OyUlPI5jkXTlnnpQqRA3E6CWdAjviacnfUPO3ERe
	6Ch3aN98gzSAXR3pisypcsphtXpIRNnMoF6jDSv7KUCkiErRCMys2YLQ0CtFJFAGHJxL1XxL4JCdN
	9nmZ36Xf5WMEdxLF8Kn3qittPOGkP57LyR3JEEgP1PtCcnz61yA2SXvqoTF9+zZGDbCaNCzwEXwMz
	U9zUAb7jmt9zeaNCrTstFzJlfkLMtyGnSpqv8cYwBKqtpBqz3kaxdAQoIvBff4Z1hnOhTt7B0XWqH
	mUklP7yiC78oRAynztOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ0Sv-00078b-EU; Wed, 13 May 2020 23:07:05 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ0Sn-00077u-UP
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 23:06:59 +0000
Received: by mail-pf1-x442.google.com with SMTP id 145so395642pfw.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 May 2020 16:06:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=yMogoehN6gd8yEcUzfto82bogvcHTiAGCMH4pO/0ves=;
 b=TVjmeJRT30wG3o5oee/nQvtjayTS9UEmO1IKTN3/YROyngl0ARUX+gqTeIneHeojqM
 gYBxNYwyp5blo8Rorot/HCMhVM8Rsy7slg+/x8RdQoCiT11cFofCu+3DTSKptK731mBX
 yq4/rABaceMa8DkAadYUlzIg9W0ocTQiCTsT8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=yMogoehN6gd8yEcUzfto82bogvcHTiAGCMH4pO/0ves=;
 b=scuRZueUHzVn3569IlqtrsHXgXe4extq9IpeUPxxn68WzxavfQki9aJ3JbFLg+aV/j
 ke7hZgc+jZFsuUf+4RKx17AdURTTyWoIn7l7blk9YVuXTrrU39LmeN37lPbGqgnAWvGl
 joOZiwG5DS/4NMHE84E6kDU7fcxFDVogg74D2kotCguCVd5zPeqLZmwZljMgZJwVnoet
 PlbOhAu2RXdGyBw5yKQUFlWJPm4CB9TTHabWAFNNdjVJjzHCGO5oq8AlrLqJbs+4J5VN
 y5PWHyR6Rc94m2vjn83aC0MLDWaK8ImL7T8BlSe7tUYhXpOqCSfY1Ls8RA2PRKC52rBl
 P+1A==
X-Gm-Message-State: AOAM531EiKdGv6qEXiB/xFwOLKlPMmjHwjeLY802FAdFtnu/1F3QbQR9
 a6KHWRji4U3wBPS2H/Bge7ZVug==
X-Google-Smtp-Source: ABdhPJzzVabiFt1inZIi4trNKtrwiawtGgHCOPmCLYH5yl1Fukr15nZDmHm+dhqQ3Y059dh1zVOT2w==
X-Received: by 2002:a63:3545:: with SMTP id c66mr1444745pga.82.1589411216357; 
 Wed, 13 May 2020 16:06:56 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id d184sm513936pfc.130.2020.05.13.16.06.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 May 2020 16:06:55 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Jason Wessel <jason.wessel@windriver.com>,
 Daniel Thompson <daniel.thompson@linaro.org>
Subject: [PATCH] arm64: Call debug_traps_init() from trap_init() to help early
 kgdb
Date: Wed, 13 May 2020 16:06:37 -0700
Message-Id: <20200513160501.1.I0b5edf030cc6ebef6ab4829f8867cdaea42485d8@changeid>
X-Mailer: git-send-email 2.26.2.645.ge9eca65c58-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_160658_003602_FDBF0FAF 
X-CRM114-Status: GOOD (  20.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, sumit.garg@linaro.org,
 "Paul E. McKenney" <paulmck@kernel.org>, Will Deacon <will@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Enrico Weigelt <info@metux.net>, kgdb-bugreport@lists.sourceforge.net,
 jinho lim <jordan.lim@samsung.com>, Douglas Anderson <dianders@chromium.org>,
 linux-kernel@vger.kernel.org, Alexios Zavras <alexios.zavras@intel.com>,
 James Morse <james.morse@arm.com>, "Eric W. Biederman" <ebiederm@xmission.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Zenghui Yu <yuzenghui@huawei.com>,
 linux-arm-kernel@lists.infradead.org, Thomas Gleixner <tglx@linutronix.de>,
 liwei391@huawei.com, Dave Martin <Dave.Martin@arm.com>,
 Allison Randal <allison@lohutok.net>, Masami Hiramatsu <mhiramat@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A new kgdb feature will soon land (kgdb_earlycon) that lets us run
kgdb much earlier.  In order for everything to work properly it's
important that the break hook is setup by the time we process
"kgdbwait".

Right now the break hook is setup in debug_traps_init() and that's
called from arch_initcall().  That's a bit too late since
kgdb_earlycon really needs things to be setup by the time the system
calls dbg_late_init().

We could fix this by adding call_break_hook() into early_brk64() and
that works fine.  However, it's a little ugly.  Instead, let's just
add a call to debug_traps_init() straight from trap_init().  There's
already a documented dependency between trap_init() and
debug_traps_init() and this makes the dependency more obvious rather
than just relying on a comment.

NOTE: this solution isn't early enough to let us select the
"ARCH_HAS_EARLY_DEBUG" KConfig option that is introduced by the
kgdb_earlycon patch series.  That would only be set if we could do
breakpoints when early params are parsed.  This patch only enables
"late early" breakpoints, AKA breakpoints when dbg_late_init() is
called.  It's expected that this should be fine for most people.

It should also be noted that if you crash you can still end up in kgdb
earlier than debug_traps_init().  Since you don't need breakpoints to
debug a crash that's fine.

Suggested-by: Will Deacon <will@kernel.org>
Signed-off-by: Douglas Anderson <dianders@chromium.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
---
This replaces the patch ("arm64: Add call_break_hook() to
early_brk64() for early kgdb") in my recent kgdb series [1].  If I end
up re-posting that series again I'll include this patch as a
replacement, but I'm sending it separately to avoid spamming a pile of
people another time with a 12-patch series.

Note that, because it doesn't select the "ARCH_HAS_EARLY_DEBUG"
KConfig option it could be landed standalone.  However, it's still
probably better to land together with that patch series.

If the kgdb_earlycon patch series lands without this patch then
kgdbwait + kgdb_earlycon won't work well on arm64, but there would be
no other bad side effects.

If this patch lands without the kgdb_earlycon patch series then there
will be no known problems.

[1] https://lore.kernel.org/r/20200507130644.v4.5.I22067ad43e77ddfd4b64c2d49030628480f9e8d9@changeid

 arch/arm64/include/asm/debug-monitors.h | 2 ++
 arch/arm64/kernel/debug-monitors.c      | 4 +---
 arch/arm64/kernel/traps.c               | 2 +-
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/include/asm/debug-monitors.h b/arch/arm64/include/asm/debug-monitors.h
index 7619f473155f..e5ceea213e39 100644
--- a/arch/arm64/include/asm/debug-monitors.h
+++ b/arch/arm64/include/asm/debug-monitors.h
@@ -125,5 +125,7 @@ static inline int reinstall_suspended_bps(struct pt_regs *regs)
 
 int aarch32_break_handler(struct pt_regs *regs);
 
+void debug_traps_init(void);
+
 #endif	/* __ASSEMBLY */
 #endif	/* __ASM_DEBUG_MONITORS_H */
diff --git a/arch/arm64/kernel/debug-monitors.c b/arch/arm64/kernel/debug-monitors.c
index 48222a4760c2..15e80c876d46 100644
--- a/arch/arm64/kernel/debug-monitors.c
+++ b/arch/arm64/kernel/debug-monitors.c
@@ -376,15 +376,13 @@ int aarch32_break_handler(struct pt_regs *regs)
 }
 NOKPROBE_SYMBOL(aarch32_break_handler);
 
-static int __init debug_traps_init(void)
+void __init debug_traps_init(void)
 {
 	hook_debug_fault_code(DBG_ESR_EVT_HWSS, single_step_handler, SIGTRAP,
 			      TRAP_TRACE, "single-step handler");
 	hook_debug_fault_code(DBG_ESR_EVT_BRK, brk_handler, SIGTRAP,
 			      TRAP_BRKPT, "ptrace BRK handler");
-	return 0;
 }
-arch_initcall(debug_traps_init);
 
 /* Re-enable single step for syscall restarting. */
 void user_rewind_single_step(struct task_struct *task)
diff --git a/arch/arm64/kernel/traps.c b/arch/arm64/kernel/traps.c
index cf402be5c573..8408e8670f2e 100644
--- a/arch/arm64/kernel/traps.c
+++ b/arch/arm64/kernel/traps.c
@@ -1047,11 +1047,11 @@ int __init early_brk64(unsigned long addr, unsigned int esr,
 	return bug_handler(regs, esr) != DBG_HOOK_HANDLED;
 }
 
-/* This registration must happen early, before debug_traps_init(). */
 void __init trap_init(void)
 {
 	register_kernel_break_hook(&bug_break_hook);
 #ifdef CONFIG_KASAN_SW_TAGS
 	register_kernel_break_hook(&kasan_break_hook);
 #endif
+	debug_traps_init();
 }
-- 
2.26.2.645.ge9eca65c58-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
