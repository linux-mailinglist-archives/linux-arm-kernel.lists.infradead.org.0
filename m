Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80FCE1ADB9B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 12:52:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P47o/qTFzqogXcsJU5iQ/tcn5s3qqHO4Cq9Q3+TMFCg=; b=DA1U2fBnA5m9he
	zq1+wgVnktPuXTGLcL4Bn1u5AITtSmsc9biw+75arnckC/WYpXg4cRVLJWxaYX/0lI0HLL/qNunl6
	YzM/aYjPenT81qRj4dU8sBtGxcRNhXVfIiiOIRczXzC4SXeDjUhBpjrrZEFO2X4p/vfU3DyM5P47P
	AxyT+OcxS90xZO5oxL0sYoLM6QggbbbtdllEfQZo0EeY+7kXCHESnrykJJas82chnqA+/IzLvu9v1
	YzsuAosIxi84twdWd2uKX/PY9pckgpK94otrNNvJjfqKzW92vAXuV2h3a9DsoRa5auSanAKB8yJQ6
	cJtDzXajWBcfPgBCotLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPOZe-00061G-5Z; Fri, 17 Apr 2020 10:50:18 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPOY8-00042o-AQ
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 10:48:48 +0000
Received: by mail-pg1-x542.google.com with SMTP id x26so919293pgc.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 Apr 2020 03:48:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=G9h9kEpvlzFLkvsbxtnwRqDwI4ujSWcEPHlKhK/io98=;
 b=F3v8ThthwcNaLkfTWx88JfouZLvwNA7G5ErOstEZwTqe+NVExiHMhyN8IfAKwSmjRy
 F28mY7QdoNLuiSwq9z35LZhpqxPKf83xHzew4fdmrc4f45+F2gjv836iNhzPqdvdsHvx
 miS0tFD1srg+pXoJ8xNNcLKX0K0hm3T62CpNZoHYONy2h7hiOw1K17PCmt2QcK46sZV4
 1clsqe6eGjwxx7LsHzObNW3Tdj2VbhBySOMGje/f/kCce2og5+L2FvxFsrxvzPeIQfH0
 wa/cNCMIf9RXaLnbYu5Yup9kftJcXmN/Jdj10yHvvrjBcDQhK/snMU1uJtuomfBznNL8
 74oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=G9h9kEpvlzFLkvsbxtnwRqDwI4ujSWcEPHlKhK/io98=;
 b=LUEqa6aLXRFz2HCjtJ2E7LfVcG9Xe8jru91u10a1TZNA0f2S5BHmfKpGt4HCSXtWuw
 q1fbhGTiE8mnHw9uyCLUj9wXYS6a7FJF2YPeHJixIY9Jrx/1CVVpXMFpKuH/GTTJta9Y
 9raM8F34kQg/UdkAVlWtQtaq8JepNdsI3FxaoZjVv8o4IFvwlI5jv601xD0w0x2KddLr
 WXA/jyn56NNPxfyD/Qzr/r9rZZWqzcqZFVsrdtLCwlPQp8EEN9XB4H8z+dBAtMzMvr1s
 R7JpEv25cJrCATDwN2C3F3EwnCXHydQ0q5NVN20xOmNqE0/FS7zAp4m0AvAMSXcbgKs6
 HBsA==
X-Gm-Message-State: AGi0PubvJ/BKs2QwbU53GmHrifnwSoEtVbBXHTRejxxvHBmy8ZmdhPcK
 uulnuWPB5B+AKcJdRyodWza7FoQo5Tc=
X-Google-Smtp-Source: APiQypJXkshMoFbYwRBxbki26BaUfh2j0WQASujhGkyXHavBVSW1nIxz1Qw0dFO/d3/8aGGl0J25ww==
X-Received: by 2002:a63:eb15:: with SMTP id t21mr2377721pgh.279.1587120522950; 
 Fri, 17 Apr 2020 03:48:42 -0700 (PDT)
Received: from pek-lpggp6.wrs.com (unknown-105-123.windriver.com.
 [147.11.105.123])
 by smtp.gmail.com with ESMTPSA id a12sm12771844pfr.28.2020.04.17.03.48.38
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 17 Apr 2020 03:48:42 -0700 (PDT)
From: Kevin Hao <haokexin@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/2] arm64: debug: Always update the IRQ tracing in
 debug_exception_enter()
Date: Fri, 17 Apr 2020 18:32:12 +0800
Message-Id: <20200417103212.45812-3-haokexin@gmail.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200417103212.45812-1-haokexin@gmail.com>
References: <20200417103212.45812-1-haokexin@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_034844_474193_E96C402F 
X-CRM114-Status: GOOD (  14.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [haokexin[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When running the kgdb test suite, we get the following call trace:
  # echo kgdbts=V1 > /sys/module/kgdbts/parameters/kgdbts

  DEBUG_LOCKS_WARN_ON(current->hardirqs_enabled)
  WARNING: CPU: 10 PID: 697 at kernel/locking/lockdep.c:4793 check_flags.part.0+0x15c/0x180
  Modules linked in:
  CPU: 10 PID: 697 Comm: sh Not tainted 5.6.0-next-20200331-yoctodev-standard+ #341
  Hardware name: Marvell OcteonTX CN96XX board (DT)
  pstate: 604003c9 (nZCv DAIF +PAN -UAO)
  pc : check_flags.part.0+0x15c/0x180
  lr : check_flags.part.0+0x15c/0x180
  sp : ffff800017d0f830
  x29: ffff800017d0f830 x28: ffff000b936c0000
  x27: 00000000c28f5c29 x26: 00000000ffffffff
  x25: 00000000000003c0 x24: ffff800011af8dd0
  x23: 0000000000000000 x22: ffff8000119afdc0
  x21: ffff80001198bbe8 x20: ffff800011400018
  x19: ffff800012655000 x18: 0000000000000001
  x17: 0000000000000000 x16: 0000000000000000
  x15: ffff000b936c0470 x14: ffffffffffffffff
  x13: 0000000000000000 x12: ffff800012655000
  x11: ffff800017d0f830 x10: ffff800017d0f830
  x9 : 00000000000003c0 x8 : 6e655f7371726964
  x7 : 7261683e2d746e65 x6 : ffff8000126552fe
  x5 : 0000000000000000 x4 : 0000000000000000
  x3 : 00000000ffffffff x2 : 0000000000000000
  x1 : bbf8ef1cf7dda200 x0 : 0000000000000000
  Call trace:
   check_flags.part.0+0x15c/0x180
   lock_is_held_type+0xf0/0x120
   rcu_read_lock_sched_held+0x74/0x98
   trace_rcu_dyntick+0x1b8/0x1e0
   rcu_nmi_enter+0x7c/0xb8
   debug_exception_enter+0x68/0xe8
   do_debug_exception+0x60/0x150
   el1_sync_handler+0xd8/0xf8
   el1_sync+0x7c/0x100
   el1_irq+0x78/0x180
   kgdbts_break_test+0x0/0x40
   param_set_kgdbts_var+0x68/0xe8
   param_attr_store+0xb8/0x120
   module_attr_store+0x2c/0x48
   sysfs_kf_write+0x54/0x80
   kernfs_fop_write+0x154/0x248
   __vfs_write+0x24/0x50
   vfs_write+0xec/0x1d8
   ksys_write+0x74/0x100
   __arm64_sys_write+0x24/0x30
   do_el0_svc+0x8c/0x1e8
   el0_sync_handler+0x11c/0x198
   el0_sync+0x158/0x180
  irq event stamp: 76505
  hardirqs last  enabled at (76505): [<ffff80001009f9ec>] debug_exception_exit+0x54/0x68
  hardirqs last disabled at (76504): [<ffff80001009fb04>] debug_exception_enter+0xac/0xe8
  softirqs last  enabled at (76498): [<ffff8000100817b4>] __do_softirq+0x5a4/0x5ec
  softirqs last disabled at (76439): [<ffff8000100b6ff4>] irq_exit+0x13c/0x150

The reason is that an IRQ is emitted when doing the single step debug,
but in the IRQ handler we would enable the debug exception before
updating the IRQ tracing flags. This will cause the debug exception
running in an context which the IRQ state and IRQ tracing flags are
mismatched. And the debug exception handler only update the IRQ tracing
flag to off when it thinks that the debug emit in a IRQ enabled context.
Then we would get the above call trace if any code like check_flags()
is called in the debug exception handler's path. We can't fix this issue
by just shuffling the enable_da_f in el1_irq. As indicated by
Mark Rutland, we also can run into the same issue when we set a
breakpoint in the middle of local_irq_disable(). So we should invoke the
trace_hardirqs_off() unconditionally in debug_exception_enter().
Also the reason why we conditionally invoke trace_hardirqs_off() seems
invalid since the redundant invoking of trace_hardirqs_off() would not
overwrite the last IRQ disabled address tracked by IRQ tracing.

Signed-off-by: Kevin Hao <haokexin@gmail.com>
---
 arch/arm64/mm/fault.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/mm/fault.c b/arch/arm64/mm/fault.c
index c9cedc0432d2..b3c6a2e9232e 100644
--- a/arch/arm64/mm/fault.c
+++ b/arch/arm64/mm/fault.c
@@ -789,12 +789,8 @@ void __init hook_debug_fault_code(int nr,
  */
 static void debug_exception_enter(struct pt_regs *regs)
 {
-	/*
-	 * Tell lockdep we disabled irqs in entry.S. Do nothing if they were
-	 * already disabled to preserve the last enabled/disabled addresses.
-	 */
-	if (interrupts_enabled(regs))
-		trace_hardirqs_off();
+	/* Tell lockdep we disabled irqs in entry.S. */
+	trace_hardirqs_off();
 
 	if (user_mode(regs)) {
 		RCU_LOCKDEP_WARN(!rcu_is_watching(), "entry code didn't wake RCU");
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
